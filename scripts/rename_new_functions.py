#!/usr/bin/env python3
import os
import re
import sys

def parse_ida_renames(rename_file_path):
    """
    Parses the rename file which contains lines like 'sub_<addr> <new_name>'.
    Returns a list of dictionaries, each with 'find' and 'replace' keys.
    The list is sorted to attempt longer 'find' strings first.
    """
    renames = []
    try:
        with open(rename_file_path, 'r', encoding='utf-8') as f:
            for i, line in enumerate(f, 1):
                line = line.strip()
                if not line or line.startswith('#'): # Ignore empty lines and comments
                    continue
                parts = line.split(maxsplit=1) # Split on the first space only
                if len(parts) == 2:
                    find_str = parts[0]
                    replace_str = parts[1]
                    # Basic validation for the 'find' string pattern
                    # Checks for "sub_" followed by at least 4 hex characters.
                    if re.match(r'^sub_[0-9a-fA-F]{4,}$', find_str):
                        renames.append({'find': find_str, 'replace': replace_str})
                    else:
                        print(f"Warning: Line {i}: Malformed 'find' pattern in renames file: '{line}'. Should be 'sub_<hex_addr>'. Skipping.")
                else:
                    print(f"Warning: Line {i}: Malformed line in renames file (expected 2 parts: 'sub_<addr> <new_name>'): '{line}'. Skipping.")
    except FileNotFoundError:
        print(f"Error: Rename file not found at '{rename_file_path}'.")
        print("Please ensure the file exists and the path is correct relative to where you run the script.")
        sys.exit(1) # Exit if the crucial rename file is missing
    except Exception as e:
        print(f"Error reading rename file '{rename_file_path}': {e}")
        sys.exit(1)

    # Sort renames by length of the 'find' string in descending order.
    # This helps replace more specific names first (e.g., sub_ABC_DEF before sub_ABC).
    # While word boundaries (\b) are the primary guard against partial replacements,
    # this sorting can be an additional safeguard in complex scenarios.
    renames.sort(key=lambda x: len(x['find']), reverse=True)
    return renames

def process_files(renames, root_dirs_extensions):
    """
    Processes files in specified directories, performing find and replace operations.
    'renames' is the list of rename rules.
    'root_dirs_extensions' is a dict like {'dir_path': ['.ext1', '.ext2']}.
    Paths are relative to the Current Working Directory.
    """
    total_replacements_all_files = 0
    files_modified_count = 0

    if not renames:
        print("No valid rename rules loaded. Exiting.")
        return

    for root_dir, extensions in root_dirs_extensions.items():
        if not os.path.isdir(root_dir):
            print(f"Warning: Directory '{root_dir}' not found. Skipping.")
            continue

        print(f"\nProcessing directory: '{root_dir}' for extensions: {', '.join(extensions)}")
        for subdir, _, files in os.walk(root_dir):
            for filename in files:
                if any(filename.endswith(ext) for ext in extensions):
                    filepath = os.path.join(subdir, filename)
                    try:
                        # Using errors='replace' to handle potential encoding issues gracefully,
                        # though it might alter unknown characters. For most code, utf-8 is standard.
                        with open(filepath, 'r', encoding='utf-8', errors='replace') as f:
                            content = f.read()
                    except Exception as e:
                        print(f"  Error reading file '{filepath}': {e}. Skipping.")
                        continue

                    original_content = content
                    current_file_content = content
                    file_replacements_count = 0

                    for item in renames:
                        find_str = item['find']
                        replace_str = item['replace']

                        # Escape 'find_str' for regex and add word boundaries (\b).
                        # Word boundaries ensure that "sub_123" is matched as a whole word
                        # and not as part of "sub_1234" or "othersub_123".
                        regex_pattern = r'\b' + re.escape(find_str) + r'\b'

                        # Perform replacement
                        new_content, num_subs = re.subn(regex_pattern, replace_str, current_file_content)

                        if num_subs > 0:
                            file_replacements_count += num_subs
                            current_file_content = new_content

                    if file_replacements_count > 0:
                        try:
                            with open(filepath, 'w', encoding='utf-8') as f:
                                f.write(current_file_content)
                            print(f"  Replaced {file_replacements_count} occurrences in '{filepath}'")
                            total_replacements_all_files += file_replacements_count
                            files_modified_count +=1
                        except Exception as e:
                            print(f"  Error writing to file '{filepath}': {e}.")
                            # Content might be partially modified in memory if one rename worked
                            # but a later one caused an issue before writing.
                            # For simplicity, we don't attempt to roll back the file here.
                            # This highlights the importance of backups/VCS.
    
    if files_modified_count > 0:
        print(f"\nFinished processing. Modified {files_modified_count} file(s) with a total of {total_replacements_all_files} replacements.")
    else:
        print("\nFinished processing. No files were modified (or no matching patterns were found).")


def main():
    """
    Main function to drive the renaming script.
    Assumes the script is run from the project's root directory,
    where 'scripts/', 'asm/', and 'partial/' are subdirectories.
    """
    # --- Configuration ---
    # Path to the file containing "sub_<addr> <new_name>" mappings.
    # This path is relative to where you run the script.
    ida_output_file = "scripts/function_list.txt"

    # Directories to process and their respective file extensions.
    # These paths are also relative to where you run the script.
    target_dirs = {
        "asm": [".s"],         # Process .s files in asm/ recursively
        "partial": [".c", ".h"] # Process .c and .h files in partial/ recursively
    }
    # --- End Configuration ---

    print("--- Function Renaming Script ---")
    print(f"This script will attempt to replace function names in your project files.")
    print(f"Rename rules will be read from: '{ida_output_file}'")
    print(f"Target directories and file types:")
    for dir_path, exts in target_dirs.items():
        print(f"  - Directory: '{dir_path}/' for files ending with: {', '.join(exts)}")
    
    print("\nIMPORTANT: This script modifies files IN PLACE.")
    print("It is STRONGLY recommended to:")
    print("  1. Back up your project OR")
    print("  2. Use a version control system (like Git) and commit your changes before running.")
    
    # Perform some pre-checks
    if not os.path.exists(ida_output_file):
        print(f"\nCRITICAL ERROR: The rename file '{ida_output_file}' was not found.")
        print("Please ensure this file exists in the specified location.")
        sys.exit(1)

    found_any_target_dir = False
    for t_dir in target_dirs.keys():
        if os.path.isdir(t_dir):
            found_any_target_dir = True
        else:
            print(f"Warning: Target directory '{t_dir}/' not found. It will be skipped.")
    
    if not found_any_target_dir:
        print("Warning: None of the specified target directories were found. No files will be processed.")
        # Allow to proceed if user still wants to (e.g., if rename list is empty or for testing)

    user_confirmation = input("\nDo you want to proceed with the replacements? (yes/no): ").strip().lower()

    if user_confirmation != 'yes':
        print("Operation cancelled by the user.")
        sys.exit(0)

    print("\nLoading rename rules...")
    renames_list = parse_ida_renames(ida_output_file)

    if renames_list:
        print(f"Successfully loaded {len(renames_list)} rename rules.")
        process_files(renames_list, target_dirs)
    elif not renames_list and os.path.exists(ida_output_file): # File exists but was empty or all lines malformed
        print("Rename file was parsed, but no valid rename rules were found.")
    # If renames_list is None, parse_ida_renames already printed an error and exited.

    print("\nScript finished.")

if __name__ == "__main__":
    main()