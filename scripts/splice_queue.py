#!/usr/bin/env python3
"""Which functions can go through the splicer today, and in which unit.

    python scripts/splice_queue.py                  summary: units, ranked
    python scripts/splice_queue.py --units N        the next N units, one block each
    python scripts/splice_queue.py --unit STEM      one unit: its candidates and its slices
    python scripts/splice_queue.py --count          the counts, nothing else
    python scripts/splice_queue.py --rejected       the slices that pass 1-4 but are excluded

Superseded 2026-09-25 by scripts/next.py, which surveys spliced units' leftovers too
and drops rule 3: the splicer never makes an AREA, so a halfword start is not a
blocker (notes/quirks/a-halfword-aligned-function-splices-like-any-other.md). Kept
because its --rejected and --unit views are still referenced by winx-78k tickets.

A candidate is a function slice under asm/nonmatching/<unit>/ that is

  1. in a unit whose asm/split/<unit>.s still exists (not already converted),
  2. thumb -- an ARM function is phase 7,
  3. word-aligned -- an AREA cannot begin at a halfword address, and
  4. free of any `_0XXXXXXX` token.

(4) is the strict reading: not "does not use the unit's end pool" but "names no
pool label at all". A slice whose only pool is its own mid-function one still
fails it, because the compiled replacement emits that pool as |L1.N| in its own
section and scripts/splice_unit.py refuses a compiled function that loads from
there. Four looser definitions were counted on 2026-09-25 and none of them
reproduces the 595 in docs/MAP.md; the strict count is what the splicer can
actually take.

Two shapes pass all four tests and still cannot be spliced, so they are excluded
and counted separately (--rejected keeps them visible):

  veneer  a body that is exactly `bx pc` [+ ALIGN] with an ARM function next
          in the unit. That is armlink's interworking thunk, not a C function;
          nothing compiles to it. notes/quirks/a-thumb-veneer-with-no-c-source-of-its-own.md
  adr     an `ADR rN, label` or `add rN, pc, #imm`: a pc-relative address into
          the unit's shared data that no _0XXXXXXX token names, so the slice
          only looks pool-free. armasm rejects the splice with A1150E: Bad
          symbol. notes/parked.md, sub_8017DD4 (winx-2w7)

The work is per *unit*, not per function: converting one function means the
unit's asm/split file goes and the whole unit is rebuilt from its slices plus
partial/<unit>.c, so a unit holding four candidates is four functions for one
unit's worth of build plumbing. That is the ranking.
"""

import argparse
import collections
import os
import re

import yaml

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SYMBOLS = os.path.join(REPO, "config", "symbols.yml")
NONMATCHING = os.path.join(REPO, "asm", "nonmatching")

POOL_TOKEN = re.compile(r"_0[0-9A-Fa-f]{7}")
ADR = re.compile(r"^\s*(adr\b|add\s+r\d+\s*,\s*pc\b)", re.I | re.M)
FUNC_MACRO = re.compile(r"^\s*\S*_func_(start|end)\b")


def is_veneer_body(text):
    """True when the slice's instructions are exactly `bx pc`, optionally `ALIGN`."""
    body = [
        " ".join(ln.split()).lower()
        for ln in text.splitlines()
        if ln.strip() and not FUNC_MACRO.match(ln)
    ]
    return body in (["bx pc"], ["bx pc", "align"])


def survey():
    """One record per function of every unit that is still assembly."""
    with open(SYMBOLS) as f:
        symbols = yaml.safe_load(f)

    rows = []
    for fn in symbols["functions"]:
        unit = fn["unit"]
        if not unit.startswith("asm/split/"):
            continue
        if not os.path.exists(os.path.join(REPO, unit)):
            continue  # unit already converted
        stem = os.path.basename(unit)[:-2]
        slice_path = os.path.join(NONMATCHING, stem, fn["name"] + ".s")
        if not os.path.exists(slice_path):
            continue
        with open(slice_path) as f:
            text = f.read()
        addr = int(fn["addr"], 16)
        rows.append(
            {
                "name": fn["name"],
                "unit": stem,
                "addr": addr,
                "isa": fn["isa"],
                "lines": text.count("\n"),
                "aligned": addr % 4 == 0,
                "poolfree": not POOL_TOKEN.search(text),
                "slice": os.path.relpath(slice_path, REPO),
                "reject": "adr" if ADR.search(text) else None,
                "_veneer_body": is_veneer_body(text),
            }
        )

    # A veneer is a `bx pc` body whose next function by address, in the same
    # unit, is not thumb: the stub falls through into it.
    units = collections.defaultdict(list)
    for r in rows:
        units[r["unit"]].append(r)
    for fns in units.values():
        fns.sort(key=lambda r: r["addr"])
        for r, nxt in zip(fns, fns[1:]):
            if r["_veneer_body"] and nxt["isa"] != "thumb" and r["reject"] is None:
                r["reject"] = "veneer"
    for r in rows:
        del r["_veneer_body"]
    return rows


