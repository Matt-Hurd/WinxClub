#!/usr/bin/env python3
"""Generate scatter_script.txt (and, later, headers) from config/symbols.yml.

Three directions:

    python scripts/gen.py --extract    asm/, data/, scatter_script.txt, ELF -> config/symbols.yml
    python scripts/gen.py              config/symbols.yml -> scatter_script.txt, include/generated/
    python scripts/gen.py --check      generate and diff, touching nothing
    python scripts/gen.py --link-order OBJ...   sort an object list into link order

symbols.yml is the source of record for three things the repo currently keeps by
hand: the scatter script's layout (regions and link order), every function's
address and instruction set, and every data symbol's address and size.

A function or global may also carry a `decl:` -- the C declaration of it, minus
the `extern` and the semicolon. That field is hand-written, not extracted, and
`--extract` carries it across by (addr, name). Every symbol that has one is
emitted into include/generated/functions.h or globals.h, so a src/ file can
include those instead of retyping the `extern` itself. A symbol with no `decl:`
is simply absent from the headers: ADS warns on an unprototyped call and there
is no honest signature to invent.

ARM-vs-Thumb is deliberately not expressed in the headers. ADS 1.2 has no
declaration qualifier for it -- `__arm` is a predefined macro equal to 1, not a
keyword -- and under `-apcs /interwork` a call to either mode compiles to the
same `BL`, with armlink inserting a veneer if one is needed. `isa` therefore
stays a fact about the asm, not something a caller declares.

The layout half stores each object line's selector verbatim ("(+RO-CODE)",
"(__VTABLE__*)", ...). The generator is a pure formatter: it never rewrites a
selector, so it cannot change what armlink places where.

Addresses are stored as written, not as integers, because armlink's scatter
file is compared byte for byte against the committed one and the repo spells
some bases with 7 hex digits and some with 8.
"""

import argparse
import difflib
import glob
import os
import re
import sys

import yaml

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SCATTER = os.path.join(REPO, "scatter_script.txt")
SYMBOLS = os.path.join(REPO, "config", "symbols.yml")
ELF = os.path.join(REPO, "winxclub.elf")
GENDIR = os.path.join(REPO, "include", "generated")

# ---------------------------------------------------------------- scatter i/o

RE_LOAD = re.compile(r"^(\S+)\s+(\S+)\s*$")
RE_REGION = re.compile(r"^\s{4}(\S+)\s+(\S+)(?:\s+(\S+))?\s*$")
RE_OBJECT = re.compile(r"^\s{8}(\S+?)(\s*\(.*\))?\s*$")


def parse_scatter(path):
    """scatter_script.txt -> [{load, base, regions: [{name, base, size, objects}]}]"""
    loads = []
    depth = 0
    with open(path) as fh:
        for lineno, raw in enumerate(fh, 1):
            line = raw.rstrip("\n")
            if not line.strip():
                continue
            if line.strip() == "{":
                depth += 1
                continue
            if line.strip() == "}":
                depth -= 1
                continue
            if depth == 0:
                m = RE_LOAD.match(line)
                if not m:
                    sys.exit(f"{path}:{lineno}: unparsed load region: {line!r}")
                loads.append({"load": m.group(1), "base": m.group(2), "regions": []})
            elif depth == 1:
                m = RE_REGION.match(line)
                if not m:
                    sys.exit(f"{path}:{lineno}: unparsed region: {line!r}")
                region = {"name": m.group(1), "base": m.group(2)}
                if m.group(3):
                    region["size"] = m.group(3)
                region["objects"] = []
                loads[-1]["regions"].append(region)
            elif depth == 2:
                m = RE_OBJECT.match(line)
                if not m:
                    sys.exit(f"{path}:{lineno}: unparsed object: {line!r}")
                entry = {"obj": m.group(1)}
                if m.group(2):
                    entry["sel"] = m.group(2)
                loads[-1]["regions"][-1]["objects"].append(entry)
            else:
                sys.exit(f"{path}:{lineno}: unexpected nesting depth {depth}")
    return loads


