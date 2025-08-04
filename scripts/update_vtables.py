# -*- coding: utf-8 -*-
"""
Updates ARM assembly vtable files based on a JSON export from IDA Pro.

This script reads a structured JSON file containing vtable information,
then finds and rewrites the corresponding vtable*.s files to use symbolic
function names and modern assembly syntax.

It also renames the files to include the symbolic vtable name.

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

    # Regex to find the original vtable name and address from the comment
    vtable_name_re = re.compile(r";.*vtable: \w+_(0x[0-9A-Fa-f]+)")
    dcd_re = re.compile(r"DCD\s+(0x[0-9A-Fa-f]+)")

    for filename in sorted(os.listdir(vtables_dir)):
        if not filename.startswith("vtable") or not filename.endswith(".s"):
            continue

        original_filepath = os.path.join(vtables_dir, filename)
        with open(original_filepath, 'r') as f:
            lines = f.readlines()

        # 1. Find the vtable address from the file's header comment
        vtable_address = None
        for line in lines:
            match = vtable_name_re.search(line)
            if match:
                vtable_address = int(match.group(1), 16)
                break
        
        if not vtable_address or vtable_address not in vtable_map:
            print(f"[Warning] Could not find matching vtable for {filename}. Skipping.")
            continue

        # 2. We have a match, get the vtable data from our map
        vtable_info = vtable_map[vtable_address]
        new_vtable_name = vtable_info['name']
        print(f"Processing {filename} -> {new_vtable_name}")

        # 3. Reconstruct the file content
        new_lines = []
        imports = set()
        dcd_lines_from_file = [line for line in lines if "DCD" in line]

        # Collect all named functions for the IMPORT block
        for func in vtable_info['functions']:
            if func['name']:
                imports.add(func['name'])
        
        for imp in sorted(list(imports)):
            new_lines.append(f"    IMPORT  {imp}\n")
        new_lines.append("\n")

        # Add the AREA directive
        new_lines.append("    AREA data, DATA, READONLY\n\n")
        
        # Add the new vtable label
        new_lines.append(f"{new_vtable_name}\n")

        # 4. Process DCDs
        if len(dcd_lines_from_file) != len(vtable_info['functions']):
            print(f"[ERROR] Mismatch in DCD count for {filename}. Aborting this file.")
            continue

        for i, func_info in enumerate(vtable_info['functions']):
            if func_info['name']:
                # Use symbolic name
                new_lines.append(f"    DCD     {func_info['name']} - .\n")
            else:
                # Keep original DCD value if function is unnamed
                new_lines.append(dcd_lines_from_file[i])

        # 5. Add footer
        new_lines.append("\n")
        new_lines.append(f"    GLOBAL  {new_vtable_name}\n")
        new_lines.append("    END\n")

        # 6. Determine new filename and write the file
        file_number = filename.replace("vtable", "").replace(".s", "")
        new_filename = f"vtable{file_number}_{new_vtable_name}.s"
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
