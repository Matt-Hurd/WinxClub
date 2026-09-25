#!/usr/bin/env python3
"""What to convert next, and why the rest cannot be taken yet.

    python scripts/next.py                  summary: every remaining function by what blocks it
    python scripts/next.py --count          the counts, nothing else
    python scripts/next.py --queue splice   the ready queue, ranked, one line per function
    python scripts/next.py --queue pool     the pool-loading functions, ranked the same way
    python scripts/next.py --unit STEM      one unit: each function and its state
    python scripts/next.py --batches N      N batch tickets off the ready queue, as bd create commands
    python scripts/next.py --json           the whole survey as JSON

A function is *remaining* while its bytes still come from assembly: every function
of a unit that still has asm/split/<unit>.s, and the functions of a partial/ unit
that its source does not define. The converted set of a partial/ unit is read from
its yml's `functions:` when spelled, else from the manifest merge_partial_c.py wrote
beside the merged .s in the last build (build/**/<unit>.s.functions), else from the
definitions in the source itself -- a member written as `Boss::m10` is only known by
its working label after the label pass, so a unit whose manifest is missing and
whose source has members is reported as needing a build.

Each remaining function is put in exactly one class by what its slice under
asm/nonmatching/<unit>/ says:

  splice   Thumb, names no `_0XXXXXXX` pool label, no ADR, not a veneer: the splicer
           takes it today. Alignment is NOT a condition. splice_queue.py required a
           word-aligned start because an AREA cannot begin on a halfword, but the
           splicer never makes an AREA: it drops the compiled instructions into the
           unit's own .s under the unit's own *_func_start line, which carries the
           alignment. sub_800F1DA (non_word_aligned_thumb_func_start) went through
           on 2026-09-25 and make check printed OK.
  pool     Thumb, loads a literal -- its own mid-function pool or the unit's shared
           end pool. Takeable since 2026-09-25: splice_unit.py moves each compiled
           load onto the unit's pool word with the same value, and refuses, naming
           the value, when the unit's pool has no such word or two, or when the
           function kept a pool inside its own body. Measured that day, 273 of
           these in whole-asm units load no value that appears twice in their pool
           and none uses label+offset, so the rewrite is a lookup, not a search.
           The class is kept apart from `splice` because a refusal is still
           possible; --queue pool ranks it the same way.
  adr      Thumb, `ADR rN, label` or `add rN, pc, #imm`: a pc-relative address into
           unit data that no pool token names. armasm rejects the splice (A1150E).
  veneer   a body of exactly `bx pc`: armlink's interworking thunk, no C source.
  arm      an ARM function: armcc, phase 7.

`parked` marks a function notes/parked.md already has a heading for. It stays in
its class -- parking is about attempts, not about what the tooling can take -- but
the ready queue puts parked functions last, and --batches skips them: each has a
deferred retry ticket and releasing that is the owner's call.

Ranking inside a class: a unit that already has a partial/ source first (its build
plumbing exists and one function of it has matched), then fewest asm lines. A
batch is whole units, filled to --per functions, so a unit's candidates ride
together as they did in winx-78k.
"""

import argparse
import collections
import glob
import json
import os
import re
import shlex
import sys

import yaml

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import cpp_evidence  # noqa: E402
from gen import is_code_unit, unit_stem  # noqa: E402

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SYMBOLS = os.path.join(REPO, "config", "symbols.yml")
NONMATCHING = os.path.join(REPO, "asm", "nonmatching")
SPLIT = os.path.join(REPO, "asm", "split")
PARTIAL = os.path.join(REPO, "partial")
PARKED = os.path.join(REPO, "notes", "parked.md")

POOL_TOKEN = re.compile(r"\b_0[0-9A-Fa-f]{7}\b")
ADR = re.compile(r"^\s*(adr\b|add\s+r\d+\s*,\s*pc\b)", re.I | re.M)
FUNC_MACRO = re.compile(r"^\s*(arm|thumb|non_word_aligned_thumb)_func_(start|end)\b")
FUNC_START = re.compile(r"^\s*(arm|thumb|non_word_aligned_thumb)_func_start\s+(\S+)", re.M)
# The name(s) an entry in notes/parked.md is about, in either of its shapes:
# a `## ` heading -- `## name (where) -- ticket`, or several at once as
# `## a, b, c (where)` and `## a / b (where)` -- or, in the older entries, a
# paragraph opening with the name in bold: **`name`** (where, N lines) ...
PARKED_BOLD = re.compile(r"\*\*`?([A-Za-z_]\w*)`?")
IDENT = re.compile(r"^[A-Za-z_]\w*")
# A working label that is a vtable slot (Boss__10, ScannerScriptGroup__Intersect)
# or a mangled member (m38__7DefaultFv, __ct__7DefaultFv): written as a class
# member, in a .cpp. sub_XXXXXXX and gameExit have no double underscore.
MEMBER = re.compile(r"^[A-Z][A-Za-z0-9]*__[A-Za-z0-9]+$|__\d+[A-Za-z]\w*F")
# A definition in a partial/ source: `type name(` or `type Class::name(` at the
# start of a line, not a prototype (no `;` before the brace) and not a call.
DEFINITION = re.compile(
    r"^(?!\s)(?:extern\s+\"C\"\s+)?[\w\s\*&]+?\b(\w+(?:::\w+)?)\s*\([^;{)]*\)\s*(?:\{|$)",
    re.M)

