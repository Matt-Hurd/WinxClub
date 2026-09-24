#!/usr/bin/env python3
"""Split each asm/split/<unit>.s into one file per function plus the unit's pool.

    python scripts/split_units.py           asm/split/*.s -> asm/nonmatching/<unit>/
    python scripts/split_units.py --check    reassemble and diff, touching nothing

The unit is the smallest thing the linker can place today, because its functions
share one literal pool at the end of the file. Phase 2 needs a smaller piece: one
function. This script cuts the unit up without changing a byte of it, so that the
splicer can put the pieces back with a compiled function in place of one of them.

Each unit becomes a directory:

    asm/nonmatching/<unit>/header.s   INCLUDE, AREA and the IMPORT list, verbatim
    asm/nonmatching/<unit>/<func>.s   one function, from its *_func_start to the
                                      line before the next one, verbatim
    asm/nonmatching/<unit>/pool.s     the shared end pool: the trailing run of
                                      `_0800XXXX DCDU` entries and the ALIGN that
                                      precedes it. Empty for the 17 units that
                                      have no end pool.

None of these is a translation unit -- no AREA, no END -- so `ASM_SRCS` in the
Makefile filters the directory out. Without that filter its `asm/*/*/*.s` glob
assembles and links all 1965 pieces individually.

Three things are deliberately *not* cleaned up, because cleaning them up would
mean the reassembly is a reformatting rather than a proof:

- Slices keep their trailing blank lines. Functions are separated by one blank
  line in 1089 places, two in nine, three in one and none in two; a generator
  that normalised that would move bytes in the .s and have to be trusted instead
  of checked.
- A pool that sits *inside* a function -- tcc dumps literals after an
  unconditional branch, and 35 units have one -- stays in that function's file.
  It is not shared and must not move.
- The `END` line is the only text this script writes rather than copies. It is
  `\tEND` in all 288 units.

Function order on reassembly comes from `config/symbols.yml`, not from the split
file: the functions of the unit sorted by address. So --check also tests that
phase 1's table agrees with the asm about which functions a unit holds and in
what order, which is what the splicer will rely on.
"""

import argparse
import difflib
import glob
import os
import re
import sys

import yaml

import splice_unit

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SPLITDIR = os.path.join(REPO, "asm", "split")
OUTDIR = os.path.join(REPO, "asm", "nonmatching")
SYMBOLS = os.path.join(REPO, "config", "symbols.yml")

RE_START = re.compile(r"^\t(?:arm|thumb|non_word_aligned_thumb)_func_start (\S+)$")
RE_POOL = re.compile(r"^_[0-9A-Fa-f]{7,8} DCDU ")
END = "\tEND\n"


class UnitError(Exception):
    """A unit does not have the shape every one of the 288 was measured to have."""


def parse_unit(text, unit):
    """Cut one unit's text into (header, [(name, text)], pool).

    Concatenating header + every function's text + pool + "\\tEND\\n" returns the
    input exactly; nothing else about the split is trusted.
    """
    lines = text.splitlines(True)
    if not lines or lines[-1] != END:
        raise UnitError(f"{unit}: last line is {lines[-1]!r}, not {END!r}")
    end = len(lines) - 1

    starts = [i for i, line in enumerate(lines) if RE_START.match(line)]
    if not starts:
        raise UnitError(f"{unit}: no *_func_start")

    # The end pool: walk back from END over blank lines, then over the run of
    # pool entries, and take the ALIGN in front of it with them.
    i = end - 1
    while i >= 0 and lines[i].strip() == "":
        i -= 1
    pool_start = end
    if RE_POOL.match(lines[i]):
        while i >= 0 and RE_POOL.match(lines[i]):
            i -= 1
        if lines[i].rstrip("\n") != "\tALIGN":
            raise UnitError(f"{unit}: end pool preceded by {lines[i]!r}, not ALIGN")
        pool_start = i
    if pool_start < starts[-1]:
        raise UnitError(f"{unit}: end pool starts before the last function")

    bounds = starts + [pool_start]
    funcs = [(RE_START.match(lines[a]).group(1), "".join(lines[a:b]))
             for a, b in zip(bounds, bounds[1:])]
    names = [name for name, _ in funcs]
    if len(set(names)) != len(names):
        raise UnitError(f"{unit}: repeated function name in one unit")

    return "".join(lines[:starts[0]]), funcs, "".join(lines[pool_start:end])


