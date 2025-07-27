#!/usr/bin/env python3

import argparse
import sys
from collections import OrderedDict 

def parse_object_file_symbols(filepath):
    """
    Parses the file containing object files and their symbols.
    Returns two dictionaries:
    1. sym_to_obj_map: {"symbol_name": "object_file.o"}
    2. obj_to_sym_list_map: {"object_file.o": ["sym1_in_order", "sym2_in_order", ...]}
    """
    sym_to_obj_map = {}
    obj_to_sym_list_map = OrderedDict() # Preserve File 1's .o file order for this map
    
    current_obj_file = None
    current_obj_file_symbols = [] 

    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            for line_num, line_content in enumerate(f, 1):
                processed_line = line_content.rstrip()
                
                if processed_line.endswith('.o:'):
                    # Save symbols for the previous object file before starting a new one
                    if current_obj_file:
                        obj_to_sym_list_map[current_obj_file] = list(current_obj_file_symbols) # Store a copy
                    
                    current_obj_file = processed_line[:-1]
                    current_obj_file_symbols.clear()
                    if current_obj_file not in obj_to_sym_list_map: # Ensure obj file is keyed
                         obj_to_sym_list_map[current_obj_file] = []
                elif current_obj_file and \
                     (line_content.startswith(' ') or line_content.startswith('\t')):
                    symbol_name = line_content.strip()
                    if symbol_name: 
                        if symbol_name not in sym_to_obj_map: # First definition wins for sym_to_obj_map
                            sym_to_obj_map[symbol_name] = current_obj_file
                        else:
                            print(f"Warning (File 1, Line {line_num}): Symbol '{symbol_name}' redefined or duplicated. Using first encountered object file '{sym_to_obj_map[symbol_name]}'.", file=sys.stderr)
                        if symbol_name not in current_obj_file_symbols: # Add to ordered list for current .o
                            current_obj_file_symbols.append(symbol_name)
            
            # After the loop, save symbols for the last processed object file
            if current_obj_file:
                obj_to_sym_list_map[current_obj_file] = list(current_obj_file_symbols) # Store a copy

    except FileNotFoundError:
        print(f"Error: Input file (object symbols) not found: {filepath}", file=sys.stderr)
        return None, None
    except Exception as e:
        print(f"Error parsing object symbol file '{filepath}': {e}", file=sys.stderr)
        return None, None
        
    # Ensure all obj files mentioned in sym_to_obj_map are keys in obj_to_sym_list_map
    for sym, obj in sym_to_obj_map.items():
        if obj not in obj_to_sym_list_map:
            print(f"Warning (File 1 consistency): Object file '{obj}' for symbol '{sym}' not found as a primary .o: entry. Creating empty symbol list for it.", file=sys.stderr)
            obj_to_sym_list_map[obj] = []
            
    return sym_to_obj_map, obj_to_sym_list_map

def parse_symbol_addresses(filepath):
    """
    Parses the file containing symbols and their addresses.
    Returns a list of (symbol_name, formatted_address) tuples, preserving order.
    """
    ordered_symbol_addresses = [] 
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            for line_num, line in enumerate(f, 1):
                stripped_line = line.strip()
                if not stripped_line:
                    continue
                
                parts = stripped_line.split(None, 1)
                if len(parts) == 2:
                    address_token, symbol_name = parts[0].strip(), parts[1].strip()
                    hex_digits = ""
                    if address_token.startswith("0x"): hex_digits = address_token[2:]
                    elif '_' in address_token: hex_digits = address_token.split('_')[-1]
                    else: hex_digits = address_token

                    if not hex_digits:
                        print(f"Warning (File 2, Line {line_num}): Could not extract hex part from address token '{address_token}' for symbol '{symbol_name}'. Skipping.", file=sys.stderr)
                        continue
                    if not all(c in '0123456789abcdefABCDEF' for c in hex_digits):
                        print(f"Warning (File 2, Line {line_num}): Extracted part '{hex_digits}' from token '{address_token}' is not valid hex for symbol '{symbol_name}'. Skipping.", file=sys.stderr)
                        continue
                    ordered_symbol_addresses.append((symbol_name, "0x" + hex_digits.upper()))
                else:
                    print(f"Warning (File 2, Line {line_num}): Could not parse line: '{stripped_line}'. Expected 'address_token symbol_name'. Skipping.", file=sys.stderr)
    except FileNotFoundError:
        print(f"Error: Input file (symbol addresses) not found: {filepath}", file=sys.stderr)
        return None
    except Exception as e:
        print(f"Error parsing symbol address file '{filepath}': {e}", file=sys.stderr)
        return None
    return ordered_symbol_addresses

