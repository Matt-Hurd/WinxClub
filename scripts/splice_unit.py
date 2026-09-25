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

A compiled function that loads a literal is moved onto the unit's pool by
value. tcc puts its own pool at the end of its section and refers to it as
|L1.N| + offset; the label pass (asmfix, run by merge_partial_c.compile_c with
an empty pool record) spells that _pool_1_N_<off> and puts `_pool_1_N_<off>`
over each `DCD <value>` after the ENDP, and compiler_output hands those
entries over with the bodies. The unit's pool.s holds the words the original
function used, labelled by address (`_0800B2B4 DCDU REG_IE`), and is emitted
as it is: for each load, the compiled entry's value is looked up among the
unit's words and the load is respelled with that word's label. A number is
compared as a number whatever its spelling; a GBA register name in the unit's
pool is read through asm/gba_constants.inc, since the compiler only ever
writes the address; a symbol is compared as text. The splice refuses, naming
the value, when the unit's pool has no such word or more than one (the
original's choice cannot be told from the value alone), when the entry is a
string, and when the slice being replaced carried a literal pool of its own in
the middle of the function -- a compiled body has nowhere to put those words,
so the ones after them would move. Measured 2026-09-25 over the 273 aligned
pool-loading Thumb functions still in whole-asm units: one loads a value its
unit's pool holds twice, none uses label+offset, so the rewrite is a lookup.

Numeric local labels are a shared namespace in an armasm source file: the asm
slices already repeat `1`, `2`, `3` across functions and armasm resolves `%N`
to the nearest, which is why the split files assemble. preprocess_compiler_labels.py
turns the compiler's |L1.N| into numbers from the same pool, so a compiled
function's labels can collide with a neighbour's -- sub_8004C2C in split_8004BA8
is the first one that did, and its `b %10` was captured by label 10 inside the
ARM function two slices later (`Branch to unaligned destination`). renumber_locals
moves a compiled body onto numbers the unit does not use. Local labels emit no
bytes, so that cannot move the function; the asm slices are left alone, since
they already resolve the way the ROM reads.
"""

import argparse
import collections
import difflib
import glob
import itertools
import os
import re
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SPLITDIR = os.path.join(REPO, "asm", "split")
PIECEDIR = os.path.join(REPO, "asm", "nonmatching")
CONSTANTS = os.path.join(REPO, "asm", "gba_constants.inc")

RE_START = re.compile(r"^\t(?:arm|thumb|non_word_aligned_thumb)_func_start (\S+)$")
RE_END = re.compile(r"^\t(?:arm|thumb|non_word_aligned_thumb)_func_end (\S+)$")
RE_PROC = re.compile(r"^(\S+) PROC\s*$")
RE_ENDP = re.compile(r"^\s+ENDP\s*$")
RE_IMPORT = re.compile(r"^\s*IMPORT\s+(.*?)\s*$")
RE_SECTION_PAD = re.compile(r"^\s+DCW\s+0+\s*$")
# A load from the compiler's own literal pool as the label pass spells it,
# _pool_1_28_4, one label per word: the only spelling the rewrite reads. The
# same load as tcc writes it, |L1.28| + 4, or as asmfix's pools pass names it
# after a unit with a pool record, _0800B2B8, means the compiled file did not
# come through compile_c(labels=True): the first is a pool no label names word
# by word, the second a unit address the compiled pool must not take.
RE_POOL_REF = re.compile(r"\b_pool_\d+_\d+_\d+\b")
RE_POOL_DEF = re.compile(r"^(_pool_\d+_\d+_\d+)\s*$")
RE_UNPLACED = re.compile(r"\|L\d+\.\d+\||\b_0[0-9A-Fa-f]{7}\b")
# `        DCD      0x04000200` under a compiled pool label; `_0800B2B4 DCDU REG_IE`
# in the unit's pool.s; `_08001C48 DCDU 0x1234` inside a slice, a pool the
# original function kept in its own body.
RE_COMPILED_WORD = re.compile(r"^\s+(DC[BWDQ]U?)\s+(.*?)\s*$")
RE_UNIT_WORD = re.compile(r"^(\S+)\s+(DC[BWDQ]U?)\s+(.*?)\s*$")
RE_OWN_POOL = re.compile(r"^_0[0-9A-Fa-f]{7}\s+DC[BWDQ]", re.M)
RE_SETA = re.compile(r"^(\S+)\s+SETA\s+([^;]*)")
RE_LOCAL_DEF = re.compile(r"^(\d+)\s*$")
RE_LOCAL_REF = re.compile(r"%([FB]?[AT]?)(\d+)\b")
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
    """A compiler-generated .s, as ({function: body}, [import lines], pool).

    The body is what sits between `NAME PROC` and its ENDP, less the DCW the
    compiler adds to word-align the end of its section. `pool` is
    {label: (directive, value)} for the entries after the ENDPs, as the label
    pass leaves them: `_pool_1_24_4` on a line of its own over its
    `DCD 0x04000200`.
    """
    lines = text.splitlines(True)
    bodies, imports, pool = {}, [], {}
    i = 0
    while i < len(lines):
        proc = RE_PROC.match(lines[i])
        imp = RE_IMPORT.match(lines[i])
        entry = RE_POOL_DEF.match(lines[i])
        if imp:
            imports.append(imp.group(1))
            i += 1
            continue
        if entry:
            word = RE_COMPILED_WORD.match(lines[i + 1]) if i + 1 < len(lines) else None
            if not word:
                raise SpliceError(f"{entry.group(1)}: pool label with no DC directive under it")
            pool[entry.group(1)] = (word.group(1), word.group(2))
            i += 2
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
    return bodies, imports, pool


def gba_constants(path=CONSTANTS):
    """{name: value} for the numeric variables asm/gba_constants.inc sets.

    The disassembler wrote a unit's pool word as `REG_IE` where the address was
    a known register; the compiler writes the same word as `0x04000200`. The
    file sets each name with SETA to a literal, a name, or a sum of the two,
    so that is what is read; a line in any other form sets nothing here.
    """
    values = {}
    if not os.path.exists(path):
        return values
    with open(path) as fh:
        for line in fh:
            m = RE_SETA.match(line)
            if not m:
                continue
            total = 0
            for term in m.group(2).split("+"):
                term = term.strip()
                if term in values:
                    total += values[term]
                else:
                    try:
                        total += int(term, 0)
                    except ValueError:
                        total = None
                        break
            if total is not None:
                values[m.group(1)] = total
    return values


def literal_value(text, constants):
    """A pool word's value, in a form its two spellings can be compared in.

    A number in any radix or case is an int, as is a name in `constants` and
    armasm's `0x$NAME` substitution of one; both spellings of a word are
    reduced to 32 bits. Anything else is a symbol, compared as written.
    """
    s = " ".join(text.split())
    try:
        return int(s, 0) & 0xFFFFFFFF
    except ValueError:
        pass
    name = s[len("0x$"):] if s.startswith("0x$") else s
    if name in constants:
        return constants[name] & 0xFFFFFFFF
    return s


def unit_pool(text, constants):
    """{value: [label]} for the words of a unit's pool.s, by literal_value."""
    by_value = collections.defaultdict(list)
    for line in text.splitlines():
        m = RE_UNIT_WORD.match(line)
        if m:
            by_value[literal_value(m.group(3), constants)].append(m.group(1))
    return by_value