def emit_scatter(loads):
    """The inverse of parse_scatter, canonically formatted."""
    out = []
    for i, load in enumerate(loads):
        if i:
            out.append("")
        out.append(f"{load['load']} {load['base']}")
        out.append("{")
        for j, region in enumerate(load["regions"]):
            if j:
                out.append("")
            head = f"    {region['name']} {region['base']}"
            if region.get("size"):
                head += f" {region['size']}"
            out.append(head)
            out.append("    {")
            for entry in region["objects"]:
                out.append("        " + entry["obj"] + entry.get("sel", ""))
            out.append("    }")
        out.append("}")
    return "\n".join(out) + "\n"


# ---------------------------------------------------------------- asm symbols

# ALIGN 2, 0 is a halfword align, which Thumb code already satisfies, so
# thumb_func_start and non_word_aligned_thumb_func_start emit identical bytes
# (verified both directions against make check). The macro a function is
# declared with is therefore presentation, and only the instruction set is
# recorded here; the generator picks the macro back from the address.
MACRO_ISA = {
    "arm_func_start": "arm",
    "thumb_func_start": "thumb",
    "non_word_aligned_thumb_func_start": "thumb",
}
RE_FUNC = re.compile(r"^\s*(%s)\s+(\S+)" % "|".join(MACRO_ISA))


def asm_units():
    """Every hand-written asm file that defines functions, in a stable order."""
    units = sorted(glob.glob(os.path.join(REPO, "asm", "split", "*.s")))
    units += sorted(glob.glob(os.path.join(REPO, "asm", "*.s")))
    return units


def parse_asm(path):
    out = []
    with open(path) as fh:
        for line in fh:
            m = RE_FUNC.match(line)
            if m:
                out.append((m.group(2), MACRO_ISA[m.group(1)]))
    return out


RE_GLOBAL = re.compile(r"^\s*GLOBAL\s+(\S+)")


def data_units():
    """The hand-written asm that defines data symbols, in a stable order."""
    return sorted(glob.glob(os.path.join(REPO, "data", "*.s")))


def parse_asm_globals(path):
    """The GLOBAL directives in a data file, in the order they are written."""
    out = []
    with open(path) as fh:
        for line in fh:
            m = RE_GLOBAL.match(line)
            if m:
                out.append(m.group(1))
    return out


def elf_symbols(path, kind):
    """name -> [(address, size)], for symbols of one ELF type.

    ADS armlink does not set the Thumb bit in st_value (all 116 ARM functions
    agree with the low bit, all 1273 Thumb ones do not), so the instruction set
    cannot be read back from the ELF and comes from the asm macro instead.
    """
    from elftools.elf.elffile import ELFFile

    syms = {}
    with open(path, "rb") as fh:
        symtab = ELFFile(fh).get_section_by_name(".symtab")
        for sym in symtab.iter_symbols():
            if sym.entry.st_info.type != kind:
                continue
            syms.setdefault(sym.name, []).append(
                (sym.entry.st_value, sym.entry.st_size)
            )
    return syms


def elf_addresses(path):
    return {n: [a for a, _ in v] for n, v in elf_symbols(path, "STT_FUNC").items()}


def extract_functions():
    if not os.path.exists(ELF):
        sys.exit(f"{ELF} not found: run make first, addresses come from the link")
    addrs = elf_addresses(ELF)
    functions, problems = [], []
    for path in asm_units():
        unit = os.path.relpath(path, REPO)
        for name, isa in parse_asm(path):
            found = addrs.get(name)
            if not found:
                problems.append(f"{unit}: {name} is not in the ELF")
                continue
            if len(found) > 1:
                # A name defined in two units: keep them apart by address, and
                # say so, because a symbol table keyed on name alone would lose
                # one of them silently.
                problems.append(
                    "%s: %s is defined %d times (%s)"
                    % (unit, name, len(found), ", ".join(hex(a) for a in found))
                )
            addr = found.pop(0)
            functions.append(
                {"addr": "0x%08X" % addr, "isa": isa, "unit": unit, "name": name}
            )
    functions.sort(key=lambda f: int(f["addr"], 16))
    return functions, problems


