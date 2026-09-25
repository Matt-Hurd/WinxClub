"""AREA names and vtable entries.

- tcc names the code section `||.text||`; the original objects call it `text`.
  (objdiff does not care -- notes/automation-plan.md phase 3 -- but the scatter
  script's selectors do.)
- tcpp puts a class vtable in a `COMDEF, CODE, READONLY` AREA. The original had
  it as `DATA, READONLY`, and armlink sorts the two kinds differently, so the
  attribute decides where the vtable lands (notes/compiler_findings.md).
- Inside a vtable AREA tcpp writes each entry as `sym + <slot> - {PC}`; the
  original wrote `sym - <vtable name>`, which is the same offset without the
  slot term. The name used here is still tcpp's; vtables.rename_areas fixes it.
"""

import re

RE_VTABLE_NAME = re.compile(r"__VTABLE_[a-zA-Z0-9_]+")
RE_PC_ENTRY = re.compile(r"(\s*\+\s*\d+)?\s*-\s*\{PC\}")


def rename(lines, ctx):
    out = []
    vtable = None
    for line in lines:
        if line.startswith("        AREA ||.text||"):
            line = line.replace("||.text||", "text")
        if "AREA __VTABLE__" in line:
            if "CODE" in line:
                line = line.replace(", COMDEF, CODE, READONLY", ", DATA, READONLY")
            m = RE_VTABLE_NAME.search(line)
            if m:
                vtable = m.group(0)
        elif line.startswith("        AREA "):
            vtable = None
        if vtable and "- {PC}" in line:
            line = RE_PC_ENTRY.sub(f" - {vtable}", line)
        out.append(line)
    return out
