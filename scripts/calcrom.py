#!/usr/bin/env python3

"""How much of the ROM is built from source, by object rather than by section name.

    python scripts/calcrom.py winxclub.elf

The previous version classified bytes by ELF section name: `.src*` was C, `.text*`
was assembly. That measured placement, not conversion. The scatter script has
exactly one `.src` region -- `.src1`, the partial/ merged unit -- and every other
converted file lands in a `.text*` region, because scripts/preprocess_compiler_labels.py
renames the compiler's AREA to `text` and armlink names output sections after the
scatter's execution regions. So all 90 .cpp conversions counted as assembly, and
converting a unit moved nothing: six units were matched on 2026-09-24 and the figure
stayed at `800 bytes (0.2807%)` throughout.

What an object was built from is the honest question, and armlink already answers it
in the "Image component sizes" table of winxclub.map: one row per object, with its
Code bytes. An object is matched when src/<name>.c, src/<name>.cpp or a partial/
yml exists for it -- the same basename the scatter places, since src/<unit>.c builds
to the same <unit>.o the assembly did.

The total is armlink's own (`Object Totals`), which is not the 285052 the section
view reported: that one counted whole code-bearing ROM sections, while this counts
every object's Code column wherever it lands, IWRAM included. The two differ by
4712 bytes. This one is used because it is the figure the classification is derived
from; mixing a denominator from one accounting with a numerator from another is how
the old number went wrong.

Veneers are called out separately. They are armlink's, not ours: 37 of them in one
anonymous object, and no amount of decompilation removes them.
"""

import glob
import os
import re
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

RE_ROW = re.compile(r"^\s*(\d+)\s+\d+\s+\d+\s+\d+\s+\d+\s+(\S+\.o)\s*$")
VENEERS = "anon$$obj.o"


def die(message):
    print(f"ERROR: {message}", file=sys.stderr)
    sys.exit(1)


def object_code_sizes(map_path):
    """{object name: Code bytes}, plus armlink's own total, from the map."""
    sizes, total, in_table = {}, None, False
    for line in open(map_path):
        if line.startswith("Image component sizes"):
            in_table = True
            continue
        if not in_table:
            continue
        if "Object Totals" in line:
            total = int(line.split()[0])
            break
        row = RE_ROW.match(line)
        if row:
            sizes[row.group(2)] = int(row.group(1))
    if total is None:
        die(f"no 'Image component sizes' table with an 'Object Totals' row in {map_path}")
    return sizes, total


def built_from_source():
    """Objects with a hand-written source file: the matched ones."""
    sources = glob.glob(os.path.join(REPO, "src", "*.c")) \
        + glob.glob(os.path.join(REPO, "src", "*.cpp")) \
        + glob.glob(os.path.join(REPO, "partial", "*", "*.yml")) \
        + glob.glob(os.path.join(REPO, "partial", "*.yml"))
    return {os.path.basename(p).rsplit(".", 1)[0] + ".o" for p in sources}


def main():
    if len(sys.argv) != 2:
        die(f"no ELF file specified.\nUsage: {sys.argv[0]} path/to/your.elf")
    elf_path = sys.argv[1]
    map_path = re.sub(r"\.elf$", ".map", elf_path)
    if map_path == elf_path or not os.path.exists(map_path):
        die(f"need the link map beside the ELF; expected {map_path}")

    sizes, total = object_code_sizes(map_path)
    matched_objs = built_from_source()

    matched = {o: s for o, s in sizes.items() if o in matched_objs}
    veneers = sizes.get(VENEERS, 0)
    rest = total - sum(matched.values()) - veneers

    def pct(n):
        return 100 * n / total if total else 0

    print(f"Total Code: {total} bytes in {len(sizes)} objects")
    print("---")
    print(f"Matched (src/, partial/): {sum(matched.values()):>8} bytes "
          f"({pct(sum(matched.values())):7.4f}%) in {len(matched)} objects")
    print(f"Not yet matched (asm/):   {rest:>8} bytes ({pct(rest):7.4f}%)")
    print(f"Veneers (armlink):        {veneers:>8} bytes ({pct(veneers):7.4f}%)")


if __name__ == "__main__":
    main()