def unit_order(symbols):
    """unit name -> function names in address order, from config/symbols.yml."""
    order = {}
    for func in symbols["functions"]:
        unit = func["unit"]
        if not unit.startswith("asm/split/"):
            continue
        name = os.path.basename(unit)[:-len(".s")]
        order.setdefault(name, []).append((int(func["addr"], 16), func["name"]))
    return {u: [n for _, n in sorted(fs)] for u, fs in order.items()}


def split_files(header, funcs, pool):
    """The files one unit's directory holds, as {relative name: text}."""
    files = {"header.s": header, "pool.s": pool}
    files.update({f"{name}.s": text for name, text in funcs})
    return files


def write_dir(path, files, check_only):
    """Write (or diff) one unit's directory; returns 1 if anything was stale."""
    stale = 0
    existing = set(os.listdir(path)) if os.path.isdir(path) else set()
    for name in sorted(existing - set(files)):
        rel = os.path.relpath(os.path.join(path, name), REPO)
        print(f"{rel}: stale, {'would be' if check_only else ''} removed")
        if not check_only:
            os.remove(os.path.join(path, name))
        stale = 1
    for name, text in sorted(files.items()):
        full = os.path.join(path, name)
        rel = os.path.relpath(full, REPO)
        current = open(full).read() if os.path.exists(full) else None
        if current == text:
            continue
        if check_only:
            sys.stdout.writelines(difflib.unified_diff(
                (current or "").splitlines(True), text.splitlines(True),
                rel, "generated",
            ))
            stale = 1
            continue
        os.makedirs(path, exist_ok=True)
        with open(full, "w") as fh:
            fh.write(text)
        stale = 1
    return stale


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--check", action="store_true",
                    help="reassemble and diff against asm/split/, writing nothing")
    args = ap.parse_args()

    with open(SYMBOLS) as fh:
        order = unit_order(yaml.safe_load(fh))

    units = sorted(glob.glob(os.path.join(SPLITDIR, "*.s")))
    written = mismatched = pools = 0
    for path in units:
        unit = os.path.basename(path)[:-len(".s")]
        text = open(path).read()
        header, funcs, pool = parse_unit(text, unit)

        # The round trip, in the order symbols.yml gives rather than the order
        # the file happens to be in. It goes through the splicer rather than a
        # concatenation of its own, so that `make check` proves the thing that
        # actually builds these units can rebuild them.
        if order.get(unit) != [name for name, _ in funcs]:
            print(f"{unit}: symbols.yml lists "
                  f"{order.get(unit)}, the asm has {[n for n, _ in funcs]}")
            mismatched += 1
            continue
        files = split_files(header, funcs, pool)
        try:
            rebuilt = splice_unit.splice(unit, order[unit], files)
        except splice_unit.SpliceError as exc:
            print(exc)
            mismatched += 1
            continue
        if rebuilt != text:
            print(f"{unit}: round trip differs from asm/split/{unit}.s")
            sys.stdout.writelines(difflib.unified_diff(
                text.splitlines(True), rebuilt.splitlines(True),
                f"asm/split/{unit}.s", "reassembled",
            ))
            mismatched += 1
            continue

        pools += bool(pool)
        written += write_dir(os.path.join(OUTDIR, unit), files, args.check)

    functions = sum(len(fs) for fs in order.values())
    verb = "stale" if args.check else "rewritten"
    print(f"{len(units)} units, {functions} functions, {pools} end pools; "
          f"{written} {verb}, {mismatched} not reassembled")
    return 1 if mismatched or (args.check and written) else 0


if __name__ == "__main__":
    sys.exit(main())
