import os
import re
import struct

def create_vtable_files(input_asm_file, output_dir):
    """
    Parses a large assembly file containing multiple vtables, reads the
    corresponding binary files, and creates individual assembly files for each
    vtable using DCD directives. Files are named sequentially to preserve order.

    Args:
        input_asm_file (str): The path to the input assembly file.
        output_dir (str): The directory to save the new assembly files in.
    """
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
        print(f"Created output directory: {output_dir}")

    try:
        with open(input_asm_file, 'r') as f:
            lines = f.readlines()
    except FileNotFoundError:
        print(f"Error: Input file not found at '{input_asm_file}'")
        return

    # Base directory of the input assembly file, to resolve relative INCBIN paths
    input_base_dir = os.getcwd()

    # Use regular expressions to find the symbol names
    global_regex = re.compile(r'\s+GLOBAL\s+(gUnknown_[0-9A-F]+)')
    label_regex = re.compile(r'^(gUnknown_[0-9A-F]+)')
    incbin_regex = re.compile(r'\s+INCBIN\s+(.*)')

    symbols = []
    incbin_map = {}
    last_label = None

    # First pass: find all GLOBAL symbols, preserving their order
    for line in lines:
        global_match = global_regex.match(line)
        if global_match:
            symbols.append(global_match.group(1))

    # Second pass: associate labels with their following INCBIN directive
    for line in lines:
        label_match = label_regex.match(line)
        if label_match:
            last_label = label_match.group(1)
            continue

        incbin_match = incbin_regex.match(line)
        if incbin_match and last_label:
            incbin_path = incbin_match.group(1).strip()
            incbin_map[last_label] = incbin_path
            last_label = None

    if not symbols:
        print("No GLOBAL symbols found in the specified format.")
        return

    # Third pass: generate a file for each symbol
    file_counter = 0
    for symbol in symbols:
        if symbol not in incbin_map:
            print(f"Warning: No INCBIN path found for symbol {symbol}. Skipping.")
            continue

        incbin_path = incbin_map[symbol]
        bin_file_path = os.path.join(input_base_dir, incbin_path)
        
        dcd_lines = []
        try:
            with open(bin_file_path, 'rb') as f:
                binary_data = f.read()
            
            if len(binary_data) % 4 != 0:
                print(f"Warning: Binary file {bin_file_path} for {symbol} has size {len(binary_data)}, which is not a multiple of 4. Skipping.")
                continue

            # Iterate through the binary data, 4 bytes at a time
            for i in range(0, len(binary_data), 4):
                chunk = binary_data[i:i+4]
                # Unpack the 4 bytes as a little-endian unsigned integer
                value = struct.unpack('<I', chunk)[0]
                dcd_lines.append(f"    DCD     0x{value:08X}")
        
        except FileNotFoundError:
            print(f"Error: Binary file not found at '{bin_file_path}' for symbol {symbol}. Skipping.")
            continue
        except Exception as e:
            print(f"An error occurred while processing {bin_file_path}: {e}")
            continue

        if not dcd_lines:
            print(f"Warning: No data was read from {bin_file_path} for symbol {symbol}. Skipping file creation.")
            continue
            
        dcd_content = "\n".join(dcd_lines)
        # Generate the sequential filename
        output_filename = os.path.join(output_dir, f"vtable{file_counter:02d}.s")
        
        # Create the content for the new assembly file
        content = f"""
    ; This file was auto-generated for the vtable: {symbol}

    AREA data, DATA, READONLY

    ; Export the symbol so the linker can find it
    GLOBAL {symbol}

{symbol}
{dcd_content}

    END
"""
        
        with open(output_filename, 'w') as f:
            f.write(content.strip())
        
        print(f"Successfully created {output_filename} for {symbol} with DCD directives.")
        file_counter += 1

if __name__ == '__main__':
    # --- Configuration ---
    input_file = 'data/mid_data.s' 
    
    # 2. Set the directory where you want the new files to be saved.
    output_directory = 'asm/vtables'

    # --- Run the script ---
    create_vtable_files(input_file, output_directory)
