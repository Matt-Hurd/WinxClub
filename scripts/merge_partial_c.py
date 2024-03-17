import re
import sys

def merge_asm_files(source_path, built_path, output_path):
    with open(source_path, 'r') as file:
        source_lines = file.readlines()
    with open(built_path, 'r') as file:
        built_lines = file.readlines()

    # Process INCLUDE from source
    include_lines = [line for line in source_lines if line.strip().startswith('INCLUDE')]

    # Process IMPORTs, ensuring uniqueness
    import_lines = list(set([line for line in source_lines + built_lines if line.strip().startswith('IMPORT')]))
    import_lines.sort()

    # Process EXPORTs, ensuring uniqueness
    export_lines = list(set([line for line in source_lines + built_lines if line.strip().startswith('EXPORT')]))
    export_lines.sort()

    # Process functions, ignoring DATA in built
    function_lines_source = [line for line in source_lines if not line.strip().startswith(('INCLUDE', 'IMPORT', 'DATA', 'AREA', 'ENDP', 'EXPORT'))]

    data_label = None
    built_function_lines = []
    inside = False
    for line in built_lines:
        if 'CODE16' in line:
            inside = True
        if 'DATA' in line:
            data_label = line.split(' ')[0]
            if 'DCW' in built_function_lines[-1]:
                built_function_lines = built_function_lines[:-1]
            break
        if inside:
            built_function_lines.append(line)

    data_lines = [line for line in source_lines if 'DCDU' in line]
    new_data_label = data_lines[0].split(' ')[0]

    built_function_lines = list(map(lambda st: str.replace(st, data_label, new_data_label), built_function_lines))
    
    # Combine all pieces
    output_lines = include_lines + ['\n'] + import_lines + ['\n'] + export_lines + ['\n'] + built_function_lines + ['   ENDP\n'] + function_lines_source

    # Write to output file
    with open(output_path, 'w') as file:
        file.writelines(output_lines)

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: merge_asm.py <source_file> <built_file> <output_file>")
        sys.exit(1)

    merge_asm_files(sys.argv[1], sys.argv[2], sys.argv[3])
