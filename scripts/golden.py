#!/usr/bin/env python3

"""Frozen known-good objects for every unit built from C or C++.

    python scripts/golden.py check             every built unit against tests/golden/
    python scripts/golden.py freeze            freeze every built unit (ROM must match)
    python scripts/golden.py freeze Kiko ...   freeze these units only
    python scripts/golden.py diff Kiko         what differs, section by section

tests/golden/<unit>.o is the object a unit's source produced on a build whose
ROM matched winxclub.sha1. It exists because 86 of the converted units are the
class-named .cpp vtable ports, whose original assembly was never a file of that
name: nothing in asm/ can be assembled into a reference for them, so
scripts/report.py has nothing to score them against and a regression in one
would show up only as the ROM's SHA1 breaking, with no unit named. A frozen
object is the reference that needs no assembly. It works for every converted
unit, and objdiff scores it per function like any other reference.

The comparison is not the whole file. It is every allocated section, by name
and bytes, plus the relocations that apply to one, by offset, type and target
symbol. That is what the linker places; the symbol table, .comment and the
debug frame are not, and a change to them alone cannot move a byte of the ROM.

Freezing is guarded: the ROM built alongside the objects must match
winxclub.sha1, so a golden can only ever be an object the verdict has accepted.
report.py freezes any unit that has no golden yet under the same guard, so a
new conversion that passes make check is covered without a separate step --
the new tests/golden/<unit>.o belongs in that conversion's commit.

What check reports, and what to do about each:

  drifted    the built object differs from its golden. With the ROM matching,
             something changed an object without moving the ROM, which is
             worth understanding before `freeze <unit>` accepts it. With the
             ROM broken, this is the list of units to look at.
  unfrozen   a converted unit with no golden. `make check` freezes it when the
             ROM matches; `freeze <unit>` does the same by hand.
  stale      a golden whose unit is no longer built from source, because the
             source was reverted or parked. Delete the golden.

A unit is "built from source" when its object is in build/winxclub/src/ (a
.c or .cpp in src/) or build/winxclub/merged/ (spliced through partial/).
Pure struct parsing so this runs under the build's python without pyelftools.
"""

import argparse
import glob
import hashlib
import os
import shutil
import struct
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BUILD = os.path.join(REPO, "build", "winxclub")
GOLDEN = os.path.join(REPO, "tests", "golden")
ROM = os.path.join(REPO, "winxclub.gba")
SHA1 = os.path.join(REPO, "winxclub.sha1")

SHT_PROGBITS, SHT_SYMTAB, SHT_STRTAB, SHT_NOBITS, SHT_REL = 1, 2, 3, 8, 9
SHF_ALLOC = 0x2


class GoldenError(Exception):
    pass


def built_objects():
    """unit -> path of every object the build made from C or C++."""
    out = {}
    for sub in ("src", "merged"):
        for path in sorted(glob.glob(os.path.join(BUILD, sub, "**", "*.o"), recursive=True)):
            unit = os.path.basename(path)[:-len(".o")]
            if unit in out:
                raise GoldenError(f"{unit}: built twice, {out[unit]} and {path}")
            out[unit] = path
    return out


def golden_objects():
    """unit -> path of every frozen object."""
    return {os.path.basename(p)[:-len(".o")]: p
            for p in sorted(glob.glob(os.path.join(GOLDEN, "*.o")))}


def golden_path(unit):
    return os.path.join(GOLDEN, f"{unit}.o")


# --- ELF ------------------------------------------------------------------

def sections(data):
    """The section headers of a little-endian ELF32 object, with names."""
    if data[:4] != b"\x7fELF" or data[4] != 1 or data[5] != 1:
        raise GoldenError("not a little-endian ELF32 object")
    shoff = struct.unpack_from("<I", data, 0x20)[0]
    shentsize, shnum, shstrndx = struct.unpack_from("<HHH", data, 0x2E)
    raw = [struct.unpack_from("<10I", data, shoff + i * shentsize) for i in range(shnum)]
    names = raw[shstrndx]
    out = []
    for name, typ, flags, _addr, offset, size, link, info, _align, entsize in raw:
        start = names[4] + name
        out.append({
            "name": data[start:data.index(b"\0", start)].decode(),
            "type": typ, "flags": flags, "offset": offset, "size": size,
            "link": link, "info": info, "entsize": entsize,
        })
    return out


def symbol_names(data, secs, symtab):
    """Symbol index -> name for one SHT_SYMTAB section."""
    strtab = secs[symtab["link"]]
    strings = data[strtab["offset"]:strtab["offset"] + strtab["size"]]
    names = []
    for off in range(symtab["offset"], symtab["offset"] + symtab["size"], symtab["entsize"]):
        st_name = struct.unpack_from("<I", data, off)[0]
        names.append(strings[st_name:strings.index(b"\0", st_name)].decode())
    return names