def looks_spliceable(r):
    """Tests 1-4 of the module docstring, before the two exclusions."""
    return r["isa"] == "thumb" and r["aligned"] and r["poolfree"]


def rejected(rows):
    return [r for r in rows if looks_spliceable(r) and r["reject"]]


def candidates(rows):
    return [r for r in rows if looks_spliceable(r) and not r["reject"]]


def by_unit(rows):
    """Units holding at least one candidate, easiest first.

    Ranked by the size of the largest candidate in the unit: the unit is only
    as done as its hardest function, and a batch is sized by that.
    """
    units = collections.defaultdict(list)
    for r in candidates(rows):
        units[r["unit"]].append(r)
    for fns in units.values():
        fns.sort(key=lambda r: r["addr"])
    return sorted(
        units.items(),
        key=lambda kv: (max(r["lines"] for r in kv[1]), -len(kv[1]), kv[0]),
    )


def unit_total(rows, stem):
    return [r for r in rows if r["unit"] == stem]


def print_unit(rows, stem, fns):
    rest = [r for r in unit_total(rows, stem) if r not in fns]
    print(f"{stem}  {len(fns)} candidate(s), {len(rest)} function(s) stay asm")
    for r in fns:
        print(f"    {r['addr']:#010x}  {r['lines']:>4} lines  {r['name']}   {r['slice']}")
    if rest:
        blocked = collections.Counter()
        for r in rest:
            if r["isa"] != "thumb":
                blocked["arm"] += 1
            elif not r["aligned"]:
                blocked["halfword"] += 1
            elif r["reject"]:
                blocked[r["reject"]] += 1
            else:
                blocked["pool"] += 1
        print("    rest: " + ", ".join(f"{n} {k}" for k, n in sorted(blocked.items())))
    print(f"    write partial/{stem}.c, touch partial/{stem}.yml, rm asm/split/{stem}.s")
    print()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--unit", help="one unit by stem, e.g. split_803FAB8")
    ap.add_argument("--units", type=int, help="print the first N units in rank order")
    ap.add_argument("--count", action="store_true", help="the counts only")
    ap.add_argument(
        "--rejected", action="store_true", help="the pool-free slices excluded as veneer or ADR"
    )
    args = ap.parse_args()

    rows = survey()
    cands = candidates(rows)
    units = by_unit(rows)

    if args.count:
        thumb = [r for r in rows if r["isa"] == "thumb"]
        print(f"functions still in asm      {len(rows)}")
        print(f"  arm (phase 7)             {len(rows) - len(thumb)}")
        print(f"  thumb, halfword-aligned   {sum(1 for r in thumb if not r['aligned'])}")
        print(f"  thumb, aligned, pooled    {sum(1 for r in thumb if r['aligned'] and not r['poolfree'])}")
        rej = rejected(rows)
        for why in ("veneer", "adr"):
            n = [r for r in rej if r["reject"] == why]
            print(f"  thumb, aligned, {why:<9} {len(n)}  in {len({r['unit'] for r in n})} units  (excluded)")
        print(f"  thumb, aligned, pool-free {len(cands)}  in {len(units)} units")
        return

    if args.rejected:
        for r in sorted(rejected(rows), key=lambda r: (r["reject"], r["addr"])):
            print(f"{r['reject']:<7} {r['addr']:#010x}  {r['lines']:>4} lines  {r['name']:<28} {r['slice']}")
        return

    if args.unit:
        for stem, fns in units:
            if stem == args.unit:
                print_unit(rows, stem, fns)
                return
        raise SystemExit(f"{args.unit}: no candidate in this unit")

    if args.units:
        for stem, fns in units[: args.units]:
            print_unit(rows, stem, fns)
        return

    print(f"{len(cands)} candidates in {len(units)} units\n")
    print(f"{'unit':<20} {'cands':>5} {'largest':>8} {'total':>6}")
    for stem, fns in units:
        print(
            f"{stem:<20} {len(fns):>5} {max(r['lines'] for r in fns):>8} "
            f"{sum(r['lines'] for r in fns):>6}"
        )


if __name__ == "__main__":
    main()
