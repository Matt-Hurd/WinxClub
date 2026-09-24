"""Build one partly-decompiled translation unit, for the Makefile's partial/ hook.

    python scripts/merge_partial_c.py <yml> <partial dir> <partial builddir> \
        <merged builddir> <tcc> <cc1flags> <include dir> <this script>

One `partial/**/<unit>.yml` becomes one `<merged builddir>/**/<unit>.s`, which
the Makefile then runs preprocess_compiler_labels.py over and assembles. The
object keeps the yml's name, so the scatter script places it exactly where
asm/split/<unit>.s used to go.

There are two shapes, told apart by whether the yml has anything in it.

A yml with content is a unit spliced from asm/nonmatching/<unit>/ by
scripts/splice_unit.py -- the piece per function that scripts/split_units.py
cut, with the named functions coming from the compiler instead:

    unit: split_800B154
    source: partial/split_800B154.c
    functions: [CallSoftReset]

An empty yml is the older shape, kept for split_80239EC: a hand-maintained
`<unit>.s` sitting next to the yml holding whatever was not decompiled, and a
`<unit>.c` holding the first function. That unit has no asm/split/ file left to
cut up, so it cannot be spliced; merge_asm_files below is its build, unchanged.
"""

import os
import subprocess
import sys

import yaml

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import splice_unit


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


def compile_c(tcc, cc1flags, include_dir, c_file, s_file):
    """tcc the C file to asm, the same way the Makefile compiles src/."""
    cmd = f"{tcc} {cc1flags} -I {include_dir} -o {s_file} {c_file}"
    print(cmd)
    subprocess.run(cmd, check=True, shell=True)


def splice(yml_file, spec, built_s, output_file):
    """Write the merged unit from asm/nonmatching/<unit>/ and the compiled asm."""
    unit = spec["unit"]
    wanted = spec.get("functions") or []
    pieces = splice_unit.read_unit(unit)
    bodies, imports = splice_unit.compiler_output(open(built_s).read())
    absent = [name for name in wanted if name not in bodies]
    if absent:
        raise splice_unit.SpliceError(
            f"{yml_file}: {spec['source']} does not define {', '.join(absent)}")
    extra = [name for name in bodies if name not in wanted]
    if extra:
        raise splice_unit.SpliceError(
            f"{yml_file}: {spec['source']} also defines {', '.join(sorted(extra))}, "
            f"which the yml does not list")
    order = splice_unit.unit_order(unit, pieces)
    text = splice_unit.splice(unit, order, pieces,
                              {name: bodies[name] for name in wanted}, imports)
    with open(output_file, "w") as fh:
        fh.write(text)


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

    with open(yml_file) as fh:
        spec = yaml.safe_load(fh)

    if spec:
        compile_c(tcc, cc1flags, include_dir,
                  os.path.join(splice_unit.REPO, spec["source"]), s_file_in_build)
        splice(yml_file, spec, s_file_in_build, output_file)
        return

    if os.path.exists(c_file):
        compile_c(tcc, cc1flags, include_dir, c_file, s_file_in_build)
        merge_asm_files(s_file_in_partial, s_file_in_build, output_file)

if __name__ == "__main__":
    try:
        main(*sys.argv[1:])
    except splice_unit.SpliceError as exc:
        sys.exit(f"merge_partial_c: {exc}")