def generate_linker_script_validated(
    sym_to_obj_map, 
    obj_to_sym_list_map, 
    ordered_sym_addr_list, 
    output_filepath):
    """
    Generates the linker script with validation.
    """
    if sym_to_obj_map is None or obj_to_sym_list_map is None or ordered_sym_addr_list is None:
        print("Error: Input data is incomplete. Cannot generate linker script.", file=sys.stderr)
        return False

    processed_object_files = set()
    entries_written = 0
    file2_sym_to_addr_map = dict(ordered_sym_addr_list) # For quick lookups

    # For representative name:
    # Your 'callvia' example (callvia 0x... {callvia.o}) where File2 might have __call_via_r0 suggests
    # derivation from obj_file name.
    # Your '__cpp_initialise' example (__cpp_initialise 0x... {init.o}) suggests using File2 symbol.
    # This is contradictory. Let's use the File 2 symbol name for the output block name for now,
    # as it's more direct and covers `sprintf`, `atoi`, `__cpp_initialise`.
    # The `callvia` output name might need a specific transformation rule if it's not `__call_via_r0` in File 2.
    
    output_lines = []

    for i, (current_trigger_symbol, current_address) in enumerate(ordered_sym_addr_list):
        
        obj_file = sym_to_obj_map.get(current_trigger_symbol)
        if not obj_file:
            # print(f"Info: Symbol '{current_trigger_symbol}' from File 2 not found in File 1's symbol map. Skipping.", file=sys.stderr)
            continue

        if obj_file in processed_object_files:
            print(f"VALIDATION INFO: Symbol '{current_trigger_symbol}' from object file '{obj_file}' encountered at File 2 line ~{i+1}. '{obj_file}' has already been processed and its output block generated due to an earlier symbol.", file=sys.stderr)
            continue

        # First encounter of this object file for output generation
        # Representative name for output block header - using the triggering symbol from File 2
        representative_name = current_trigger_symbol 
        
        # --- Special transformation for 'callvia' based on example ---
        # This is a hardcoded guess based on your `callvia` vs `__call_via_r0` example.
        # If `callvia.o` is the object file and `current_trigger_symbol` starts with `__call_via_r`, output `callvia`.
        if obj_file.lower() == "callvia.o" and current_trigger_symbol.startswith("__call_via_r"):
             representative_name = "callvia"
        # --- End special transformation ---
        
        output_lines.append(f"    {representative_name} {current_address}\n")
        output_lines.append(f"    {{\n")
        output_lines.append(f"        {obj_file}\n")
        output_lines.append(f"    }}\n")
        processed_object_files.add(obj_file)
        entries_written += 1

        # --- Start Validation for sequential functions within this obj_file ---
        print(f"\nINFO: Validating sequence for '{obj_file}', triggered by '{current_trigger_symbol}' (File 2 line ~{i+1}).", file=sys.stderr)
        symbols_defined_in_obj_file1 = obj_to_sym_list_map.get(obj_file, [])

        if not symbols_defined_in_obj_file1:
            print(f"  WARNING: No symbols listed for '{obj_file}' in File 1 definition. Cannot validate its internal sequence.", file=sys.stderr)
        else:
            try:
                trigger_idx_in_obj_def = symbols_defined_in_obj_file1.index(current_trigger_symbol)
            except ValueError:
                print(f"  ERROR: Trigger symbol '{current_trigger_symbol}' (from File 2) not found within '{obj_file}'s symbol list from File 1. This indicates a data inconsistency. Skipping sequence validation for this object file.", file=sys.stderr)
            else:
                is_sequential_so_far = True
                for k_obj_def in range(trigger_idx_in_obj_def + 1, len(symbols_defined_in_obj_file1)):
                    expected_next_sym_from_obj_def = symbols_defined_in_obj_file1[k_obj_def]
                    file2_lookahead_idx = i + (k_obj_def - trigger_idx_in_obj_def) # Corresponding index in File 2

                    if file2_lookahead_idx >= len(ordered_sym_addr_list):
                        if expected_next_sym_from_obj_def in file2_sym_to_addr_map:
                            print(f"  VALIDATION WARNING for '{obj_file}': Expected symbol '{expected_next_sym_from_obj_def}' (next in File 1 def for '{obj_file}') to follow, but File 2 sequence ended. '{expected_next_sym_from_obj_def}' IS present elsewhere in File 2.", file=sys.stderr)
                        else:
                            pass # Expected symbol from File 1 not in File 2 at all - may be normal.
                        is_sequential_so_far = False
                        break 

                    actual_next_sym_in_file2, _ = ordered_sym_addr_list[file2_lookahead_idx]
                    actual_next_sym_obj_file = sym_to_obj_map.get(actual_next_sym_in_file2)

                    if actual_next_sym_obj_file != obj_file:
                        if expected_next_sym_from_obj_def in file2_sym_to_addr_map and sym_to_obj_map.get(expected_next_sym_from_obj_def) == obj_file:
                             print(f"  VALIDATION WARNING for '{obj_file}': Expected '{expected_next_sym_from_obj_def}' to follow. Sequence broken by '{actual_next_sym_in_file2}' (from '{actual_next_sym_obj_file}'). '{expected_next_sym_from_obj_def}' (from '{obj_file}') is present in File 2 but out of this specific sequence.", file=sys.stderr)
                        is_sequential_so_far = False
                        break 

                    if actual_next_sym_in_file2 != expected_next_sym_from_obj_def:
                        print(f"  VALIDATION WARNING for '{obj_file}': Found '{actual_next_sym_in_file2}' which belongs to '{obj_file}', but expected '{expected_next_sym_from_obj_def}' according to File 1's internal order. Symbols within '{obj_file}' appear out of order in File 2 compared to File 1 definition.", file=sys.stderr)
                        is_sequential_so_far = False
                        break 
        # --- End Validation ---

    try:
        with open(output_filepath, 'w', encoding='utf-8') as f:
            f.writelines(output_lines)
        
        if entries_written > 0:
            print(f"\nSuccessfully generated linker script '{output_filepath}' with {entries_written} entries.")
        else:
            print(f"\nNo entries were written to '{output_filepath}'.")
            if sym_to_obj_map and ordered_sym_addr_list:
                 print("  Possible reasons: No symbols from File 2 were found in File 1's map, or names don't match.", file=sys.stderr)
        return True
    except IOError as e:
        print(f"Error: Could not write to output file '{output_filepath}': {e}", file=sys.stderr)
        return False

