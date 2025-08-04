# -*- coding: utf-8 -*-
"""
Updates ARM assembly vtable files based on a JSON export from IDA Pro.

This script reads a structured JSON file containing vtable information,
then finds and rewrites the corresponding vtable*.s files to use symbolic
function names and a specific compiler-generated AREA format.

It also renames the files to include the symbolic vtable name and generates
a renames.txt file for other build system use.

Usage:
    python update_vtables.py --json <path_to_vtables.json> --dir <path_to_vtables_dir>
"""

import os
import re
import json
import argparse

def load_vtable_data(json_path):
    """Loads and indexes the vtable data from the JSON file."""
    try:
        with open(json_path, 'r') as f:
            data = json.load(f)
        # Create a lookup map from address to vtable object for fast access
        return {vtable['address']: vtable for vtable in data}
    except Exception as e:
        print(f"[ERROR] Could not load or parse {json_path}: {e}")
        return None

def update_vtable_files(vtables_dir, vtable_map):
    """Processes each vtable*.s file in the directory."""
    if not os.path.isdir(vtables_dir):
        print(f"[ERROR] Directory not found: {vtables_dir}")
        return

    print(f"--- Scanning for vtable files in: {vtables_dir} ---")

    # Regex to find the original vtable address from the global label, e.g., "gUnknown_0803E5C8"
    vtable_label_re = re.compile(r"gUnknown_([0-9A-Fa-f]+)")
    
    # List to store the rename mappings for the output file.
    rename_log = []

    for filename in sorted(os.listdir(vtables_dir)):
        if not filename.startswith("vtable") or not filename.endswith(".s"):
            continue

        original_filepath = os.path.join(vtables_dir, filename)
        with open(original_filepath, 'r') as f:
            lines = f.readlines()

        # 1. Find the vtable address from the global label in the file
        vtable_address = None
        original_label = None
        for line in lines:
            match = vtable_label_re.search(line)
            if match:
                # The address is captured without "0x"
                vtable_address = int(match.group(1), 16)
                original_label = f"gUnknown_{match.group(1)}"
                break
        
        if not vtable_address or vtable_address not in vtable_map:
            print(f"[Warning] Could not find matching vtable for {filename}. Skipping.")
            continue

        # 2. We have a match, get the vtable data from our map
        vtable_info = vtable_map[vtable_address]
        symbolic_name = vtable_info['name']
        
        file_number_match = re.search(r'vtable(\d+)', filename)
        if not file_number_match:
            print(f"[Warning] Could not extract number from {filename}. Skipping.")
            continue
        file_number = file_number_match.group(1)

        print(f"Processing {filename} -> {symbolic_name}")

        # 3. Reconstruct the file content
        new_lines = []
        imports = set()

        # Collect all function names for the IMPORT block
        for func in vtable_info['functions']:
            func_name = func['name']
            if not func_name:
                # Reconstruct the default name (e.g., sub_802541E) if not present in JSON
                func_name = f"sub_{func['address']:X}"
            imports.add(func_name)
        
        for imp in sorted(list(imports)):
            new_lines.append(f"    IMPORT  {imp}\n")
        new_lines.append("\n")

        # Sanitize name for the AREA directive (e.g., NpcScriptGroup -> Npc)
        sanitized_name = symbolic_name.replace("ScriptGroup", "")
        # Construct the new AREA/label name: __VTABLE__3<index><Name>
        area_name = f"__VTABLE__3{file_number.zfill(2)}{sanitized_name}"
        
        # Log the rename for the output file
        rename_log.append(f"{original_label} {area_name}")
        
        # Add the new compiler-specific AREA directive. The label is implicit.
        new_lines.append(f"    AREA    {area_name}, DATA, READONLY\n")

        # 4. Process DCDs
        for func_info in vtable_info['functions']:
            func_name = func_info['name']
            if not func_name:
                # Reconstruct the default name again if needed
                func_name = f"sub_{func_info['address']:X}"
            
            # Always use the symbolic name for the DCD entry
            new_lines.append(f"    DCD     {func_name} - .\n")

        # 5. Add footer using the new area name
        new_lines.append("\n")
        new_lines.append(f"    GLOBAL  {area_name}\n")
        new_lines.append("    END\n")

        # 6. Determine new filename and write the file
        new_filename = f"vtable{file_number}_{symbolic_name}.s"
        new_filepath = os.path.join(vtables_dir, new_filename)

        try:
            with open(new_filepath, 'w') as f:
                f.writelines(new_lines)

            # If the new filename is different, remove the old file
            if new_filepath != original_filepath:
                os.remove(original_filepath)
            
            print(f"  -> Successfully created {new_filename}")

        except Exception as e:
            print(f"  -> [ERROR] Failed to write or rename for {filename}: {e}")

    # 7. Write the renames log file
    if rename_log:
        renames_filepath = os.path.join(vtables_dir, "renames.txt")
        try:
            with open(renames_filepath, 'w') as f:
                f.write("\n".join(rename_log))
            print(f"\n--- Successfully created rename map at: {renames_filepath} ---")
        except Exception as e:
            print(f"\n[ERROR] Failed to write renames.txt: {e}")

    print("\n--- VTable update process complete ---")


def main():
    parser = argparse.ArgumentParser(
        description="Rewrite ARM assembly vtable files using IDA JSON data."
    )
    parser.add_argument("--json", required=True, help="Path to the vtables.json file.")
    parser.add_argument("--dir", required=True, help="Directory containing the vtable*.s files.")
    args = parser.parse_args()

    vtable_map = load_vtable_data(args.json)
    if vtable_map:
        update_vtable_files(args.dir, vtable_map)

if __name__ == "__main__":
    main()