def fingerprint(path):
    """What the linker places: {section name: (bytes or size, [relocs])}.

    A reloc is (offset, type, target symbol name). NOBITS sections have no
    bytes, so their size stands in.
    """
    with open(path, "rb") as fh:
        data = fh.read()
    secs = sections(data)
    placed = {}
    for i, sec in enumerate(secs):
        if not sec["flags"] & SHF_ALLOC:
            continue
        if sec["type"] == SHT_NOBITS:
            content = sec["size"]
        else:
            content = data[sec["offset"]:sec["offset"] + sec["size"]]
        placed[i] = [sec["name"], content, []]
    for sec in secs:
        if sec["type"] != SHT_REL or sec["info"] not in placed:
            continue
        names = symbol_names(data, secs, secs[sec["link"]])
        relocs = placed[sec["info"]][2]
        for off in range(sec["offset"], sec["offset"] + sec["size"], sec["entsize"]):
            r_offset, r_info = struct.unpack_from("<II", data, off)
            relocs.append((r_offset, r_info & 0xFF, names[r_info >> 8]))
    out = {}
    for name, content, relocs in placed.values():
        if name in out:
            raise GoldenError(f"{path}: two allocated sections named {name}")
        out[name] = (content, relocs)
    return out


def compare(golden, built):
    """Lines describing how `built` differs from `golden`; empty when it does not."""
    g, b = fingerprint(golden), fingerprint(built)
    lines = []
    for name in sorted(set(g) | set(b)):
        if name not in b:
            lines.append(f"section {name}: in golden only")
            continue
        if name not in g:
            lines.append(f"section {name}: in built only")
            continue
        (gc, gr), (bc, br) = g[name], b[name]
        if isinstance(gc, int) or isinstance(bc, int):
            if gc != bc:
                lines.append(f"section {name}: size {gc} -> {bc}")
        elif gc != bc:
            first = next(i for i in range(max(len(gc), len(bc)))
                         if i >= len(gc) or i >= len(bc) or gc[i] != bc[i])
            lines.append(f"section {name}: {len(gc)} -> {len(bc)} bytes, "
                         f"first difference at +{first:#x}")
        if gr != br:
            changed = [(x, y) for x, y in zip(gr, br) if x != y][:3]
            detail = "; ".join(f"+{x[0]:#x} {x[2]} -> +{y[0]:#x} {y[2]}" for x, y in changed)
            lines.append(f"section {name}: relocations {len(gr)} -> {len(br)}"
                         + (f" ({detail})" if detail else ""))
    return lines


# --- the ROM guard ---------------------------------------------------------

def rom_matches():
    """True when winxclub.gba exists and has the SHA1 winxclub.sha1 demands."""
    if not os.path.exists(ROM):
        return False
    with open(SHA1) as fh:
        want = fh.read().split()[0]
    h = hashlib.sha1()
    with open(ROM, "rb") as fh:
        for block in iter(lambda: fh.read(1 << 20), b""):
            h.update(block)
    return h.hexdigest() == want


# --- commands ---------------------------------------------------------------

def check():
    """(drifted {unit: lines}, unfrozen [unit], stale [unit], same [unit])."""
    built, golden = built_objects(), golden_objects()
    drifted, unfrozen, same = {}, [], []
    for unit, path in built.items():
        if unit not in golden:
            unfrozen.append(unit)
            continue
        lines = compare(golden[unit], path)
        (drifted.__setitem__(unit, lines) if lines else same.append(unit))
    stale = sorted(set(golden) - set(built))
    return drifted, unfrozen, stale, same


def freeze(units):
    """Copy these units' built objects into tests/golden/. The ROM must match."""
    if not rom_matches():
        raise GoldenError("winxclub.gba does not match winxclub.sha1; "
                          "nothing frozen. Only a passing build can be a golden.")
    built = built_objects()
    missing = [u for u in units if u not in built]
    if missing:
        raise GoldenError("not built from source: " + " ".join(missing))
    os.makedirs(GOLDEN, exist_ok=True)
    for unit in units:
        shutil.copyfile(built[unit], golden_path(unit))
    return [os.path.relpath(golden_path(u), REPO) for u in units]


def print_check(drifted, unfrozen, stale, same):
    print(f"golden: {len(same)} of {len(same) + len(drifted) + len(unfrozen)} "
          f"built units match tests/golden/")
    for unit, lines in sorted(drifted.items()):
        print(f"  drifted   {unit}")
        for line in lines:
            print(f"              {line}")
    for unit in unfrozen:
        print(f"  unfrozen  {unit}")
    for unit in stale:
        print(f"  stale     {unit}  (tests/golden/{unit}.o has no built object)")


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)
    sub.add_parser("check")
    f = sub.add_parser("freeze")
    f.add_argument("units", nargs="*", help="default: every unit built from source")
    d = sub.add_parser("diff")
    d.add_argument("unit")
    args = ap.parse_args(argv)

    if args.cmd == "check":
        drifted, unfrozen, stale, same = check()
        print_check(drifted, unfrozen, stale, same)
        return 1 if drifted or unfrozen or stale else 0
    if args.cmd == "freeze":
        units = args.units or sorted(built_objects())
        for path in freeze(units):
            print(f"frozen {path}")
        return 0
    if args.cmd == "diff":
        built = built_objects()
        if args.unit not in built:
            raise GoldenError(f"{args.unit}: not built from source")
        if not os.path.exists(golden_path(args.unit)):
            raise GoldenError(f"{args.unit}: no golden")
        lines = compare(golden_path(args.unit), built[args.unit])
        print("\n".join(lines) if lines else f"{args.unit}: identical")
        return 1 if lines else 0
    return 2


if __name__ == "__main__":
    try:
        sys.exit(main())
    except GoldenError as exc:
        print(f"golden.py: {exc}", file=sys.stderr)
        sys.exit(1)
