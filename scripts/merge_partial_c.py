import os
import subprocess
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

def main(yml_file, partial_decomp_subdir, partial_decomp_builddir, merged_builddir, tcc, cc1flags, include_dir, merge_script):
    base_name = os.path.splitext(os.path.basename(yml_file))[0]
    rel_dir = os.path.relpath(os.path.dirname(yml_file), start=partial_decomp_subdir)
    target_dir = os.path.join(partial_decomp_builddir, rel_dir)
    output_dir = os.path.join(merged_builddir, rel_dir)

    os.makedirs(target_dir, exist_ok=True)
    os.makedirs(output_dir, exist_ok=True)

    s_file_in_partial = os.path.join(os.path.dirname(yml_file), base_name + '.s')
    s_file_in_build = os.path.join(target_dir, base_name + '.s')
    output_file = os.path.join(output_dir, base_name + '.s')
    c_file = os.path.join(os.path.dirname(yml_file), base_name + '.c')

    if os.path.exists(c_file):
        compile_cmd = tcc.replace('/', '\\') + " " + f"{cc1flags} -I {include_dir} -o {s_file_in_build} {c_file}"

        subprocess.run(compile_cmd, check=True, shell=True)
        merge_asm_files(s_file_in_partial, s_file_in_build, output_file)

if __name__ == "__main__":
    main(*sys.argv[1:])
