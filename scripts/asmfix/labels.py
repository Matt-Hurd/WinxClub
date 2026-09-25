"""Compiler labels.

tcc and tcpp write local labels as |L<n>.<m>| and refer to a literal pool
entry as |L<n>.<m>| + <offset>. armasm has numeric local labels (a definition
is a bare number, a reference is %<number>) but no "label + offset" syntax, so
a pool label gets one named label per entry instead: _pool_<n>_<m>_<offset>.
A pool label is one the compiler defines with the DATA marker (a data word in
a code section is a literal pool entry), or one ever referenced with an
offset. The marker alone catches a one-entry pool, which no offset names;
without it that label became a numeric local, which armasm keeps out of the
symbol table, so pools.py had nothing to give the address to.

rewrite      turns every definition and reference into one of those two forms.
expand_pools inserts the per-entry labels after each _pool_..._0 definition,
             walking the DCD/DCW/DCQ/DCB run that follows it.
"""

import re

RE_DEF = re.compile(r"^\s*\|L(\d+)\.(\d+)\|", re.IGNORECASE)
RE_REF = re.compile(r"\|L(\d+)\.(\d+)\|", re.IGNORECASE)
RE_REF_OFFSET = re.compile(r"\|L(\d+)\.(\d+)\|(\s*\+\s*(\d+))?")
RE_DATA_DEF = re.compile(r"^\s*\|L(\d+)\.(\d+)\|\s+DATA\b")
RE_POOL_DEF = re.compile(r"^(_pool_\d+_\d+)_0$")


def pool_name(n, m):
    return f"_pool_{n}_{m}"


def find_pool_labels(lines):
    """The (n, m) labels defined with DATA or referenced with an offset anywhere in the unit."""
    offsets = {}
    pools = set()
    for line in lines:
        d = RE_DATA_DEF.match(line)
        if d:
            pools.add((d.group(1), d.group(2)))
        for m in RE_REF_OFFSET.finditer(line):
            key = (m.group(1), m.group(2))
            offsets.setdefault(key, set()).add(int(m.group(4)) if m.group(4) else 0)
    return pools | {k for k, seen in offsets.items() if max(seen) > 0}


def rewrite(lines, ctx):
    pools = find_pool_labels(lines)
    out = []
    for line in lines:
        d = RE_DEF.match(line)
        if d:
            key = (d.group(1), d.group(2))
            # A definition line loses everything after the label, `DATA` included.
            line = f"{pool_name(*key)}_0\n" if key in pools else f"{d.group(2)}\n"
        else:
            def local_ref(m):
                key = (m.group(1), m.group(2))
                return m.group(0) if key in pools else f"%{m.group(2)}"
            line = RE_REF.sub(local_ref, line)
            for key in pools:
                pipe = f"|L{key[0]}.{key[1]}|"
                name = pool_name(*key)
                line = re.sub(re.escape(pipe) + r"\s*\+\s*(\d+)",
                              lambda m: f"{name}_{m.group(1)}", line)
                line = line.replace(pipe, f"{name}_0")
        out.append(line)
    return out


def dcb_size(stripped):
    """Bytes a DCB line emits: a quoted string's characters, or the value count."""
    if '"' in stripped:
        m = re.search(r'"([^"]*)"', stripped)
        if not m:
            return 1
        raw = m.group(1)
        return len(raw.replace("\\0", "\x00").replace("\\n", "\n")
                   .replace("\\t", "\t").replace("\\\\", "\\"))
    return len(stripped[3:].split(","))


def expand_pools(lines, ctx):
    if not any(RE_POOL_DEF.match(l.strip()) for l in lines):
        return lines
    out = []
    i = 0
    while i < len(lines):
        line = lines[i]
        m = RE_POOL_DEF.match(line.strip())
        if not m:
            out.append(line)
            i += 1
            continue
        base = m.group(1)
        out.append(line)
        i += 1
        offset = 0
        while i < len(lines):
            entry = lines[i]
            s = entry.strip()
            if s.startswith(("DCD", "DCW", "DCQ")):
                if offset > 0:
                    out.append(f"{base}_{offset}\n")
                out.append(entry)
                offset += 8 if s.startswith("DCQ") else 4 if s.startswith("DCD") else 2
            elif s.startswith("DCB"):
                if offset > 0:
                    out.append(f"{base}_{offset}\n")
                out.append(entry)
                offset += dcb_size(s)
            elif s == "" or s.startswith(";"):
                out.append(entry)
            else:
                break
            i += 1
    return out
