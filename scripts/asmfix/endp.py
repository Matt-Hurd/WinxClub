"""ENDP before the literal pool.

tcc closes the last function's PROC after the translation unit's literal
pool, so armasm gives that function a size covering the pool, and every unit
with an end pool -- 265 of 282 -- scores below 100% against a reference whose
pool sits outside the function (asm/macros/function.inc puts *_func_end before
the pool). Moving the ENDP in front of the trailing data run gives the function
the size the original had. ENDP is bookkeeping: nothing is emitted, no byte
moves. (notes/automation-plan.md, phase 3.)
"""

import re

RE_POOL_DATA = re.compile(r"^(DC[BDWQ]U?|SPACE|FILL|ALIGN)\b", re.IGNORECASE)
RE_POOL_LABEL = re.compile(r"^(\d+|_pool_\w+|\|L[\w.]*\||_0[0-9A-Fa-f]{7})$")


def before_pool(lines, ctx):
    moves = []
    for i, line in enumerate(lines):
        if line.strip() != "ENDP":
            continue
        j = i - 1
        while j >= 0:
            s = lines[j].strip()
            if s == "" or RE_POOL_DATA.match(s) or RE_POOL_LABEL.match(s):
                j -= 1
            else:
                break
        if j + 1 < i:
            moves.append((i, j + 1))
    if not moves:
        return lines
    out = list(lines)
    for endp_at, pool_at in reversed(moves):
        out.insert(pool_at, out.pop(endp_at))
    return out
