import os
import re
import sys

def convert_compiler_labels_in_file(file_path):
    """
    Reads a single assembly file and converts ONLY the compiler-generated
    labels (|L.<num>|) into the ADS assembler's numeric local label format.

    - A definition like "|L.40|" becomes "40"
    - A reference like "bne |L.40|" becomes "bne %40"

    Args:
        file_path (str): The path to the .s file to process.
    """
    try:
        with open(file_path, 'r') as f:
            lines = f.readlines()
    except FileNotFoundError:
        return # Silently ignore if file not found

    # Regex to find a label definition, e.g., "|L.40|" at the start of a line (or indented).
    label_def_regex = re.compile(r'^\s*\|L(\d+)\.(\d+)\|', re.IGNORECASE)
    
    # Regex to find a reference to a label, e.g., "bne |L.40|".
    label_ref_regex = re.compile(r'\|L(\d+)\.(\d+)\|', re.IGNORECASE)

    new_lines = []
    modifications_made = False

    # First pass: identify data pool labels that use offset syntax (|Ln.X| + Y).
    # armasm doesn't support "|L.N| + offset" or "%N + offset" syntax.
    # We expand these by inserting a unique named label before each DCD entry
    # in the pool, and rewriting references to use those labels.
    pool_offset_refs = {}  # key = "n.X", value = set of int offsets (including 0)
    for line in lines:
        for m in re.finditer(r'\|L(\d+)\.(\d+)\|(\s*\+\s*(\d+))?', line):
            key = f"{m.group(1)}.{m.group(2)}"
            offset = int(m.group(4)) if m.group(4) else 0
            pool_offset_refs.setdefault(key, set()).add(offset)

    # Identify pool labels: those that have *any* offset reference > 0
    pool_labels = {k for k, offsets in pool_offset_refs.items() if max(offsets) > 0}

    current_vtable = None
    for line in lines:
        original_line = line
        
        # Check for a label definition on this line
        def_match = label_def_regex.match(line)
        if def_match:
            key = f"{def_match.group(1)}.{def_match.group(2)}"
            label_num = def_match.group(2)
            if key in pool_labels:
                # This is a data pool label definition — we'll insert individual
                # labels for each DCD entry.  Replace the definition with the
                # label for offset 0.
                pool_name = f"_pool_{key.replace('.', '_')}"
                line = f"{pool_name}_0\n"
            else:
                # Regular label — convert to numeric local
                line = f"{label_num}\n"
        else:
            # Handle references
            def replace_label_ref(m):
                full = m.group(0)
                key = f"{m.group(1)}.{m.group(2)}"
                if key in pool_labels:
                    return full  # will be handled by the broader regex below
                return f"%{m.group(2)}"
            line = label_ref_regex.sub(replace_label_ref, line)
            
            # Now handle pool label + offset references
            for key in pool_labels:
                parts = key.split('.')
                pipe_label = f"|L{parts[0]}.{parts[1]}|"
                pool_name = f"_pool_{key.replace('.', '_')}"
                # Replace |Ln.X| + Y with _pool_n_X_Y
                line = re.sub(
                    re.escape(pipe_label) + r'\s*\+\s*(\d+)',
                    lambda m: f"{pool_name}_{m.group(1)}",
                    line
                )
                # Replace bare |Ln.X| (no offset) with _pool_n_X_0
                line = line.replace(pipe_label, f"{pool_name}_0")

        # Force the AREA name to 'text' instead of '||.text||' to match original ASM
        if line.startswith('        AREA ||.text||'):
            line = line.replace('||.text||', 'text')

        # Force C++ vtables to DATA so they don't get sorted before other vtables
        if 'AREA __VTABLE__' in line:
            if 'CODE' in line:
                line = line.replace(', COMDEF, CODE, READONLY', ', DATA, READONLY')
            match = re.search(r'__VTABLE_[a-zA-Z0-9_]+', line)
            if match:
                current_vtable = match.group(0)
        elif line.startswith('        AREA '):
            current_vtable = None
            
        if current_vtable and '- {PC}' in line:
            line = re.sub(r'(\s*\+\s*\d+)?\s*-\s*\{PC\}', f' - {current_vtable}', line)

        new_lines.append(line)
        if original_line != line:
            modifications_made = True

    # Expand data pool labels: insert individual labels before each DCD entry
    # following a pool label definition.
    if pool_labels:
        expanded_lines = []
        i = 0
        while i < len(new_lines):
            line = new_lines[i]
            stripped = line.strip()
            # Check if this line is a pool label definition (_pool_N_X_0)
            pool_match = re.match(r'^(_pool_\d+_\d+)_0$', stripped)
            if pool_match:
                pool_base = pool_match.group(1)
                expanded_lines.append(line)
                i += 1
                offset = 0
                # Label each subsequent DCD entry
                while i < len(new_lines):
                    dcd_line = new_lines[i]
                    dcd_stripped = dcd_line.strip()
                    if dcd_stripped.startswith('DCD') or dcd_stripped.startswith('DCW'):
                        if offset > 0:
                            expanded_lines.append(f"{pool_base}_{offset}\n")
                        expanded_lines.append(dcd_line)
                        offset += 4 if dcd_stripped.startswith('DCD') else 2
                        i += 1
                    elif dcd_stripped.startswith('DCB'):
                        # Count bytes in DCB: string like DCB "Kiko" = 4 bytes,
                        # or DCB 0x4b,0x69,... = count commas+1
                        if offset > 0:
                            expanded_lines.append(f"{pool_base}_{offset}\n")
                        expanded_lines.append(dcd_line)
                        if '"' in dcd_stripped:
                            # DCB "text" — count chars between quotes
                            m = re.search(r'"([^"]*)"', dcd_stripped)
                            if m:
                                raw = m.group(1)
                                # Handle escape sequences like \0
                                byte_count = len(raw.replace('\\0', '\x00').replace('\\n', '\n').replace('\\t', '\t').replace('\\\\', '\\'))
                                offset += byte_count
                            else:
                                offset += 1
                        else:
                            # DCB 0x4b,0x69,... — count comma-separated values
                            vals = dcd_stripped[3:].split(',')
                            offset += len(vals)
                        i += 1
                    elif dcd_stripped == '' or dcd_stripped.startswith(';'):
                        expanded_lines.append(dcd_line)
                        i += 1
                    else:
                        break
                modifications_made = True
            else:
                expanded_lines.append(line)
                i += 1
        new_lines = expanded_lines

    # Strip stub constructor code from C++ files that define vtables.
    # Only strip the __ct__ PROC block if it's a stub (small body).
    # Real constructors (>20 instructions) are preserved.
    has_vtable = any('AREA __VTABLE__' in line for line in new_lines)
    has_ctor = any('__ct__' in line and 'PROC' in line for line in new_lines)
    ctor_is_stub = False
    if has_ctor:
        in_ct = False
        ct_line_count = 0
        for l in new_lines:
            if '__ct__' in l and 'PROC' in l:
                in_ct = True
                continue
            if in_ct and l.strip() == 'ENDP':
                break
            if in_ct and l.strip():
                ct_line_count += 1
        ctor_is_stub = ct_line_count < 20
    if has_vtable and has_ctor and ctor_is_stub:
        filtered_lines = []
        in_ctor_proc = False
        ctor_name = None
        # Find constructor name first
        for l in new_lines:
            m = re.match(r'^(\S*__ct__\S+)\s+PROC', l)
            if m:
                ctor_name = m.group(1)
                break
        for line in new_lines:
            # Detect start of constructor PROC
            if ctor_name and line.strip().startswith(f'{ctor_name} PROC'):
                in_ctor_proc = True
                modifications_made = True
                continue
            # Detect end of constructor PROC
            if in_ctor_proc and line.strip() == 'ENDP':
                in_ctor_proc = False
                continue
            # Skip lines inside constructor PROC
            if in_ctor_proc:
                continue
            # Remove EXPORT of the stripped constructor
            if ctor_name and f'EXPORT {ctor_name}' in line:
                modifications_made = True
                continue
            # Remove IMPORT of __nw__FUi (operator new) only if no other code
            # references it after constructor removal.
            # Also remove IMPORT __ct__* (base class constructors called by derived ctors)
            if 'IMPORT __nw__FUi' in line:
                # Check if __nw__FUi is used outside the constructor
                nw_used = False
                in_ctor = False
                for check_line in new_lines:
                    if ctor_name and check_line.strip().startswith(f'{ctor_name} PROC'):
                        in_ctor = True
                    elif in_ctor and check_line.strip() == 'ENDP':
                        in_ctor = False
                    elif not in_ctor and 'IMPORT' not in check_line and '__nw__FUi' in check_line:
                        nw_used = True
                        break
                if not nw_used:
                    modifications_made = True
                    continue
            if 'IMPORT __ct__' in line:
                modifications_made = True
                continue
            filtered_lines.append(line)
        # Second pass: strip constructor data pool entries that tcpp placed
        # inside adjacent method PROCs. Pattern: [DCW 0000] + numeric label + DCD __VTABLE__
        final_lines = []
        i = 0
        while i < len(filtered_lines):
            stripped = filtered_lines[i].strip()
            # Look for the pattern: optional DCW 0000, then numeric label, then DCD __VTABLE__
            if stripped == 'DCW      0000' or stripped.isdigit():
                # Scan ahead to see if this is part of a ctor data pool
                pool_lines = [i]
                j = i + 1
                if stripped == 'DCW      0000':
                    # Next should be numeric label
                    while j < len(filtered_lines) and not filtered_lines[j].strip():
                        j += 1
                    if j < len(filtered_lines) and filtered_lines[j].strip().isdigit():
                        pool_lines.append(j)
                        j += 1
                # Now look for DCD __VTABLE__
                while j < len(filtered_lines) and not filtered_lines[j].strip():
                    j += 1
                if j < len(filtered_lines):
                    next_s = filtered_lines[j].strip()
                    if 'DCD' in next_s and '__VTABLE__' in next_s:
                        pool_lines.append(j)
                        # Skip all pool lines
                        modifications_made = True
                        i = j + 1
                        continue
            final_lines.append(filtered_lines[i])
            i += 1
        new_lines = final_lines

    # Remap tcpp-generated vtable AREA names to original names for correct linker sorting.
    # The ARM linker sorts AREA sections alphabetically, so __VTABLE__7Default sorts
    # differently than __VTABLE__342Default. We rename back to the original convention.
    vtable_renames = {
        '__VTABLE__7Default': '__VTABLE__342Default',
        '__VTABLE__4Kiko': '__VTABLE__309Kiko',
    }
    renamed_lines = []
    for line in new_lines:
        for old_name, new_name in vtable_renames.items():
            if old_name in line:
                line = line.replace(old_name, new_name)
                modifications_made = True
        renamed_lines.append(line)
    new_lines = renamed_lines

    # ── Kiko m10 register fixup ───────────────────────────────────
    # tcpp generates: LSL r3,r0,#1 / ADD r0,r3,r0 / LDR r3,... / LSL r1,r0,#1
    # Original has:   LSL r1,r0,#1 / ADD r1,r1,r0 / LDR r3,... / LSL r1,r1,#1
    # Pattern-match the sequence after "LSR r0,r0,#24" and fix registers.
    if 'Kiko' in file_path:
        stripped = [l.strip() for l in new_lines]
        for i in range(len(stripped) - 4):
            if (stripped[i]   == 'LSR      r0,r0,#24' and
                stripped[i+1] == 'LSL      r3,r0,#1' and
                stripped[i+2] == 'ADD      r0,r3,r0'):
                new_lines[i+1] = new_lines[i+1].replace('LSL      r3,r0,#1', 'LSL      r1,r0,#1')
                new_lines[i+2] = new_lines[i+2].replace('ADD      r0,r3,r0', 'ADD      r1,r1,r0')
                modifications_made = True
                # Also fix the byteOff shift 2 lines later: LSL r1,r0,#1 -> LSL r1,r1,#1
                if i+4 < len(stripped) and stripped[i+4] == 'LSL      r1,r0,#1':
                    new_lines[i+4] = new_lines[i+4].replace('LSL      r1,r0,#1', 'LSL      r1,r1,#1')
                break

    # Write the corrected content back to the file only if changes were made
    if modifications_made:
        try:
            with open(file_path, 'w') as f:
                f.writelines(new_lines)
            # print(f"Processed compiler labels in {os.path.basename(file_path)}")
        except Exception as e:
            print(f"Error writing to {file_path}: {e}", file=sys.stderr)


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print(f"Usage: python {sys.argv[0]} <path_to_assembly_file.s> ...", file=sys.stderr)
        sys.exit(1)
    
    # Process all files passed as command-line arguments
    for file_path in sys.argv[1:]:
        if os.path.isfile(file_path):
            convert_compiler_labels_in_file(file_path)