def rewrite_literals(unit, name, body, compiled_pool, by_value, constants):
    """`body` with each load of the compiler's pool moved onto the unit's word
    with the same value, or a SpliceError naming what could not be moved.
    """
    unplaced = RE_UNPLACED.search(body)
    if unplaced:
        raise SpliceError(
            f"{unit}: {name} loads {unplaced.group(0)}, a pool spelling the splicer "
            f"cannot place; the compiled file has to come through the label pass "
            f"with an empty pool record first")

    def label_for(m):
        token = m.group(0)
        if token not in compiled_pool:
            raise SpliceError(f"{unit}: {name} loads {token}, which the compiled "
                              f"file does not define")
        directive, value = compiled_pool[token]
        if directive.startswith("DCB"):
            raise SpliceError(f"{unit}: {name} loads {token}, a string ({value}); "
                              f"only a word can be found in the unit's pool by value")
        if not directive.startswith("DCD"):
            raise SpliceError(f"{unit}: {name} loads {token}, a {directive}, not a word")
        labels = by_value.get(literal_value(value, constants), [])
        if not labels:
            raise SpliceError(f"{unit}: {name} loads {value}, and the unit's pool "
                              f"has no word with that value")
        if len(labels) > 1:
            raise SpliceError(f"{unit}: {name} loads {value}, which the unit's pool "
                              f"holds at {', '.join(labels)}; the value alone cannot "
                              f"tell which one the original used")
        return labels[0]

    return RE_POOL_REF.sub(label_for, body)


def local_labels(text):
    """The numeric local labels *defined* in a piece of armasm source."""
    return {int(m.group(1)) for m in
            (RE_LOCAL_DEF.match(line) for line in text.splitlines()) if m}


def renumber_locals(name, body, taken):
    """`body` with its local labels moved off the numbers in `taken`.

    Numeric local labels are one namespace per source file, and armasm resolves
    `%N` to the *nearest* label N in either direction. The compiler numbers its
    own labels from |L1.N| with no idea what the unit's other functions use, so
    a compiled body dropped into a unit can have its branch captured by a
    neighbour's label -- silently pointing at the wrong code, or, when the
    neighbour is an ARM function, as `Branch to unaligned destination`.

    Local labels emit no bytes, so renumbering them cannot move the function.
    Returns (body, numbers used).
    """
    mine = local_labels(body)
    if not mine:
        return body, set()
    dangling = {int(m.group(2)) for m in RE_LOCAL_REF.finditer(body)} - mine
    if dangling:
        raise SpliceError(
            f"{name}: branches to local label(s) "
            f"{', '.join(str(n) for n in sorted(dangling))} that it does not "
            f"define; the splicer cannot tell what they were meant to reach")
    free = (n for n in itertools.count(1) if n not in taken and n not in mine)
    fresh = {old: next(free) for old in sorted(mine)}
    out = []
    for line in body.splitlines(True):
        m = RE_LOCAL_DEF.match(line)
        if m:
            out.append(f"{fresh[int(m.group(1))]}\n")
            continue
        out.append(RE_LOCAL_REF.sub(
            lambda m: f"%{m.group(1)}{fresh[int(m.group(2))]}", line))
    return "".join(out), set(fresh.values())