def extract_globals():
    """One entry per GLOBAL in data/, with the address from the link.

    Seventeen of the 198 are STT_FUNC, not STT_OBJECT: data files declare a few
    code symbols GLOBAL. They are recorded with kind: func so that globals.h
    never invents an object declaration for a function.

    Size is not recorded. armasm writes st_size 0 for every one of the 181
    objects -- it emits no size for a data label -- so a size field here would
    be 181 zeros pretending to be measurements. Extent has to come from the
    next symbol's address, or from a hand-written decl.
    """
    objects = elf_symbols(ELF, "STT_OBJECT")
    funcs = elf_symbols(ELF, "STT_FUNC")
    globals_, problems = [], []
    for path in data_units():
        unit = os.path.relpath(path, REPO)
        for name in parse_asm_globals(path):
            kind = "object" if name in objects else "func"
            found = (objects if kind == "object" else funcs).get(name)
            if not found:
                problems.append(f"{unit}: {name} is not in the ELF")
                continue
            if len(found) > 1:
                problems.append(
                    "%s: %s is defined %d times (%s)"
                    % (unit, name, len(found), ", ".join(hex(a) for a, _ in found))
                )
            addr, _ = found.pop(0)
            globals_.append(
                {"addr": "0x%08X" % addr, "kind": kind, "unit": unit, "name": name}
            )
    globals_.sort(key=lambda g: int(g["addr"], 16))
    return globals_, problems


def carry_decls(entries, previous):
    """Re-apply the hand-written `decl:` fields that --extract would otherwise drop."""
    keep = {(e["addr"], e["name"]): e["decl"] for e in previous if e.get("decl")}
    kept = 0
    for e in entries:
        decl = keep.pop((e["addr"], e["name"]), None)
        if decl:
            e["decl"] = decl
            kept += 1
    return kept, sorted(keep)


# ------------------------------------------------------------------- headers

def emit_header(stem, blurb, entries):
    """The declared symbols of one kind, in address order, one `extern` each."""
    guard = "GUARD_GENERATED_%s_H" % stem.upper()
    out = ["/* Generated by scripts/gen.py from config/symbols.yml. Do not edit.", " *"]
    out += [(" * " + l).rstrip() for l in blurb.splitlines()]
    out += [" */", "#ifndef " + guard, "#define " + guard, "",
            "#ifdef __cplusplus", 'extern "C" {', "#endif"]
    unit = None
    for e in entries:
        if e["unit"] != unit:
            unit = e["unit"]
            out += ["", "/* %s */" % unit]
        out.append("extern %s; /* %s */" % (e["decl"], e["addr"]))
    out += ["", "#ifdef __cplusplus", "}", "#endif", "",
            "#endif /* %s */" % guard, ""]
    return "\n".join(out)


def declared(entries):
    return [e for e in entries if e.get("decl")]


def generated_headers(symbols):
    """path -> contents, for every header gen.py owns."""
    return {
        os.path.join(GENDIR, "functions.h"): emit_header(
            "functions",
            "ROM functions whose signature is known. A function is listed here\n"
            "once someone has typed its declaration into config/symbols.yml;\n"
            "the rest are deliberately absent, not forgotten: ADS warns on an\n"
            "unprototyped call and there is no honest signature to invent.",
            declared(symbols.get("functions") or []),
        ),
        os.path.join(GENDIR, "globals.h"): emit_header(
            "globals",
            "Data symbols whose type is known. Symbols that a hand-written\n"
            "include/*.hpp already declares with a class type are left to it,\n"
            "so that the two declarations can never disagree.",
            declared(symbols.get("globals") or []),
        ),
    }


# -------------------------------------------------------------------- drivers


