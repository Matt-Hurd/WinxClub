"""Build one partly-decompiled translation unit, for the Makefile's partial/ hook.

    python scripts/merge_partial_c.py <yml> <partial dir> <partial builddir> \
        <merged builddir> <tcc> <cc1flags> <include dir> <this script> [<tcpp>]

One `partial/**/<unit>.yml` becomes one `<merged builddir>/**/<unit>.s`, which
the Makefile then runs preprocess_compiler_labels.py over and assembles. The
object keeps the yml's name, so the scatter script places it exactly where
asm/split/<unit>.s used to go.

There are two shapes, told apart by whether a hand-maintained `<unit>.s` sits
next to the yml.

Without one, the unit is spliced from asm/nonmatching/<unit>/ by
scripts/splice_unit.py -- the piece per function that scripts/split_units.py
cut, with the compiled functions coming from the compiler instead. Every field
is inferred from the yml's own name, so the yml may be empty and the whole cost
of a unit is writing its source:

    partial/split_800B154.c     the C (or split_803490C.cpp: the C++)
    partial/split_800B154.yml   empty -- the Makefile globs *.yml to find units

    unit:      split_800B154        <- the yml's basename
    source:    partial/split_800B154.c   <- the .c or .cpp beside it
    functions: [CallSoftReset]      <- whatever the compiled source defines

Any of the three may still be written out to override the inference. Spelling
`functions:` is the one worth doing by hand: it then has to agree with what the
source defines, so a function silently gained or renamed is an error rather
than a quietly different unit.

The source's extension picks the compiler: `.c` goes through tcc, `.cpp`
through tcpp with the same flags (the Makefile's CC1FLAGS and CPPFLAGS are
identical). A `.cpp` is for a member of one of the vtable classes in include/:
`void Boss::m10()` compiles to `m10__4BossFv`, which the label pass renames to
the working label the vtable and the asm already use (`Boss__10`), so the
splice sees the same name it would from C. tcpp emits no vtable for a unit that
only defines a method -- that stays with the constructor in src/<Class>.cpp.
A unit with both a .c and a .cpp beside its yml is an error, not a choice.

The Makefile hands over tcc's path and not tcpp's; without a ninth argument the
C++ compiler is taken to be `tcpp` in tcc's directory, which is where ADS puts it.

With a `<unit>.s` beside it, the yml is the older shape, kept for split_80239EC:
that `.s` holds whatever was not decompiled and `<unit>.c` holds the first
function. That unit has no asm/split/ file left to cut up, so it cannot be
spliced; merge_asm_files below is its build, unchanged.
"""

import os
import subprocess
import sys

import yaml

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import asmfix
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


def write_manifest(output_file, names):
    """Record which of a merged unit's functions came from the compiler.

    A merged unit is part compiled and part assembly, and nothing in the object
    says which is which -- so scripts/calcrom.py would credit the whole object as
    matched on the strength of the yml alone. This is the list it needs, written
    beside the merged `.s` it describes so a stale one cannot outlive its build.
    """
    with open(output_file + ".functions", "w") as fh:
        fh.write("".join(f"{name}\n" for name in sorted(names)))


def compiler_for(source, tcc, tcpp=None):
    """tcc for a .c, tcpp for a .cpp: the source's extension is the whole rule."""
    ext = os.path.splitext(source)[1]
    if ext == ".c":
        return tcc
    if ext == ".cpp":
        return tcpp or os.path.join(os.path.dirname(tcc), "tcpp")
    raise splice_unit.SpliceError(f"{source}: not a .c or a .cpp")


def find_source(yml_dir, base_name):
    """The .c or .cpp beside the yml, or None. Both is an error."""
    found = [os.path.join(yml_dir, base_name + ext) for ext in (".c", ".cpp")
             if os.path.exists(os.path.join(yml_dir, base_name + ext))]
    if len(found) > 1:
        raise splice_unit.SpliceError(
            f"{base_name}: both {' and '.join(os.path.basename(f) for f in found)} "
            f"beside the yml; keep one")
    return found[0] if found else None


def compile_c(cc, cc1flags, include_dir, c_file, s_file, labels=False):
    """Compile the source to asm, the same way the Makefile compiles src/.

    `cc` is tcc or tcpp, chosen by compiler_for from the source's extension.

    With `labels`, the label pass runs here, before the splice, rather than only
    on the merged file afterwards. Raw tcc output spells a branch target and a
    literal-pool entry the same way -- `|L1.12|` for a `BEQ`, `|L1.28|` for an
    `LDR` -- so a splice of raw output cannot tell a function that branches from
    one that needs the pool, and cannot renumber its local labels off the unit's.
    The pass is idempotent, so the Makefile running it again over the merged unit
    is a no-op.

    The passes run with an empty pool record: a partial compile's pool is never
    the unit's, so its entries must not take the unit's addresses. They keep
    the pass's own _pool_1_N_<off> names, and the splice moves each load onto
    the unit's word with the same value.

    merge_asm_files wants the raw output instead: it finds the pool by the `DATA`
    marker on the pool label's line, which the pass rewrites away.
    """
    cmd = f"{cc} {cc1flags} -I {include_dir} -o {s_file} {c_file}"
    print(cmd)
    subprocess.run(cmd, check=True, shell=True)
    if labels:
        config = dict(asmfix.load_config(), pools={})
        asmfix.fix_file(s_file, config)


