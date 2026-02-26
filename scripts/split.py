import os
import re
import collections
from pathlib import Path

# --- Configuration ---
INPUT_DIR = Path("asm/split")
OUTPUT_DIR = Path("asm/split_new")

# --- Assembly Analysis Constants ---
SYMBOL_BLACKLIST = {
    'r0', 'r1', 'r2', 'r3', 'r4', 'r5', 'r6', 'r7', 'r8', 'r9', 'r10', 'r11', 'r12', 
    'sp', 'lr', 'pc', 'INCLUDE', 'asm', 'macros', 'inc', 'AREA', 'text', 'CODE', 
    'IMPORT', 'EXPORT', 'DCDU', 'ALIGN', 'END', 
    'thumb_func_start', 'non_word_aligned_thumb_func_start', 'arm_func_start' # FIXED: Added arm_func_start
}
# --- End Configuration ---

def get_sorted_source_files(directory: Path) -> list[Path]:
    """Finds all split_*.s files and sorts them by hex address."""
    files = list(directory.glob("split_*.s"))
    files.sort(key=lambda p: int(m.group(1), 16) if (m := re.search(r"split_([0-9a-fA-F]+)\.s", p.name)) else 0)
    return files

def discover_all_symbols(source_files: list[Path]) -> tuple[set[str], dict[str, str]]:
    """First Pass: Scans all files to build a global map of all defined and imported symbols."""
    print("🔍 Pass 1: Discovering all symbols across the project...")
    all_symbols = set()
    dcd_map = {}
    
    import_re = re.compile(r"^\s*IMPORT\s+([\w_@$]+)", re.MULTILINE)
    dcd_re = re.compile(r"^(_[0-9a-fA-F]+)\s+DCDU\s+([\w_@$]+)", re.MULTILINE)
    # FIXED: Added arm_func_start to the regex
    func_start_re = re.compile(r"^\s*((?:arm_func_start|(?:non_word_aligned_)?thumb_func_start).*)", re.MULTILINE)
    func_label_re = re.compile(r"^([\w_@$]+):?")
    
    for filepath in source_files:
        with open(filepath, 'r') as f:
            content = f.read()
        
        for m in import_re.finditer(content): all_symbols.add(m.group(1))
        for m in dcd_re.finditer(content):
            label, value = m.groups()
            all_symbols.add(label)
            all_symbols.add(value)
            dcd_map[label] = m.group(0)

        split_code = func_start_re.split(content)
        if len(split_code) < 2: continue
        if not split_code[0].strip(): split_code = split_code[1:]

        functions = []
        i = 0
        while i + 1 < len(split_code):
            functions.append((split_code[i], split_code[i+1]))
            i += 2

        for marker_line, code_block in functions:
            func_lines = (marker_line.strip() + '\n' + code_block).splitlines(True)
            func_name = next((m.group(1) for line in func_lines if (m := func_label_re.match(line.strip())) and "start" not in m.group(1)), None)
            if func_name:
                all_symbols.add(func_name)

    print(f"    -> Found {len(all_symbols)} unique symbols.")
    return all_symbols, dcd_map

def find_dependencies(func_lines: list[str], all_known_symbols: set[str]) -> set[str]:
    """Scans a function's code and returns the set of symbols it depends on."""
    dependencies = set()
    potential_symbol_re = re.compile(r"([\w_@$]+)")

    for line in func_lines:
        line_content = line.split(';')[0].split('@')[0]
        if re.search(r"%\d+", line_content): continue

        for symbol in potential_symbol_re.findall(line_content):
            if symbol in all_known_symbols and symbol not in SYMBOL_BLACKLIST:
                dependencies.add(symbol)
                
    return dependencies