def do_extract():
    loads = parse_scatter(SCATTER)
    functions, problems = extract_functions()
    globals_, gproblems = extract_globals()
    for p in problems + gproblems:
        print("note:", p, file=sys.stderr)

    previous = load_symbols() if os.path.exists(SYMBOLS) else {}
    kept = 0
    for entries, key in ((functions, "functions"), (globals_, "globals")):
        n, lost = carry_decls(entries, previous.get(key) or [])
        kept += n
        for addr, name in lost:
            print(f"note: dropped decl for {name} at {addr}, no longer in {key}",
                  file=sys.stderr)

    os.makedirs(os.path.dirname(SYMBOLS), exist_ok=True)
    with open(SYMBOLS, "w") as fh:
        fh.write(
            "# Written by scripts/gen.py --extract. The source of record for the\n"
            "# scatter script's layout, for each function's address and instruction\n"
            "# set, and for each data symbol's address and size. Regenerate the\n"
            "# scatter and include/generated/ with: python scripts/gen.py\n"
            "#\n"
            "# layout    - regions in link order; 'sel' is armlink's section\n"
            "#             selector, kept verbatim so the generator only formats.\n"
            "# functions - one per asm function, sorted by address. 'addr' is from\n"
            "#             the link, 'isa' from the declaring macro.\n"
            "# globals   - one per GLOBAL in data/, sorted by address. No size:\n"
            "#             armasm emits none for a data label.\n"
            "#\n"
            "# 'decl' is the one hand-written field: the C declaration of that\n"
            "# symbol, minus 'extern' and the semicolon. --extract carries it\n"
            "# across by (addr, name); everything else it overwrites. Symbols with\n"
            "# a decl are what include/generated/*.h declares.\n"
        )
        yaml.safe_dump(
            {"layout": loads, "functions": functions, "globals": globals_},
            fh,
            sort_keys=False,
            default_flow_style=False,
            width=100,
        )
    nobj = sum(len(r["objects"]) for l in loads for r in l["regions"])
    nreg = sum(len(l["regions"]) for l in loads)
    print(
        f"config/symbols.yml: {nreg} regions, {nobj} object lines, "
        f"{len(functions)} functions, {len(globals_)} globals, {kept} decls"
    )


def load_symbols():
    with open(SYMBOLS) as fh:
        return yaml.safe_load(fh)


def write_or_diff(path, text, check_only):
    """Write one generated file, or diff it and report whether it is stale."""
    rel = os.path.relpath(path, REPO)
    current = open(path).read() if os.path.exists(path) else ""
    if text == current:
        print(f"{rel}: unchanged")
        return 0
    if check_only:
        sys.stdout.writelines(difflib.unified_diff(
            current.splitlines(True), text.splitlines(True), rel, "generated",
        ))
        return 1
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w") as fh:
        fh.write(text)
    print(f"{rel}: rewritten")
    return 0


def do_generate(check_only):
    symbols = load_symbols()
    outputs = {SCATTER: emit_scatter(symbols["layout"])}
    outputs.update(generated_headers(symbols))
    stale = 0
    for path, text in outputs.items():
        stale |= write_or_diff(path, text, check_only)
    return stale


def link_order(layout):
    """Object name -> position, from the layout's first mention of each.

    An object may be named by several region lines -- the 21 hand-added `+0`
    sub-regions pin a class's code apart from its vtable -- so only the first
    counts. `*` lines are not objects and are skipped.
    """
    order = {}
    for load in layout:
        for region in load["regions"]:
            for obj in region["objects"]:
                name = obj["obj"]
                if name.endswith(".o") and name not in order:
                    order[name] = len(order)
    return order


def do_link_order(paths):
    """Sort the Makefile's object list into link order.

    armlink takes link order from its command line, not from the scatter, and
    the Makefile builds that list with wildcards, so it arrives in directory
    order and has to be re-sorted. An object the layout does not name goes
    last, in path order: today that is asm/custom_constructor_table.o and
    src/UnknownObj.cpp's object, both placed by the `* (CppInitializationVector)`
    wildcard rather than by name, and both already last under the old sort.
    """
    order = link_order(load_symbols()["layout"])

    def key(path):
        i = order.get(os.path.basename(path))
        return (0, i, "") if i is not None else (1, 0, path)

    print(" ".join(sorted(paths, key=key)))
    return 0


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--extract", action="store_true",
                    help="rebuild config/symbols.yml from asm/, data/, the scatter and the ELF")
    ap.add_argument("--check", action="store_true",
                    help="diff the generated files against the committed ones")
    ap.add_argument("--link-order", nargs="*", metavar="OBJ", default=None,
                    help="print these object paths in link order, space-separated")
    args = ap.parse_args()
    if args.link_order is not None:
        return do_link_order(args.link_order)
    if args.extract:
        do_extract()
        return 0
    return do_generate(args.check)


if __name__ == "__main__":
    sys.exit(main())