def splice(yml_file, spec, built_s, output_file):
    """Write the merged unit from asm/nonmatching/<unit>/ and the compiled asm."""
    unit = spec["unit"]
    pieces = splice_unit.read_unit(unit)
    bodies, imports, pool = splice_unit.compiler_output(open(built_s).read())
    wanted = spec.get("functions")
    if wanted is None:
        # Not spelled out: every function the C defines is one the unit gives up
        # to the compiler. splice() still rejects a name the unit does not hold,
        # so a typo in the C is an error here rather than a silent no-op.
        wanted = sorted(bodies)
    else:
        absent = [name for name in wanted if name not in bodies]
        if absent:
            raise splice_unit.SpliceError(
                f"{yml_file}: {spec['source']} does not define {', '.join(absent)}")
        extra = [name for name in bodies if name not in wanted]
        if extra:
            raise splice_unit.SpliceError(
                f"{yml_file}: {spec['source']} also defines {', '.join(sorted(extra))}, "
                f"which the yml does not list")
    if not wanted:
        raise splice_unit.SpliceError(
            f"{yml_file}: {spec['source']} defines no function to splice in")
    order = splice_unit.unit_order(unit, pieces)
    text = splice_unit.splice(unit, order, pieces,
                              {name: bodies[name] for name in wanted}, imports, pool)
    with open(output_file, "w") as fh:
        fh.write(text)
    write_manifest(output_file, wanted)


def main(yml_file, partial_decomp_subdir, partial_decomp_builddir, merged_builddir, tcc, cc1flags, include_dir, merge_script, tcpp=None):
    base_name = os.path.splitext(os.path.basename(yml_file))[0]
    rel_dir = os.path.relpath(os.path.dirname(yml_file), start=partial_decomp_subdir)
    target_dir = os.path.join(partial_decomp_builddir, rel_dir)
    output_dir = os.path.join(merged_builddir, rel_dir)

    os.makedirs(target_dir, exist_ok=True)
    os.makedirs(output_dir, exist_ok=True)

    s_file_in_partial = os.path.join(os.path.dirname(yml_file), base_name + '.s')
    s_file_in_build = os.path.join(target_dir, base_name + '.s')
    output_file = os.path.join(output_dir, base_name + '.s')
    c_file = find_source(os.path.dirname(yml_file), base_name)

    with open(yml_file) as fh:
        spec = yaml.safe_load(fh) or {}

    # The hand-maintained <unit>.s, not an empty yml, is what marks the older
    # shape: a spliced unit takes its asm from asm/nonmatching/<unit>/ and so
    # never has one, which leaves the yml free to be empty.
    if os.path.exists(s_file_in_partial):
        if c_file is not None:
            compile_c(compiler_for(c_file, tcc, tcpp), cc1flags, include_dir, c_file, s_file_in_build)
            merge_asm_files(s_file_in_partial, s_file_in_build, output_file)
            # merge_asm_files takes everything the compiler emitted up to the
            # pool, so the compiled side is exactly what the .c defines.
            bodies, _, _ = splice_unit.compiler_output(open(s_file_in_build).read())
            write_manifest(output_file, bodies)
        return

    spec.setdefault("unit", base_name)
    if "source" not in spec:
        if c_file is None:
            raise splice_unit.SpliceError(
                f"{yml_file}: no {base_name}.c or {base_name}.cpp beside it to compile, "
                f"and no {os.path.relpath(s_file_in_partial, start=splice_unit.REPO)} to merge")
        spec["source"] = os.path.relpath(c_file, start=splice_unit.REPO)
    source = os.path.join(splice_unit.REPO, spec["source"])
    if not os.path.exists(source):
        raise splice_unit.SpliceError(f"{yml_file}: no {spec['source']} to compile")
    compile_c(compiler_for(source, tcc, tcpp), cc1flags, include_dir, source,
              s_file_in_build, labels=True)
    splice(yml_file, spec, s_file_in_build, output_file)

if __name__ == "__main__":
    try:
        main(*sys.argv[1:])
    except splice_unit.SpliceError as exc:
        sys.exit(f"merge_partial_c: {exc}")
