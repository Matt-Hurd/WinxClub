"""Pool entries named by the address they had.

The original assembly labels every literal pool word with its ROM address
(`_08000D60 DCDU gUnknown_03003E84`). The compiler's pool carries the labels
labels.py made up (`_pool_1_228_0`), and objdiff pairs symbols by name, so
the reference entry has no partner: it is reported as a function at 0%, and a
unit whose every function matches still scores below 100% at section level.

config/symbols.yml records, per asm unit, its pool words' addresses in order
(`pools:`, written by gen.py --extract from those labels). This pass gives
the compiled unit's pool labels the same names, by position: each compiled
pool starts at the first recorded address not yet passed, and an entry at
byte offset <off> in it (the offset is the label's own suffix, tcc's
arithmetic) takes the address base + <off> when the record has that word. A
unit that matches lays its pool out exactly as the original did, so this is
the pairing; a unit that does not match gets the same pairing as a best
effort, which shows which entry is wrong. A string is one compiled entry
over several reference words; the words inside it have no compiled label and
need none, since armasm writes no symbol for a label nothing references, so
objdiff never sees them either. An entry at an unrecorded offset keeps its
_pool_ name. A unit with no record is left alone: one whose reference is a
golden object, or a partial compile the splicer is about to cut up, whose
pool is never the unit's (scripts/merge_partial_c.py passes an empty record).

A named entry is also written the way the original asm writes it, label and
directive on one line (`_0803FB54 DCD 0x0000fffe`): armasm then gives the
symbol the directive's size and OBJECT type, as the reference has, where a
label on its own line has neither and objdiff guesses the size -- and guesses
2 for a last entry whose upper halfword is zero, which scored `0x0000FFFE`
at 95% against its identical self.

Renaming a label moves no byte, nor does joining it to its directive: every
load of a pool entry is PC-relative and resolved by armasm, and no relocation
names one.
"""

import re

from .labels import dcb_size

RE_POOL_DEF = re.compile(r"^(_pool_(\d+_\d+)_(\d+))$")
RE_POOL_REF = re.compile(r"\b_pool_\d+_\d+_\d+\b")
RE_DATA = re.compile(r"^(DCB|DCW|DCD|DCQ)U?\b")


def address_name(addr):
    return "_%08X" % addr


def data_size(stripped):
    if stripped.startswith("DCB"):
        return dcb_size(stripped)
    return {"DCW": 2, "DCD": 4, "DCQ": 8}[stripped[:3]]


def pool_blocks(lines):
    """[(entries, extent)] per compiled pool, in file order.

    `entries` is [(label, offset)] from the labels' suffixes; `extent` is the
    pool's size in bytes, the last entry's offset plus its data.
    """
    blocks = []
    i = 0
    while i < len(lines):
        m = RE_POOL_DEF.match(lines[i].strip())
        if not m or m.group(3) != "0":
            i += 1
            continue
        key, entries, offset, size = m.group(2), [], 0, 0
        while i < len(lines):
            s = lines[i].strip()
            d = RE_POOL_DEF.match(s)
            if d and d.group(2) == key:
                offset, size = int(d.group(3)), 0
                entries.append((d.group(1), offset))
            elif RE_DATA.match(s):
                size += data_size(s)
            elif s and not s.startswith(";"):
                break
            i += 1
        blocks.append((entries, offset + size))
    return blocks


def name_entries(lines, ctx):
    blocks = pool_blocks(lines)
    if not blocks:
        return lines
    addrs = ctx.pool_addresses()
    if not addrs:
        return lines
    recorded, names, floor = set(addrs), {}, addrs[0]
    for entries, extent in blocks:
        base = next((a for a in addrs if a >= floor), None)
        if base is None:
            break
        for label, offset in entries:
            if base + offset in recorded:
                names[label] = address_name(base + offset)
        floor = base + extent
    if not names:
        return lines
    out = [RE_POOL_REF.sub(lambda m: names.get(m.group(0), m.group(0)), line)
           for line in lines]
    return join_directives(out, set(names.values()))


def join_directives(lines, named):
    """`<name>` on one line and its DC directive on the next become one line."""
    out = []
    i = 0
    while i < len(lines):
        s = lines[i].strip()
        if s in named and i + 1 < len(lines) and RE_DATA.match(lines[i + 1].strip()):
            out.append(f"{s} {lines[i + 1].strip()}\n")
            i += 2
            continue
        out.append(lines[i])
        i += 1
    return out