def process_files():
    """Main function to orchestrate the splitting process."""
    if not INPUT_DIR.exists():
        print(f"Error: Input directory '{INPUT_DIR}' not found.")
        return

    OUTPUT_DIR.mkdir(exist_ok=True)
    source_files = get_sorted_source_files(INPUT_DIR)
    
    all_known_symbols, dcd_map = discover_all_symbols(source_files)

    print("\n⚙️  Pass 2: Splitting files and analyzing dependencies...")
    all_new_files = []

    # FIXED: Added arm_func_start to the regex
    func_start_re = re.compile(r"^\s*((?:arm_func_start|(?:non_word_aligned_)?thumb_func_start).*)", re.MULTILINE)
    func_label_re = re.compile(r"^([\w_@$]+):?")
    sub_func_re = re.compile(r"^sub_([0-9a-fA-F]+)$")
    dcd_value_re = re.compile(r"DCDU\s+([\w_@$]+)")

    for filepath in source_files:
        print(f"  Processing {filepath.name}...")
        with open(filepath, 'r') as f: content = f.read()
        
        first_func_idx = re.search(r"thumb_func_start|arm_func_start", content)
        if not first_func_idx: continue
        first_func_idx = first_func_idx.start()
        
        first_data_match = re.search(r"^\s*_", content[first_func_idx:], re.MULTILINE)
        first_data_idx = (first_data_match.start() + first_func_idx) if first_data_match else -1
        
        function_body = content[first_func_idx:first_data_idx] if first_data_idx != -1 else content[first_func_idx:]

        split_code = func_start_re.split(function_body)
        if not split_code[0].strip(): split_code = split_code[1:]

        functions = []
        i = 0
        while i + 1 < len(split_code):
            functions.append((split_code[i], split_code[i+1]))
            i += 2
        
        base_name = re.search(r"split_([0-9a-fA-F]+)", filepath.name).group(1)
        other_func_counter = 1

        for marker_line, code_block in functions:
            # Reconstruct function lines with proper indentation for the directive
            func_lines = [f"\t{marker_line.strip()}\n"] + code_block.splitlines(True)
            func_name = next((m.group(1) for line in func_lines if (m := func_label_re.match(line.strip())) and "start" not in m.group(1)), None)
            if not func_name: continue

            if m := sub_func_re.match(func_name): new_filename = f"split_{m.group(1)}.s"
            else:
                new_filename = f"split_{base_name}_{other_func_counter:02d}.s"
                other_func_counter += 1

            used_symbols = find_dependencies(func_lines, all_known_symbols)
            required_dcds = {label: dcd_map[label] for label in sorted(used_symbols) if label in dcd_map}
            
            for dcd_line in required_dcds.values():
                if m := dcd_value_re.search(dcd_line):
                    used_symbols.add(m.group(1))

            used_symbols.discard(func_name)
            required_imports = sorted([s for s in used_symbols if s not in dcd_map and s not in required_dcds])
            
            output_path = OUTPUT_DIR / new_filename
            with open(output_path, 'w') as out_f:
                # --- HEADER ---
                out_f.write("\tINCLUDE asm/macros.inc\n")
                out_f.write("\tAREA text, CODE\n")
                
                if required_imports:
                    out_f.write("\n")
                    for symbol in required_imports:
                        out_f.write(f"\tIMPORT {symbol}\n")

                # --- FUNCTION ---
                out_f.write("\n")
                # Write lines, indenting instructions but not labels
                for line in func_lines:
                    stripped_line = line.strip()
                    if stripped_line and not stripped_line.endswith(':'):
                        out_f.write(f"\t{line.lstrip()}")
                    else:
                        out_f.write(line)
                
                # --- DATA & END ---
                if required_dcds:
                    out_f.write("\n\tALIGN\n")
                    for dcd_line in required_dcds.values():
                        out_f.write(f"{dcd_line.strip()}\n")
                
                out_f.write("\n\tEND\n")

            all_new_files.append(output_path)
            
    print("\n" + "="*50)
    print("      Linker Include List (sorted)")
    print("="*50)
    for file in sorted(all_new_files, key=lambda p: p.name):
        print(f'    build/{file.as_posix()}')
        
    print(f"\n✅ Done! {len(all_new_files)} new assembly files created in '{OUTPUT_DIR}'.")

if __name__ == "__main__":
    process_files()
