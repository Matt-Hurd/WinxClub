#!/usr/bin/env python3
"""An index of notes/parked.md: one table per reason, one row per function.

    python scripts/parked_index.py            markdown to stdout
    python scripts/parked_index.py --write    the same, into notes/parked-index.md
    python scripts/parked_index.py --json     the rows as JSON

parked.md is append-only prose, one entry per attempt. This reads it the way
next.py does (a `## name (where) -- ticket` heading, several names joined by
`,` or `/`, or the older paragraph opening with **`name`**), sorts every entry
under the reason its text names, and joins each function to next.py's survey
for its unit, size and class. A function the survey no longer lists has been
matched or un-parked since; the row says so.

Reasons are keyword scores over the entry text, best score wins:

  tooling      the splicer or merge_partial_c refused it (string literal, pool
               word, ADR, objdiff): nothing about the C is known to be wrong
  registers    the C is right and register allocation differs
  order        instruction or operand order, scheduling
  control      loop rotation, branch layout, shared exits, switch shape
  stack        frame layout, spills, stack arrays
  cpp          vtable, constructor, mangling, tcpp
  helper       inlined or library helper (__rt_*, memclr, division)
  untried      the batch ran out of time before this one
  other        no keyword hit
"""

import argparse
import collections
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import next as nxt  # noqa: E402

REPO = nxt.REPO
PARKED = nxt.PARKED
INDEX = os.path.join(REPO, "notes", "parked-index.md")

REASONS = [
    ("tooling", r"refus|merge_partial_c|A1150E|tooling|string literal|multi-word|"
                r"no such word|objdiff|splicer (?:can|could) ?n[o']t|cannot splice"),
    ("registers", r"register|allocat|\br[0-7]\b"),
    ("order", r"operand order|operand-order|swap|schedul|instruction order|reorder"),
    ("control", r"rotat|loop shape|shared exit|goto|branch layout|switch|jump table|"
                r"early return|fall[- ]through"),
    ("stack", r"\bstack\b|spill|\bsp\b|stack frame"),
    ("cpp", r"vtable|tcpp|ctor|dtor|mangl|constructor|destructor|c\+\+"),
    ("helper", r"__rt_|memclr|memcpy|memset|inline|division|divide|helper"),
    ("untried", r"timed out|not attempted|ran out of|no cycle|untried"),
]
WEIGHT = {"tooling": 3, "untried": 3, "registers": 1, "order": 2, "control": 2,
          "stack": 2, "cpp": 1, "helper": 2}
ORDER = [name for name, _ in REASONS] + ["other"]

HEADING = re.compile(r"^## (.+)$")
BOLD_OPEN = re.compile(r"^\*\*`")
DATE_HEADING = re.compile(r"^## \d{4}-\d\d-\d\d")
TICKET = re.compile(r"winx-[0-9a-z]+(?:\.\d+)?")
PERCENT = re.compile(r"(\d{1,3}\.\d{1,2})%")


def entries(lines):
    """(line number, heading line, body lines) per entry, in file order."""
    starts = [n for n, line in enumerate(lines, 1)
              if HEADING.match(line) or BOLD_OPEN.match(line)]
    out = []
    for i, n in enumerate(starts):
        end = starts[i + 1] - 1 if i + 1 < len(starts) else len(lines)
        out.append((n, lines[n - 1], lines[n - 1:end]))
    return out


def parse(text):
    rows = []
    for n, head, body in entries(text.splitlines()):
        if DATE_HEADING.match(head):
            continue  # a dated note, not a park; next.py skips these too
        names = heading_names(head)
        if not names:
            continue
        blob = "\n".join(body)
        ticket = TICKET.search(head) or TICKET.search(blob[:400])
        rows.append({
            "line": n,
            "names": names,
            "ticket": ticket.group(0) if ticket else None,
            "reason": reason(blob),
            "best": best_percent(blob),
            "note": first_sentence(body[1:] if head.startswith("## ") else body),
            "words": len(blob.split()),
        })
    return rows


def heading_names(head):
    if head.startswith("## "):
        stripped = re.sub(r"\([^)]*\)", "", head[3:]).split(" -- ")[0]
        names = []
        for part in re.split(r"[,/]", stripped):
            m = nxt.IDENT.match(part.strip())
            if m:
                names.append(m.group(0))
        return names
    return nxt.PARKED_BOLD.findall(head)


