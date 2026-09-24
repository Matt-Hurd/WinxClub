#!/usr/bin/env python3
"""Join asm/nonmatching/<unit>/ back into one translation unit.

    python scripts/splice_unit.py --check          every unit -> asm/split/<unit>.s, byte for byte
    python scripts/splice_unit.py UNIT -o OUT.s    write one unit, asm only
    python scripts/splice_unit.py UNIT -o OUT.s --compiled built.s --function NAME ...

scripts/split_units.py cut each unit into one file per function; this puts them
back. With no compiled function it is the exact inverse, which is what --check
proves: the splicer is trusted to build the unit only because it can rebuild the
one the disassembler produced without moving a byte.

With a compiled function it swaps one piece. The unit keeps its own shape --
its header, its function order, its literal pool, the blank lines and ALIGNs
between its functions -- and only the instructions of the named functions come
from the compiler:

    <func>.s        \tthumb_func_start NAME        kept: ALIGN, GLOBAL, CODE16,
                                                   the label and FUNCTION
                    ...the asm body...             replaced by the compiler's
                    \tALIGN                        kept: padding to the next
                                                   function, in 44 slices
                    \tthumb_func_end NAME          kept: ENDFUNC, so the spliced
                                                   function still has a size
                    blank lines                    kept: the unit's layout, not
                                                   this function's instructions

The compiler's own `DCW 0000` before ENDP is dropped. It pads the end of *its*
section to a word, and a spliced function is not at the end of a section: keep
it and the next function moves two bytes. The unit's asm already says where the
padding goes -- an `ALIGN` in front of the `*_func_end` where there is any, and
for CallSoftReset none at all, because the nullsub after it starts at +14 on a
halfword -- so the asm's padding is the one to believe.

EXPORT is dropped too: `thumb_func_start` has already made the symbol GLOBAL,
and armasm rejects the second one. IMPORTs are merged into the header's list.

What this does not do yet: a compiled function that loads a literal. tcc puts
its own pool at the end of its section and refers to it as |L1.N| + offset; the
unit's pool is somewhere else entirely and holds the values the original
function used. Rewriting the one onto the other by value is the next piece of
work, and until it exists a compiled function that needs a literal is reported,
not forced. The 452 functions that are pool-free and word-aligned need none of
it.

Numeric local labels are a shared namespace in an armasm source file: the asm
slices already repeat `1`, `2`, `3` across functions and armasm resolves `%N`
to the nearest, which is why the split files assemble. preprocess_compiler_labels.py
turns the compiler's |L1.N| into numbers from the same pool, so a compiled
function whose labels collide with a neighbour's could resolve the wrong way.
Nothing in the ROM has hit it yet; it is a real limit of this approach, not a
handled case.
"""

import argparse
import difflib
import glob
import os
import re
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SPLITDIR = os.path.join(REPO, "asm", "split")
PIECEDIR = os.path.join(REPO, "asm", "nonmatching")

RE_START = re.compile(r"^\t(?:arm|thumb|non_word_aligned_thumb)_func_start (\S+)$")
RE_END = re.compile(r"^\t(?:arm|thumb|non_word_aligned_thumb)_func_end (\S+)$")
RE_PROC = re.compile(r"^(\S+) PROC\s*$")
RE_ENDP = re.compile(r"^\s+ENDP\s*$")
RE_IMPORT = re.compile(r"^\s*IMPORT\s+(.*?)\s*$")
RE_SECTION_PAD = re.compile(r"^\s+DCW\s+0+\s*$")
RE_LITERAL = re.compile(r"\|L\d+\.\d+\|")
END = "\tEND\n"


class SpliceError(Exception):
    """A piece is not the shape the splicer knows how to join."""


def read_unit(unit):
    """The files of one unit's directory, as {name: text}."""
    path = os.path.join(PIECEDIR, unit)
    if not os.path.isdir(path):
        raise SpliceError(f"{unit}: no asm/nonmatching/{unit}/")
    return {name: open(os.path.join(path, name)).read()
            for name in os.listdir(path)}


def cut_slice(name, text):
    """One function's asm, as (lead, tail).

    `lead` is the *_func_start line -- the macro is what makes the symbol global,
    the code Thumb and the function a FUNCTION with a size, and it writes the
    label, so a compiled function keeps it. `tail` is the *_func_end line with
    the ENDFUNC that closes that size, the run of ALIGNs and blank lines in front
    of it, and the blank lines after: padding that belongs to the unit's layout
    rather than to this function's instructions.
    """
    lines = text.splitlines(True)
    if not lines or not RE_START.match(lines[0]):
        raise SpliceError(f"{name}: does not start with a *_func_start line")
    if RE_START.match(lines[0]).group(1) != name:
        raise SpliceError(f"{name}: *_func_start names "
                          f"{RE_START.match(lines[0]).group(1)}")
    ends = [i for i, line in enumerate(lines) if RE_END.match(line)]
    if len(ends) != 1 or RE_END.match(lines[ends[0]]).group(1) != name:
        raise SpliceError(f"{name}: not one *_func_end {name} line")
    i = ends[0]
    while i > 1 and (lines[i - 1].strip() == "" or lines[i - 1].rstrip("\n") == "\tALIGN"):
        i -= 1
    return lines[0], "".join(lines[i:])


