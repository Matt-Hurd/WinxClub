"""tcpp's stub constructor.

A ported vtable class is declared with a constructor so that tcpp emits the
vtable at all, but the constructor the original ROM has lives in asm already.
When the emitted `__ct__` body is a stub (under 20 lines), strip_stub removes:

- the constructor PROC and its EXPORT;
- `IMPORT __nw__FUi` if nothing but the constructor used operator new, and
  every `IMPORT __ct__*` (a base constructor only the stub called);
- the `i.__dt__*` COMDEF AREAs tcpp generates for an inherited virtual
  destructor, and their EXPORTs -- the vtable slot already names the asm one;
- the constructor's own literal pool entry (`DCW 0000`, a label, then
  `DCD __VTABLE__...`, and nothing else in that pool) when tcpp placed it
  inside a neighbouring PROC. A vtable entry in a pool with more entries is
  shared with a real method and stays; so does one anything still loads.

A real constructor (20 lines or more) is left alone.

align_pools then puts an ALIGN before each `_pool_` label in such a file,
because with the constructor gone the code before the pool may end on a
halfword and LDR needs the pool word-aligned. It only runs when strip_stub
actually removed something, which is what ctx.constructor_stripped records.
"""

import re

RE_CTOR_PROC = re.compile(r"^(\S*__ct__\S+)\s+PROC")
RE_DT_AREA = re.compile(r"(__dt__\S+?)\|")


def constructor_name(lines):
    for line in lines:
        m = RE_CTOR_PROC.match(line)
        if m:
            return m.group(1)
    return None


def constructor_is_stub(lines):
    in_ct, count = False, 0
    for line in lines:
        if "__ct__" in line and "PROC" in line:
            in_ct = True
            continue
        if in_ct and line.strip() == "ENDP":
            break
        if in_ct and line.strip():
            count += 1
    return count < 20


def operator_new_used_outside(lines, ctor):
    in_ctor = False
    for line in lines:
        if ctor and line.strip().startswith(f"{ctor} PROC"):
            in_ctor = True
        elif in_ctor and line.strip() == "ENDP":
            in_ctor = False
        elif not in_ctor and "IMPORT" not in line and "__nw__FUi" in line:
            return True
    return False


def strip_stub(lines, ctx):
    has_vtable = any("AREA __VTABLE__" in l for l in lines)
    has_ctor = any("__ct__" in l and "PROC" in l for l in lines)
    if not (has_vtable and has_ctor and constructor_is_stub(lines)):
        return lines

    ctor = constructor_name(lines)
    out = []
    in_ctor, in_dt = False, False
    stripped_dt = set()
    for line in lines:
        s = line.strip()
        if ctor and s.startswith(f"{ctor} PROC"):
            in_ctor = True
            ctx.constructor_stripped = True
            continue
        if in_ctor and s == "ENDP":
            in_ctor = False
            continue
        if in_ctor:
            continue
        if ctor and f"EXPORT {ctor}" in line:
            continue
        if "IMPORT __nw__FUi" in line and not operator_new_used_outside(lines, ctor):
            continue
        if "IMPORT __ct__" in line:
            continue
        if "AREA" in line and "i.__dt__" in line:
            in_dt = True
            m = RE_DT_AREA.search(line)
            if m:
                stripped_dt.add(m.group(1))
            continue
        if in_dt:
            if s == "ENDP":
                in_dt = False
            continue
        if "EXPORT __dt__" in line and s.replace("EXPORT ", "") in stripped_dt:
            continue
        out.append(line)
    return strip_constructor_pool(out)


RE_POOL_LABEL = re.compile(r"^(_pool_\d+_\d+)_0$")
RE_DATA = re.compile(r"^DC[BDWQ]U?\b")


def is_pool_label(s):
    return s.isdigit() or bool(RE_POOL_LABEL.match(s))


def strip_constructor_pool(lines):
    """Drop `[DCW 0000] <label> DCD __VTABLE__...`: the stub's one-entry pool."""
    out = []
    i = 0
    while i < len(lines):
        s = lines[i].strip()
        if s == "DCW      0000" or is_pool_label(s):
            j = i + 1
            label = s if is_pool_label(s) else None
            if s == "DCW      0000":
                while j < len(lines) and not lines[j].strip():
                    j += 1
                if j < len(lines) and is_pool_label(lines[j].strip()):
                    label = lines[j].strip()
                    j += 1
            while j < len(lines) and not lines[j].strip():
                j += 1
            if j < len(lines):
                nxt = lines[j].strip()
                if "DCD" in nxt and "__VTABLE__" in nxt and not shared(lines, label, j):
                    i = j + 1
                    continue
        out.append(lines[i])
        i += 1
    return out


def shared(lines, label, entry):
    """Is the pool entry at `entry`, labelled `label`, still in use?

    True when the pool holds a second entry (the next non-blank line after the
    entry is another label of the same pool, or another data word), or when a
    surviving line still loads this one.
    """
    m = RE_POOL_LABEL.match(label or "")
    if m:
        base = m.group(1) + "_"
        k = entry + 1
        while k < len(lines) and not lines[k].strip():
            k += 1
        if k < len(lines) and (lines[k].strip().startswith(base)
                               or RE_DATA.match(lines[k].strip())):
            return True
        ref = re.compile(r"\b" + re.escape(label) + r"\b")
        return any(ref.search(l) for l in lines if l.strip() != label)
    return False


def align_pools(lines, ctx):
    if not (ctx.constructor_stripped and ctx.path.endswith(".s")):
        return lines
    out = []
    for i, line in enumerate(lines):
        if i > 0 and line.strip().startswith("_pool_"):
            prev = lines[i - 1].strip()
            if not prev.startswith("DCW") and prev != "ALIGN":
                out.append("\tALIGN\n")
        out.append(line)
    return out