def reason(blob):
    low = blob.lower()
    scores = {}
    for name, pat in REASONS:
        hits = len(re.findall(pat, low))
        if name == "registers":
            hits -= 4 * len(re.findall(r"not (?:a )?register", low))
        if hits > 0:
            scores[name] = hits * WEIGHT[name]
    if not scores:
        return "other"
    top = max(scores.values())
    for name in ORDER:
        if scores.get(name) == top:
            return name
    return "other"


def best_percent(blob):
    found = [float(p) for p in PERCENT.findall(blob) if float(p) < 100.0]
    return max(found) if found else None


def first_sentence(body, limit=110):
    text = " ".join(ln.strip() for ln in body if ln.strip() and not ln.startswith("```"))
    text = re.sub(r"`", "", text)
    text = re.sub(r"\s+", " ", text)
    if len(text) > limit:
        text = text[:limit].rsplit(" ", 1)[0] + "..."
    return text.replace("|", "\\|")


def join_survey(rows):
    survey, _ = nxt.survey()
    by_name = {r["name"]: r for r in survey}
    out = []
    for row in rows:
        for name in row["names"]:
            rec = by_name.get(name)
            out.append({
                "name": name,
                "unit": rec["unit"] if rec else None,
                "lines": rec["lines"] if rec else None,
                "cls": rec["cls"] if rec else "matched",
                "reason": row["reason"],
                "best": row["best"],
                "ticket": row["ticket"],
                "line": row["line"],
                "note": row["note"],
                "shared": len(row["names"]) > 1,
            })
    return out


def summary_row(label, fs):
    """Entries, distinct functions, distinct functions still in asm, their lines."""
    ents = len({f["line"] for f in fs})
    names = {f["name"] for f in fs}
    rem = {f["name"]: f["lines"] or 0 for f in fs if f["cls"] != "matched"}
    return f"| {label} | {ents} | {len(names)} | {len(rem)} | {sum(rem.values())} |"


def markdown(funcs, rows):
    out = ["# Parked functions, indexed",
           "",
           "Generated by `python scripts/parked_index.py --write` from "
           "`notes/parked.md`; do not edit, regenerate. Each row links to the "
           "line of the entry it came from (`parked.md:NNN`). `cls` is next.py's "
           "class; `matched` means the survey no longer lists the function, so it "
           "has been matched or un-parked since.",
           ""]
    by_reason = collections.defaultdict(list)
    for f in funcs:
        by_reason[f["reason"]].append(f)
    out += ["## Summary", "",
            "| reason | entries | functions | still remaining | asm lines (remaining) |",
            "|---|---|---|---|---|"]
    for r in ORDER:
        fs = by_reason.get(r, [])
        if not fs:
            continue
        out.append(summary_row(r, fs))
    out.append(summary_row("**all**", funcs))
    out.append("")
    for r in ORDER:
        fs = by_reason.get(r, [])
        if not fs:
            continue
        out += [f"## {r}", "",
                "| function | unit | lines | cls | best | ticket | entry | note |",
                "|---|---|---|---|---|---|---|---|"]
        for f in sorted(fs, key=lambda f: (f["cls"] == "matched", f["lines"] or 0, f["name"])):
            best = f"{f['best']:.2f}%" if f["best"] is not None else ""
            out.append(
                f"| {f['name']} | {f['unit'] or ''} | {f['lines'] or ''} | {f['cls']} | "
                f"{best} | {f['ticket'] or ''} | parked.md:{f['line']} | {f['note']} |")
        out.append("")
    return "\n".join(out) + "\n"


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--write", action="store_true", help=f"write {os.path.relpath(INDEX, REPO)}")
    ap.add_argument("--json", action="store_true")
    ap.add_argument("--parked", default=PARKED)
    args = ap.parse_args()
    with open(args.parked) as fh:
        rows = parse(fh.read())
    funcs = join_survey(rows)
    if args.json:
        print(json.dumps(funcs, indent=1))
        return
    text = markdown(funcs, rows)
    if args.write:
        with open(INDEX, "w") as fh:
            fh.write(text)
        print(f"wrote {os.path.relpath(INDEX, REPO)}: {len(rows)} entries, {len(funcs)} functions")
    else:
        sys.stdout.write(text)


if __name__ == "__main__":
    main()
