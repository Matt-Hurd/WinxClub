"""Per-file rewrites, from config/fixups.yml. Owner-only data; see that file.

A fixup is a fake match in disguise: the C did not become right, its asm was
patched on the way past. This pass exists so that the ones that exist are
visible, justified and approved rather than buried in a script, not as a route
for adding more (CLAUDE.md; notes/automation-plan.md "Rules that make it
agent-safe"). An agent that cannot match a function parks it.

    fixups:
    - unit: Kiko                 # the .s file's stem; nothing else is touched
      why: |                     # the justification, read by a human
        ...
      match:                     # consecutive lines, whitespace-stripped, each a
      - 'LSR      r0,r0,#24'     # regex that must match the whole line
      - 'LSL      r3,r0,#1'
      replace:                   # the same number of lines; $1, $2 ... are the
      - 'LSR      r0,r0,#24'     # groups the match patterns captured, in order
      - 'LSL      r1,r0,#1'
      once: true                 # only the first occurrence (default: every one)

The replacement keeps the indentation of the first matched line.
"""

import re

RE_GROUP = re.compile(r"\$(\d+)")


def compile_rule(rule):
    match = [re.compile(p) for p in rule["match"]]
    replace = list(rule["replace"])
    if len(match) != len(replace):
        raise ValueError(f"fixup for {rule.get('unit')}: match and replace differ in length")
    return match, replace, bool(rule.get("once", False))


def apply_rule(lines, rule):
    match, replace, once = compile_rule(rule)
    stripped = [l.strip() for l in lines]
    out = []
    i = 0
    n = len(match)
    while i < len(lines):
        groups = []
        hit = i + n <= len(lines)
        if hit:
            for pat, s in zip(match, stripped[i:i + n]):
                m = pat.fullmatch(s)
                if not m:
                    hit = False
                    break
                groups.extend(m.groups())
        if not hit:
            out.append(lines[i])
            i += 1
            continue
        indent = lines[i][:len(lines[i]) - len(lines[i].lstrip())]
        for text in replace:
            out.append(indent + RE_GROUP.sub(lambda g: groups[int(g.group(1)) - 1], text) + "\n")
        i += n
        if once:
            out.extend(lines[i:])
            break
    return out


def apply(lines, ctx):
    rules = (ctx.config.get("fixups") or {}).get("fixups") or []
    for rule in rules:
        if rule["unit"] == ctx.unit:
            lines = apply_rule(lines, rule)
    return lines