def compiler_output(text):
    """A compiler-generated .s, as ({function: body}, [import lines]).

    The body is what sits between `NAME PROC` and its ENDP, less the DCW the
    compiler adds to word-align the end of its section.
    """
    lines = text.splitlines(True)
    bodies, imports = {}, []
    i = 0
    while i < len(lines):
        proc = RE_PROC.match(lines[i])
        imp = RE_IMPORT.match(lines[i])
        if imp:
            imports.append(imp.group(1))
            i += 1
            continue
        if not proc:
            i += 1
            continue
        name = proc.group(1)
        j = i + 1
        while j < len(lines) and not RE_ENDP.match(lines[j]):
            j += 1
        if j == len(lines):
            raise SpliceError(f"{name}: PROC with no ENDP")
        body = lines[i + 1:j]
        while body and (body[-1].strip() == "" or RE_SECTION_PAD.match(body[-1])):
            body.pop()
        bodies[name] = "".join(body)
        i = j + 1
    return bodies, imports


def add_imports(header, imports):
    """Put the compiler's IMPORTs in the unit's header, skipping the ones it has."""
    lines = header.splitlines(True)
    have = {RE_IMPORT.match(l).group(1) for l in lines if RE_IMPORT.match(l)}
    new = [f"\tIMPORT {name}\n" for name in imports if name not in have]
    if not new:
        return header
    at = max([i for i, l in enumerate(lines) if RE_IMPORT.match(l)], default=-1) + 1
    if at == 0:  # no IMPORT list yet: go under the AREA
        at = max(i for i, l in enumerate(lines) if l.startswith("\tAREA")) + 1
    return "".join(lines[:at] + new + lines[at:])


def splice(unit, order, pieces, compiled=None, compiled_imports=()):
    """The text of one translation unit.

    `order` is the unit's function names in address order, `pieces` the contents
    of its directory, `compiled` the bodies that come from the compiler instead
    of from the asm. With `compiled` empty this returns asm/split/<unit>.s.
    """
    compiled = compiled or {}
    missing = [n for n in order if f"{n}.s" not in pieces]
    if missing:
        raise SpliceError(f"{unit}: no piece for {', '.join(missing)}")
    unknown = set(compiled) - set(order)
    if unknown:
        raise SpliceError(f"{unit}: compiled {', '.join(sorted(unknown))}, "
                          f"which the unit does not hold")

    out = [add_imports(pieces["header.s"], compiled_imports) if compiled
           else pieces["header.s"]]
    for name in order:
        text = pieces[f"{name}.s"]
        if name not in compiled:
            out.append(text)
            continue
        lead, tail = cut_slice(name, text)
        body = compiled[name]
        if RE_LITERAL.search(body):
            raise SpliceError(
                f"{unit}: {name} loads a literal from the compiler's own pool; "
                f"rewriting it onto the unit's pool is not implemented")
        out.append(lead + body + tail)
    return "".join(out) + pieces["pool.s"] + END


def unit_order(unit, pieces):
    """The unit's functions in address order, from config/symbols.yml.

    A unit is `asm/split/<unit>.s` until it is spliced and that file goes away,
    and `asm/nonmatching/<unit>` after gen.py --extract next runs; both spellings
    name the same unit.
    """
    import yaml
    with open(os.path.join(REPO, "config", "symbols.yml")) as fh:
        symbols = yaml.safe_load(fh)
    want = (f"asm/split/{unit}.s", f"asm/nonmatching/{unit}")
    funcs = sorted((int(f["addr"], 16), f["name"])
                   for f in symbols["functions"] if f["unit"] in want)
    if not funcs:
        raise SpliceError(f"{unit}: config/symbols.yml lists no function for it")
    return [name for _, name in funcs]


def do_check():
    """Splice every unit from its files on disk and diff against asm/split/."""
    units = sorted(os.path.basename(p)[:-len(".s")]
                   for p in glob.glob(os.path.join(SPLITDIR, "*.s")))
    bad = 0
    for unit in units:
        want = open(os.path.join(SPLITDIR, f"{unit}.s")).read()
        try:
            pieces = read_unit(unit)
            got = splice(unit, unit_order(unit, pieces), pieces)
        except SpliceError as exc:
            print(exc)
            bad += 1
            continue
        if got != want:
            print(f"{unit}: spliced unit differs from asm/split/{unit}.s")
            sys.stdout.writelines(difflib.unified_diff(
                want.splitlines(True), got.splitlines(True),
                f"asm/split/{unit}.s", "spliced"))
            bad += 1
    print(f"{len(units)} units spliced from asm/nonmatching/, {bad} differ")
    return 1 if bad else 0


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("unit", nargs="?", help="a unit name, e.g. split_800B154")
    ap.add_argument("-o", "--out", help="where to write the spliced unit")
    ap.add_argument("--compiled", help="a compiler-generated .s to take bodies from")
    ap.add_argument("--function", action="append", default=[],
                    help="a function to take from --compiled; repeatable")
    ap.add_argument("--check", action="store_true",
                    help="splice every unit and diff against asm/split/")
    args = ap.parse_args()

    if args.check:
        return do_check()
    if not args.unit or not args.out:
        ap.error("a unit and -o are required without --check")

    pieces = read_unit(args.unit)
    bodies, imports = ({}, [])
    if args.compiled:
        bodies, imports = compiler_output(open(args.compiled).read())
        wanted = args.function or sorted(bodies)
        absent = [n for n in wanted if n not in bodies]
        if absent:
            raise SpliceError(f"{args.compiled}: does not define "
                              f"{', '.join(absent)}")
        bodies = {n: bodies[n] for n in wanted}

    text = splice(args.unit, unit_order(args.unit, pieces), pieces, bodies, imports)
    os.makedirs(os.path.dirname(os.path.abspath(args.out)), exist_ok=True)
    with open(args.out, "w") as fh:
        fh.write(text)
    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except SpliceError as exc:
        sys.exit(f"splice_unit: {exc}")