def add_imports(header, imports, local=frozenset()):
    """Put the compiler's IMPORTs in the unit's header, skipping the ones it has
    and the ones `local` names -- a callee this same unit already defines,
    whether as asm or as another compiled function, needs no IMPORT: it
    resolves inside this merged file, and armasm rejects a symbol that is both
    IMPORTed and GLOBAL.
    """
    lines = header.splitlines(True)
    have = {RE_IMPORT.match(l).group(1) for l in lines if RE_IMPORT.match(l)}
    new = [f"\tIMPORT {name}\n" for name in imports
           if name not in have and name not in local]
    if not new:
        return header
    at = max([i for i, l in enumerate(lines) if RE_IMPORT.match(l)], default=-1) + 1
    if at == 0:  # no IMPORT list yet: go under the AREA
        at = max(i for i, l in enumerate(lines) if l.startswith("\tAREA")) + 1
    return "".join(lines[:at] + new + lines[at:])


def splice(unit, order, pieces, compiled=None, compiled_imports=(),
           compiled_pool=None, constants=None):
    """The text of one translation unit.

    `order` is the unit's function names in address order, `pieces` the contents
    of its directory, `compiled` the bodies that come from the compiler instead
    of from the asm, `compiled_pool` the compiler's pool entries those bodies
    load from, `constants` the names a unit pool word may be spelled with
    (asm/gba_constants.inc unless given). With `compiled` empty this returns
    asm/split/<unit>.s.
    """
    compiled = compiled or {}
    compiled_pool = compiled_pool or {}
    by_value = None
    missing = [n for n in order if f"{n}.s" not in pieces]
    if missing:
        raise SpliceError(f"{unit}: no piece for {', '.join(missing)}")
    unknown = set(compiled) - set(order)
    if unknown:
        raise SpliceError(f"{unit}: compiled {', '.join(sorted(unknown))}, "
                          f"which the unit does not hold")

    # A compiled body imports every symbol it calls, including a sibling that
    # stays in this same unit's asm -- thumb_func_start already makes that one
    # GLOBAL, and armasm rejects a name that is both IMPORTed and locally
    # defined. Only a genuinely outside symbol needs the IMPORT.
    local_imports = tuple(n for n in compiled_imports if n not in set(order))
    out = [add_imports(pieces["header.s"], local_imports) if compiled
           else pieces["header.s"]]
    # Every local label the unit's own asm uses, so a compiled body can be moved
    # off them. The asm slices repeat 1, 2, 3 freely between functions; only a
    # spliced body has to dodge them, because only it did not come from a
    # disassembly that armasm already resolved the way the ROM reads.
    taken = set().union(*(local_labels(text) for name, text in pieces.items()
                          if name not in compiled)) if pieces else set()
    for name in order:
        text = pieces[f"{name}.s"]
        if name not in compiled:
            out.append(text)
            continue
        lead, tail = cut_slice(name, text)
        body = compiled[name]
        if RE_OWN_POOL.search(text):
            raise SpliceError(
                f"{unit}: {name} keeps a literal pool inside its own body; a "
                f"compiled body has nowhere to put those words, so the code "
                f"after them would move")
        if RE_POOL_REF.search(body) or RE_UNPLACED.search(body):
            if by_value is None:
                if constants is None:
                    constants = gba_constants()
                by_value = unit_pool(pieces["pool.s"], constants)
            body = rewrite_literals(unit, name, body, compiled_pool, by_value, constants)
        body, used = renumber_locals(name, body, taken)
        taken |= used
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
    bodies, imports, pool = ({}, [], {})
    if args.compiled:
        bodies, imports, pool = compiler_output(open(args.compiled).read())
        wanted = args.function or sorted(bodies)
        absent = [n for n in wanted if n not in bodies]
        if absent:
            raise SpliceError(f"{args.compiled}: does not define "
                              f"{', '.join(absent)}")
        bodies = {n: bodies[n] for n in wanted}

    text = splice(args.unit, unit_order(args.unit, pieces), pieces, bodies, imports, pool)
    os.makedirs(os.path.dirname(os.path.abspath(args.out)), exist_ok=True)
    with open(args.out, "w") as fh:
        fh.write(text)
    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except SpliceError as exc:
        sys.exit(f"splice_unit: {exc}")