CLASSES = ("splice", "pool", "adr", "veneer", "arm")


def classify(name, text):
    """One slice's state, from its text alone.

    Returns a dict with `cls` (one of CLASSES), `mode`, `lines` (instruction
    lines, macros and blanks excluded), `halfword`, `member`.
    """
    m = FUNC_START.search(text)
    if not m:
        raise ValueError(f"{name}: no *_func_start line")
    mode = m.group(1)
    body = [" ".join(ln.split()) for ln in text.splitlines()
            if ln.strip() and not FUNC_MACRO.match(ln)]
    lowered = [ln.lower() for ln in body]
    if mode == "arm":
        cls = "arm"
    elif lowered in (["bx pc"], ["bx pc", "align"]):
        cls = "veneer"
    elif POOL_TOKEN.search(text):
        cls = "pool"
    elif ADR.search(text):
        cls = "adr"
    else:
        cls = "splice"
    return {
        "cls": cls,
        "mode": mode,
        "lines": len(body),
        "halfword": mode == "non_word_aligned_thumb",
        "member": bool(MEMBER.search(name)),
    }


def parked_names(path=PARKED):
    """Every name notes/parked.md has an entry for.

    A heading gives up what is parenthesised and what follows ` -- ` (the
    slice's path, the ticket), then names one function per comma- or
    slash-separated part; a date heading names none. A bold opener may name
    two on one line (**`a`** and **`b`**), so every bold span on it counts.
    """
    if not os.path.exists(path):
        return set()
    names = set()
    with open(path) as fh:
        for line in fh.read().splitlines():
            if line.startswith("## "):
                head = re.sub(r"\([^)]*\)", "", line[3:]).split(" -- ")[0]
                for part in re.split(r"[,/]", head):
                    m = IDENT.match(part.strip())
                    if m:
                        names.add(m.group(0))
            elif line.startswith("**"):
                names.update(PARKED_BOLD.findall(line))
    return names


def partial_source(stem, partial=PARTIAL):
    for ext in (".c", ".cpp"):
        p = os.path.join(partial, stem + ext)
        if os.path.exists(p):
            return p
    return None


def source_definitions(text):
    """Function names a partial/ source defines. A member comes back as Class::name."""
    return [m.group(1) for m in DEFINITION.finditer(text)]


def converted(stem, repo=REPO):
    """(names the compiler owns in this partial unit, note or None).

    The yml's `functions:` when spelled; else the manifest from the last build;
    else the source's own definitions, with a note when a member is among them,
    because its working label is only known after the label pass.
    """
    yml = os.path.join(repo, "partial", stem + ".yml")
    with open(yml) as fh:
        spec = yaml.safe_load(fh) or {}
    if spec.get("functions"):
        return set(spec["functions"]), None
    manifests = glob.glob(os.path.join(repo, "build", "**", stem + ".s.functions"),
                          recursive=True)
    if manifests:
        with open(manifests[0]) as fh:
            return set(fh.read().split()), None
    src = partial_source(stem, os.path.join(repo, "partial"))
    if not src:
        return set(), f"{stem}: partial/{stem}.yml with no .c or .cpp beside it"
    with open(src) as fh:
        names = source_definitions(fh.read())
    note = None
    if any("::" in n for n in names):
        note = (f"{stem}: members in {os.path.basename(src)} and no build manifest; "
                f"run make check to know its converted set")
    return {n.split("::")[-1] for n in names}, note


