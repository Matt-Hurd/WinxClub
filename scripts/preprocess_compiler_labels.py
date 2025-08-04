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

    # Regex to find a label definition, e.g., "|L.40|" at the start of a line.
    label_def_regex = re.compile(r'^\|L(\d+)\.(\d+)\|$', re.IGNORECASE)
    
    # Regex to find a reference to a label, e.g., "bne |L.40|".
    label_ref_regex = re.compile(r'\|L(\d+)\.(\d+)\|', re.IGNORECASE)

    new_lines = []
    modifications_made = False

    for line in lines:
        original_line = line
        
        # Check for a label definition on this line
        def_match = label_def_regex.match(line)
        if def_match:
            label_num = def_match.group(2)
            # Replace the entire line with just the number
            line = f"{label_num}\n"
        else:
            # If it's not a definition, check for references
            # Use a lambda to perform the replacement for all matches on the line
            line = label_ref_regex.sub(lambda m: f"%{m.group(2)}", line)

        new_lines.append(line)
        if original_line != line:
            modifications_made = True

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