def main():
    parser = argparse.ArgumentParser(
        description="Generate a linker file with validation. Each .o file gets one entry. Order from address file is preserved. Validates symbol sequence within .o files.",
        formatter_class=argparse.RawTextHelpFormatter
    )
    parser.add_argument("obj_sym_file", help="File 1: object files and their symbols (e.g., __dup.o: __dup ...).")
    parser.add_argument("sym_addr_file", help="File 2: symbols and addresses (e.g., sub_803B860 sprintf), order matters.")
    parser.add_argument("output_linker_file", help="Path for the generated linker file.")

    args = parser.parse_args()

    print(f"Step 1: Parsing object symbols from: {args.obj_sym_file}")
    sym_to_obj_map, obj_to_sym_list_map = parse_object_file_symbols(args.obj_sym_file)
    
    if sym_to_obj_map is None or obj_to_sym_list_map is None:
        print("Critical error parsing object symbols file (File 1). Exiting.", file=sys.stderr)
        sys.exit(1)
    print(f"Found {len(sym_to_obj_map)} symbol-to-object mappings and symbol lists for {len(obj_to_sym_list_map)} object files.")
    
    print(f"\nStep 2: Parsing symbol addresses (preserving order) from: {args.sym_addr_file}")
    ordered_sym_addr_list = parse_symbol_addresses(args.sym_addr_file)

    if ordered_sym_addr_list is None:
        print("Critical error parsing symbol addresses file (File 2). Exiting.", file=sys.stderr)
        sys.exit(1)
    print(f"Found {len(ordered_sym_addr_list)} symbol-address entries in order from address file.")
    
    print(f"\nStep 3: Generating linker script with validation to: {args.output_linker_file}")
    success = generate_linker_script_validated(
        sym_to_obj_map, 
        obj_to_sym_list_map, 
        ordered_sym_addr_list, 
        args.output_linker_file
    )
    
    if not success:
        print("Linker script generation failed.", file=sys.stderr)
        sys.exit(1)
    print("\nDone.")

if __name__ == "__main__":
    main()