def survey(repo=REPO):
    """One record per remaining function, plus the notes the survey raised."""
    with open(os.path.join(repo, "config", "symbols.yml")) as fh:
        symbols = yaml.safe_load(fh)
    by_unit = collections.defaultdict(list)
    for fn in symbols["functions"]:
        if is_code_unit(fn["unit"]):
            by_unit[unit_stem(fn["unit"])].append((int(fn["addr"], 16), fn["name"]))

    parked = parked_names(os.path.join(repo, "notes", "parked.md"))
    evidence = cpp_evidence.units()
    rows, notes = [], []
    for stem, funcs in sorted(by_unit.items()):
        whole = os.path.exists(os.path.join(repo, "asm", "split", stem + ".s"))
        partial = os.path.exists(os.path.join(repo, "partial", stem + ".yml"))
        if not (whole or partial):
            continue  # built from src/ or the older partial shape: nothing left in asm
        done = set()
        if partial:
            done, note = converted(stem, repo)
            if note:
                notes.append(note)
        # The source to add to, when one exists, decides the compiler; a fresh
        # unit follows cpp_evidence.py's one-sided verdict (.cpp only when proven).
        src = partial_source(stem, os.path.join(repo, "partial")) if partial else None
        if src:
            ext = os.path.splitext(src)[1]
        else:
            tier = evidence.get(stem, {}).get("tier")
            ext = ".cpp" if tier in (cpp_evidence.PROVEN, cpp_evidence.VTABLE) else ".c"
        for addr, name in sorted(funcs):
            if name in done:
                continue
            path = os.path.join(repo, "asm", "nonmatching", stem, name + ".s")
            if not os.path.exists(path):
                notes.append(f"{stem}: no slice for {name}")
                continue
            with open(path) as fh:
                rec = classify(name, fh.read())
            rec.update(unit=stem, name=name, addr=f"0x{addr:08X}",
                       parked=name in parked, has_partial=partial, ext=ext)
            rows.append(rec)
    return rows, notes


def rank_key(rec):
    return (rec["parked"], not rec["has_partial"], rec["lines"], rec["name"])


def queue(rows, cls, include_parked=True):
    out = [r for r in rows if r["cls"] == cls and (include_parked or not r["parked"])]
    return sorted(out, key=rank_key)


def batches(rows, count, per=5, max_lines=None, min_lines=0):
    """Whole units off the ready queue, `per` functions per batch, smallest first.

    `min_lines` leaves out the one-line stubs: they convert, but a dry run that
    is meant to measure the loop learns nothing from `bx lr`.
    """
    ready = [r for r in rows if r["cls"] == "splice" and not r["parked"]
             and min_lines <= r["lines"] and (max_lines is None or r["lines"] <= max_lines)]
    units = collections.defaultdict(list)
    for r in ready:
        units[r["unit"]].append(r)
    order = sorted(units, key=lambda u: min(rank_key(r) for r in units[u]))
    out, cur = [], []
    for u in order:
        cur.extend(sorted(units[u], key=rank_key))
        if len(cur) >= per:
            out.append(cur)
            cur = []
            if len(out) == count:
                break
    if cur and len(out) < count:
        out.append(cur)
    return out


TICKET = """\
Convert {nfun} function(s) across {nunit} unit(s), {lines} asm lines in all, each byte-matching.
Batch {i} of {n} of the phase 5 loop dry run: the recipe is .agents/workflows/decompiling_to_c.md
and the budget is notes/matching-protocol.md -- three build-and-compare cycles per function,
then park it and finish the rest of the batch.

Units, the source to write, and the function(s) to convert in each:
{units}

Everything else in those units stays assembly. Per unit the work is three files:
  partial/<unit>.c or .cpp   the listed function(s), nothing else ({ext_rule})
  partial/<unit>.yml         empty; merge_partial_c.py infers unit, source and functions
  rm asm/split/<unit>.s      (a unit that already has a partial/ source: add to it)
plus tests/golden/<unit>.o, which make check freezes when the ROM matches -- commit it with
the conversion; a unit you revert must have its golden deleted or make check says 'stale'.
Leave config/symbols.yml, scatter_script.txt and include/generated/ alone unless a global
needs a decl: (then run python scripts/gen.py). No Makefile change is needed or allowed.

Check: make check prints winxclub.gba: OK and build/report.json scores each converted
function 100.0. That is the only verdict.

Parking: restore asm/split/<unit>.s (or keep the unit's matched functions and leave the
parked one in asm/nonmatching/), append ONE entry to notes/parked.md with a single
cat >> command, and file the deferred retry ticket the protocol shows, linked
discovered-from this one. A parked function is a correct outcome, not a failed ticket.

Out of scope: renaming anything, the unit's other functions, pool-loading or ARM
functions, the Makefile, tools/, config/fixups.yml.
"""


