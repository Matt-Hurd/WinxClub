import os
import subprocess
import glob
import re # Import regular expressions module

def get_functions_from_object_file(obj_file):
    """
    Extracts function names from an object file using the 'nm' command,
    filtering out special symbols like "$<char>".

    Args:
        obj_file (str): The path to the .o file.

    Returns:
        list: A list of filtered function names.
    """
    functions = []
    try:
        result = subprocess.run(
            ['nm', '-C', '--defined-only', obj_file],
            capture_output=True,
            text=True,
            check=True,
            errors='replace' # Handle potential decoding errors in nm output
        )
        output_lines = result.stdout.splitlines()
        for line in output_lines:
            parts = line.split()
            if len(parts) >= 3:
                symbol_type = parts[1]
                if symbol_type.upper() == 'T': # 'T' for global, 't' for local text/code
                    function_name = " ".join(parts[2:])

                    # Filter out symbols like "$a", "$b", "$x", etc.
                    # and also common linker-generated symbols that start with ".$" or "_$_"
                    # and symbols that are just "$"
                    if len(function_name) == 2 and function_name.startswith("$"):
                        continue # Skip this symbol
                    if function_name.startswith("$_") or function_name.startswith(".$"): # Common pattern for internal/generated symbols
                        continue
                    if function_name == "$":
                        continue
                    # More robust regex for common special/internal symbols might be:
                    # if re.match(r"^\$.?$", function_name) or \
                    #    re.match(r"^(?:SUB|L).*?\$\$.*$", function_name) or \
                    #    function_name.startswith("_GLOBAL__sub_I_") or \
                    #    function_name.startswith("__static_initialization_and_destruction_0"):
                    #     continue
                    # For now, keeping the specific "$<char>" filter and some common ones

                    functions.append(function_name)
    except subprocess.CalledProcessError as e:
        print(f"Error processing file {obj_file} with nm: {e}")
        if e.stderr:
            print(f"nm stderr: {e.stderr}")
    except FileNotFoundError:
        print("Error: 'nm' command not found. Please ensure it's installed and in your PATH.")
        return None # Indicate critical error
    return functions

def main():
    output_filename = "function_list.txt"
    # Use the directory provided by the user if any, otherwise current directory
    # For this example, we'll stick to the current directory.
    # To make it more flexible, you could add an argument for the directory.
    # e.g., object_files = sorted(glob.glob(os.path.join(target_directory, "*.o")))
    object_files = sorted(glob.glob("c_t__un.l/*.o"))

    if not object_files:
        print("No .o files found in the current directory.")
        return

    all_output_lines = []
    found_any_functions = False

    for obj_file in object_files:
        functions = get_functions_from_object_file(obj_file)

        if functions is None: # Critical error like nm not found
            return

        if functions: # Only add file header if there are functions to list
            all_output_lines.append(f"{obj_file}:\n")
            for func_name in functions:
                all_output_lines.append(f"\t{func_name}\n")
            all_output_lines.append("\n") # Blank line between .o file entries
            found_any_functions = True
        elif not functions and os.path.exists(obj_file): # File exists but no functions (or all filtered)
            # Optionally, you can still list the file with no functions:
            # all_output_lines.append(f"{obj_file}:\n")
            # all_output_lines.append("\n")
            print(f"No qualifying functions found in {obj_file} or all were filtered.")


    if not found_any_functions and object_files:
        print("No qualifying functions found in any .o files or all were filtered.")
        # Create an empty file or a file with a message if desired
        # For now, it will create an empty file if all_output_lines is empty.
        # If you want a message in the file:
        # if not all_output_lines:
        #     all_output_lines.append("No qualifying functions found in any .o files or all were filtered.\n")


    try:
        with open(output_filename, "w") as f:
            if all_output_lines:
                f.writelines(all_output_lines)
                print(f"Successfully wrote function list to {output_filename}")
            elif not object_files: # This case handled above
                pass
            else: # .o files were found but no functions passed the filter
                f.write("No qualifying functions found in any .o files or all were filtered.\n")
                print(f"Wrote a message to {output_filename} as no functions passed the filters.")

    except IOError as e:
        print(f"Error writing to file {output_filename}: {e}")

if __name__ == "__main__":
    main()
