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

    current_vtable = None
    for line in lines:
        original_line = line
        
        # Check for a label definition on this line
        def_match = label_def_regex.match(line)
        if def_match:
            label_num = def_match.group(2)
            # Replace the entire line with just the number plus newline, stripping DATA
            line = f"{label_num}\n"
        else:
            # If it's not a definition, check for references
            # Use a lambda to perform the replacement for all matches on the line
            line = label_ref_regex.sub(lambda m: f"%{m.group(2)}", line)

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
            # Strip cumulative offset (e.g., "+ 4 ", "+ 8 ") before replacing {PC}.
            # tcpp generates: DCD func + N - {PC}  where N = slot_index * 4
            # We need:        DCD func - vtable_label
            # Slot 0 has no +N, slots 1+ have +4, +8, etc.
            line = re.sub(r'(\s*\+\s*\d+)?\s*-\s*\{PC\}', f' - {current_vtable}', line)

        new_lines.append(line)
        if original_line != line:
            modifications_made = True

    # Strip stub constructor code from C++ files that define vtables.
    # Only strip the __ct__ PROC block; preserve any other methods in the text section.
    has_vtable = any('AREA __VTABLE__' in line for line in new_lines)
    has_ctor = any('__ct__' in line and 'PROC' in line for line in new_lines)
    if has_vtable and has_ctor:
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
            # Remove IMPORT of __nw__FUi (operator new, only used by constructor)
            # and IMPORT __ct__* (base class constructors called by derived ctors)
            if 'IMPORT __nw__FUi' in line or ('IMPORT __ct__' in line):
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