def ticket_commands(groups, parent):
    n = len(groups)
    cmds = []
    for i, g in enumerate(groups, 1):
        by_unit = collections.OrderedDict()
        for r in g:
            by_unit.setdefault(r["unit"], []).append(r)
        unit_lines = []
        for u, rs in by_unit.items():
            names = ", ".join(f"{r['name']} ({r['lines']} lines"
                              f"{', halfword start' if r['halfword'] else ''}"
                              f"{', member' if r['member'] else ''})" for r in rs)
            note = " -- has partial/ source already" if rs[0]["has_partial"] else ""
            unit_lines.append(f"  {u}  {rs[0]['ext']}  {names}{note}")
        title = (f"Loop dry run, batch {i} of {n}: {len(by_unit)} unit(s), "
                 f"{len(g)} function(s)")
        body = TICKET.format(
            nfun=len(g), nunit=len(by_unit), lines=sum(r["lines"] for r in g),
            i=i, n=n, units="\n".join(unit_lines),
            ext_rule="the verdict of python scripts/cpp_evidence.py <unit> is given per unit")
        cmds.append(f"bd create {shlex.quote(title)} -t task --parent {parent} -p 2 "
                    f"-l effort:medium --body-file - <<'EOF'\n{body}EOF\n")
    return "\n".join(cmds)


def summary(rows, notes):
    total = len(rows)
    print(f"{total} functions still in assembly, {len({r['unit'] for r in rows})} units\n")
    print(f"{'class':8} {'all':>5} {'parked':>7} {'ready':>6}  {'halfword':>8}  {'in partial/':>11}")
    for cls in CLASSES:
        rs = [r for r in rows if r["cls"] == cls]
        p = sum(r["parked"] for r in rs)
        print(f"{cls:8} {len(rs):5} {p:7} {len(rs) - p:6}  "
              f"{sum(r['halfword'] for r in rs):8}  {sum(r['has_partial'] for r in rs):11}")
    ready = queue(rows, "splice", include_parked=False)
    if ready:
        sizes = sorted(r["lines"] for r in ready)
        print(f"\nready queue: {len(ready)} functions, lines p50 {sizes[len(sizes) // 2]} "
              f"max {sizes[-1]}; head:")
        for r in ready[:10]:
            print(f"  {r['unit']:16} {r['name']:32} {r['lines']:4} lines"
                  f"{'  halfword' if r['halfword'] else ''}{'  member' if r['member'] else ''}")
    for note in notes:
        print(f"note: {note}", file=sys.stderr)


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--count", action="store_true")
    ap.add_argument("--queue", choices=CLASSES)
    ap.add_argument("--include-parked", action="store_true")
    ap.add_argument("--limit", type=int)
    ap.add_argument("--unit")
    ap.add_argument("--batches", type=int, metavar="N")
    ap.add_argument("--per", type=int, default=5, help="functions per batch (default 5)")
    ap.add_argument("--max-lines", type=int, help="leave larger functions out of --batches")
    ap.add_argument("--min-lines", type=int, default=0,
                    help="leave smaller functions out of --batches (the bx-lr stubs)")
    ap.add_argument("--parent", default="winx-dqh", help="epic for --batches tickets")
    ap.add_argument("--json", action="store_true")
    args = ap.parse_args()

    rows, notes = survey()
    if args.json:
        json.dump({"functions": rows, "notes": notes}, sys.stdout, indent=1)
        print()
    elif args.count:
        c = collections.Counter(r["cls"] for r in rows)
        print(f"remaining {len(rows)}  " + "  ".join(f"{k} {c[k]}" for k in CLASSES)
              + f"  parked {sum(r['parked'] for r in rows)}")
    elif args.unit:
        rs = sorted((r for r in rows if r["unit"] == args.unit), key=lambda r: r["addr"])
        if not rs:
            sys.exit(f"{args.unit}: nothing of it is still assembly")
        for r in rs:
            print(f"{r['addr']} {r['name']:32} {r['cls']:7} {r['lines']:4} lines"
                  f"{'  halfword' if r['halfword'] else ''}"
                  f"{'  parked' if r['parked'] else ''}{'  member' if r['member'] else ''}")
    elif args.queue:
        rs = queue(rows, args.queue, args.include_parked or args.queue != "splice")
        for r in rs[:args.limit]:
            flags = [k for k in ("halfword", "parked", "member") if r[k]]
            print("\t".join([r["unit"], r["name"], str(r["lines"]), r["ext"]] + flags))
    elif args.batches:
        groups = batches(rows, args.batches, args.per, args.max_lines, args.min_lines)
        print(ticket_commands(groups, args.parent))
    else:
        summary(rows, notes)
    return 0


if __name__ == "__main__":
    sys.exit(main())
