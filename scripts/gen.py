#!/usr/bin/env python3
"""Generate scatter_script.txt (and, later, headers) from config/symbols.yml.

Two directions:

    python scripts/gen.py --extract    asm/, scatter_script.txt, ELF -> config/symbols.yml
    python scripts/gen.py              config/symbols.yml -> scatter_script.txt
    python scripts/gen.py --check      generate and diff, touching nothing

symbols.yml is the source of record for two things the repo currently keeps by
hand: the scatter script's layout (regions and link order) and every function's
address and instruction set.

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


def elf_addresses(path):
    """name -> address, for every function the linker placed.

    ADS armlink does not set the Thumb bit in st_value (all 116 ARM functions
    agree with the low bit, all 1273 Thumb ones do not), so the instruction set
    cannot be read back from the ELF and comes from the asm macro instead.
    """
    from elftools.elf.elffile import ELFFile

    addrs = {}
    with open(path, "rb") as fh:
        symtab = ELFFile(fh).get_section_by_name(".symtab")
        for sym in symtab.iter_symbols():
            if sym.entry.st_info.type != "STT_FUNC":
                continue
            addrs.setdefault(sym.name, []).append(sym.entry.st_value)
    return addrs


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


# -------------------------------------------------------------------- drivers


def do_extract():
    loads = parse_scatter(SCATTER)
    functions, problems = extract_functions()
    for p in problems:
        print("note:", p, file=sys.stderr)
    os.makedirs(os.path.dirname(SYMBOLS), exist_ok=True)
    with open(SYMBOLS, "w") as fh:
        fh.write(
            "# Written by scripts/gen.py --extract. The source of record for the\n"
            "# scatter script's layout and for each function's address and\n"
            "# instruction set. Regenerate the scatter with: python scripts/gen.py\n"
            "#\n"
            "# layout    - regions in link order; 'sel' is armlink's section\n"
            "#             selector, kept verbatim so the generator only formats.\n"
            "# functions - one per asm function, sorted by address. 'addr' is from\n"
            "#             the link, 'isa' from the declaring macro.\n"
        )
        yaml.safe_dump(
            {"layout": loads, "functions": functions},
            fh,
            sort_keys=False,
            default_flow_style=False,
            width=100,
        )
    nobj = sum(len(r["objects"]) for l in loads for r in l["regions"])
    nreg = sum(len(l["regions"]) for l in loads)
    print(
        f"config/symbols.yml: {nreg} regions, {nobj} object lines, "
        f"{len(functions)} functions"
    )


def load_symbols():
    with open(SYMBOLS) as fh:
        return yaml.safe_load(fh)


def do_generate(check_only):
    text = emit_scatter(load_symbols()["layout"])
    with open(SCATTER) as fh:
        current = fh.read()
    if text == current:
        print("scatter_script.txt: unchanged")
        return 0
    if check_only:
        diff = difflib.unified_diff(
            current.splitlines(True), text.splitlines(True),
            "scatter_script.txt", "generated",
        )
        sys.stdout.writelines(diff)
        return 1
    with open(SCATTER, "w") as fh:
        fh.write(text)
    print("scatter_script.txt: rewritten")
    return 0


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--extract", action="store_true",
                    help="rebuild config/symbols.yml from asm/, the scatter and the ELF")
    ap.add_argument("--check", action="store_true",
                    help="diff the generated scatter against the committed one")
    args = ap.parse_args()
    if args.extract:
        do_extract()
        return 0
    return do_generate(args.check)


if __name__ == "__main__":
    sys.exit(main())
