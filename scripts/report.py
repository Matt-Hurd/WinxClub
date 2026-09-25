#!/usr/bin/env python3

"""Per-function objdiff scores for every unit that has both a reference and a build.

    python scripts/report.py        build/report.json, plus a summary on stdout

`make check` is still the only verdict. This is for navigation: when a unit does
not match, which of its functions is wrong, and by how much.

The reference is the original assembly for a unit, as a whole translation unit:

    asm/split/<unit>.s        the unit has not been converted yet
    asm/nonmatching/<unit>.s  it has, and this is the asm it replaced
    asm/nonmatching/<unit>/   the splicer's per-function pieces, reassembled in
                              the order config/symbols.yml gives

A unit is scored only when a reference and a built object both exist, so a unit
still wholly in asm contributes nothing -- there is nothing to compare it to.
References are assembled here, into build/report/, not by the Makefile: the
build places either the asm or the C for a unit, never both, so the reference
object is not something a build produces.

objdiff needs function sizes on both sides or it infers boundaries that
disagree and the scores are meaningless. The asm side gets them from
FUNCTION/ENDFUNC in asm/macros/function.inc; the compiled side from tcc's own
PROC/ENDP, with scripts/preprocess_compiler_labels.py moving the ENDP in front
of the literal pool so the last function of a unit is not reported as holding
it. Without either, a unit whose code bytes are identical scores about 20%.

The reference is objdiff's *target* and the built object its *base*, which is
the way round objdiff means them: the asm is what we have to reproduce.

One thing the raw objdiff report gets wrong for this ROM: a literal pool entry
(`_08017440 DCDU ...`) is a labelled word in a code section, so objdiff counts
it as a function and scores it 0% -- the compiled side's pool entries carry no
label to pair with. They are listed separately here and left out of the
function totals. Fixing that properly means naming the compiled pool entries
after the addresses they had, which needs a map this repo does not keep yet.

armasm also emits `$b`, the ARM ELF spec's deprecated mapping symbol for a Thumb
BL pair, at every `bl` in Thumb code. objdiff 3.8.1 hides `$a`, `$t` and `$d`
but does not know `$b`, so it treats each as an ordinary local symbol, gives
one of them an inferred size wherever a literal pool sits inside a function
with code after it, pairs that sized `$b` by name with the first `$b` on the
other side, and aborts with "Failed to find right side symbol for paired left
side symbol" -- even when the two objects are the same file. 16 of the 105
units splice_queue.py offers do that. Both objects are therefore copied into
build/report/ with every `$b` moved to SHN_ABS first, which takes it out of
every section and so out of objdiff's pairing; no relocation refers to one.
"""

import argparse
import glob
import json
import os
import re
import shlex
import shutil
import subprocess
import sys

import yaml

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MAKEFILE = os.path.join(REPO, "Makefile")
SYMBOLS = os.path.join(REPO, "config", "symbols.yml")
SPLITDIR = os.path.join(REPO, "asm", "split")
REFDIR = os.path.join(REPO, "asm", "nonmatching")
BUILD = os.path.join(REPO, "build", "winxclub")
OUTDIR = os.path.join(REPO, "build", "report")
REPORT = os.path.join(REPO, "build", "report.json")
RAW = os.path.join(REPO, "build", "objdiff-report.json")

# A pool entry, not a function: `_08017440 DCDU gUnknown_03003458`.
RE_POOL_LABEL = re.compile(r"^_[0-9A-Fa-f]{7,8}$")


class ReportError(Exception):
    pass


def assembler():
    """(armasm, flags) as the Makefile defines them, so the two cannot drift."""
    found = {}
    with open(MAKEFILE) as fh:
        for line in fh:
            m = re.match(r"^(AS|ASFLAGS)\s*:=\s*(.*?)\s*$", line)
            if m:
                found.setdefault(m.group(1), m.group(2))
    for key in ("AS", "ASFLAGS"):
        if key not in found:
            raise ReportError(f"no {key} := line in Makefile")
        if "$" in found[key]:
            raise ReportError(f"{key} in Makefile refers to another variable "
                              f"({found[key]!r}); report.py cannot expand it")
    return found["AS"], shlex.split(found["ASFLAGS"])


def unit_order(symbols):
    """unit name -> its function names in address order, from config/symbols.yml."""
    order = {}
    for func in symbols["functions"]:
        unit = func["unit"]
        if not unit.startswith("asm/split/"):
            continue
        name = os.path.basename(unit)[:-len(".s")]
        order.setdefault(name, []).append((int(func["addr"], 16), func["name"]))
    return {u: [n for _, n in sorted(fs)] for u, fs in order.items()}


def reference_text(unit, order):
    """The unit's original assembly, as one translation unit, or None."""
    whole = os.path.join(SPLITDIR, f"{unit}.s")
    if os.path.exists(whole):
        return open(whole).read(), f"asm/split/{unit}.s"
    whole = os.path.join(REFDIR, f"{unit}.s")
    if os.path.exists(whole):
        return open(whole).read(), f"asm/nonmatching/{unit}.s"
    pieces = os.path.join(REFDIR, unit)
    if os.path.isdir(pieces):
        if unit not in order:
            raise ReportError(f"{unit}: {pieces} holds per-function pieces but "
                              f"config/symbols.yml does not say what order they go in")
        text = open(os.path.join(pieces, "header.s")).read()
        for name in order[unit]:
            text += open(os.path.join(pieces, f"{name}.s")).read()
        pool = os.path.join(pieces, "pool.s")
        text += open(pool).read() if os.path.exists(pool) else ""
        return text + "\tEND\n", f"asm/nonmatching/{unit}/"
    return None, None


def built_object(unit):
    """The object the build produced for this unit from C or C++, or None."""
    for path in [os.path.join(BUILD, "src", f"{unit}.o")] + sorted(
            glob.glob(os.path.join(BUILD, "merged", "**", f"{unit}.o"), recursive=True)):
        if os.path.exists(path):
            return path
    return None


def units_to_score(order):
    """(unit, reference text, reference path, built object) for every scorable unit."""
    names = sorted(
        {os.path.basename(p)[:-len(".s")] for p in glob.glob(os.path.join(SPLITDIR, "*.s"))}
        | {os.path.basename(p)[:-len(".s")] for p in glob.glob(os.path.join(REFDIR, "*.s"))}
        | {os.path.basename(p) for p in glob.glob(os.path.join(REFDIR, "*"))
           if os.path.isdir(p)})
    out = []
    for unit in names:
        built = built_object(unit)
        if not built:
            continue
        text, where = reference_text(unit, order)
        if text is None:
            continue
        out.append((unit, text, where, built))
    return out


def assemble(unit, text, asm, asflags):
    """Assemble one reference into build/report/<unit>.o."""
    src = os.path.join(OUTDIR, f"{unit}.s")
    obj = os.path.join(OUTDIR, f"{unit}.o")
    with open(src, "w") as fh:
        fh.write(text)
    r = subprocess.run([asm] + asflags + ["-o", obj, src],
                       cwd=REPO, capture_output=True, text=True)
    if r.returncode:
        raise ReportError(f"{unit}: the reference does not assemble\n"
                          f"{r.stdout}{r.stderr}")
    return obj


SHN_ABS = 0xFFF1


def hide_bl_pair_symbols(src, dst):
    """Copy an ELF32 object, moving every `$b` mapping symbol to SHN_ABS.

    Pure struct parsing so this runs under the build's python without
    pyelftools. Only st_shndx changes; sizes, names and relocations do not.
    """
    import struct
    data = bytearray(open(src, "rb").read())
    if data[:4] != b"\x7fELF" or data[4] != 1 or data[5] != 1:
        raise ReportError(f"{src}: not a little-endian ELF32 object")
    shoff, shentsize, shnum = struct.unpack_from("<I", data, 0x20)[0], \
        struct.unpack_from("<H", data, 0x2E)[0], struct.unpack_from("<H", data, 0x30)[0]
    sections = [struct.unpack_from("<10I", data, shoff + i * shentsize) for i in range(shnum)]
    moved = 0
    for sec in sections:
        sh_type, sh_offset, sh_size, sh_link, sh_entsize = sec[1], sec[4], sec[5], sec[6], sec[9]
        if sh_type != 2:  # SHT_SYMTAB
            continue
        str_off, str_size = sections[sh_link][4], sections[sh_link][5]
        strtab = bytes(data[str_off:str_off + str_size])
        for off in range(sh_offset, sh_offset + sh_size, sh_entsize):
            st_name = struct.unpack_from("<I", data, off)[0]
            end = strtab.index(b"\0", st_name)
            if strtab[st_name:end] == b"$b":
                struct.pack_into("<H", data, off + 14, SHN_ABS)
                moved += 1
    with open(dst, "wb") as fh:
        fh.write(data)
    return moved


def objdiff(scored):
    """Run objdiff over the assembled references; returns its raw report."""
    config = {"min_version": "3.0.0", "units": [
        {"name": unit, "target_path": ref, "base_path": built}
        for unit, ref, built in scored]}
    with open(os.path.join(OUTDIR, "objdiff.json"), "w") as fh:
        json.dump(config, fh, indent=1)
    r = subprocess.run(["objdiff-cli", "report", "generate",
                        "-p", OUTDIR, "-o", RAW, "-f", "json"],
                       cwd=REPO, capture_output=True, text=True)
    if r.returncode:
        raise ReportError(f"objdiff-cli failed\n{r.stdout}{r.stderr}")
    with open(RAW) as fh:
        return json.load(fh)


def collate(raw, where, built):
    """objdiff's report, with pool entries separated out from the functions."""
    units = []
    for unit in raw.get("units", []):
        functions, pool = [], []
        for func in unit.get("functions", []):
            entry = {"name": func["name"], "size": int(func.get("size", 0))}
            if RE_POOL_LABEL.match(func["name"]):
                pool.append(entry)
                continue
            entry["match"] = round(func.get("fuzzy_match_percent", 0.0), 4)
            functions.append(entry)
        code = sum(f["size"] for f in functions)
        matched = sum(f["size"] for f in functions if f["match"] == 100.0)
        units.append({
            "unit": unit["name"],
            "reference": where[unit["name"]],
            "built": os.path.relpath(built[unit["name"]], REPO),
            "functions": functions,
            "pool": pool,
            "code_bytes": code,
            "matched_bytes": matched,
        })
    total_funcs = sum(len(u["functions"]) for u in units)
    matched_funcs = sum(1 for u in units for f in u["functions"] if f["match"] == 100.0)
    code = sum(u["code_bytes"] for u in units)
    matched = sum(u["matched_bytes"] for u in units)
    return {
        "units": units,
        "totals": {
            "units": len(units),
            "functions": total_funcs,
            "matched_functions": matched_funcs,
            "code_bytes": code,
            "matched_bytes": matched,
        },
    }


def summarise(report):
    t = report["totals"]
    pct = 100.0 * t["matched_bytes"] / t["code_bytes"] if t["code_bytes"] else 0.0
    print(f"{t['units']} units scored, {t['functions']} functions, "
          f"{t['matched_functions']} at 100% "
          f"({t['matched_bytes']}/{t['code_bytes']} bytes, {pct:.2f}%)")
    unmatched = [(u["unit"], f) for u in report["units"] for f in u["functions"]
                 if f["match"] < 100.0]
    for unit, func in sorted(unmatched, key=lambda p: p[1]["match"]):
        print(f"  {unit:<24} {func['name']:<28} {func['match']:6.2f}%  "
              f"{func['size']} bytes")
    if not unmatched and t["units"]:
        print("  every scored function is byte-for-byte the original")


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.parse_args()

    if not shutil.which("objdiff-cli"):
        print("report.py: objdiff-cli is not installed; no report written")
        return 0

    asm, asflags = assembler()
    with open(SYMBOLS) as fh:
        order = unit_order(yaml.safe_load(fh))

    os.makedirs(OUTDIR, exist_ok=True)
    scored, where, built = [], {}, {}
    for unit, text, ref, obj in units_to_score(order):
        target = assemble(unit, text, asm, asflags)
        hide_bl_pair_symbols(target, target)
        base = os.path.join(OUTDIR, f"{unit}.built.o")
        hide_bl_pair_symbols(obj, base)
        scored.append((unit, target, base))
        where[unit], built[unit] = ref, obj

    if not scored:
        print("report.py: no unit has both a reference and a built object")
        return 0

    report = collate(objdiff(scored), where, built)
    with open(REPORT, "w") as fh:
        json.dump(report, fh, indent=1)
        fh.write("\n")
    summarise(report)
    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except ReportError as exc:
        print(f"report.py: {exc}", file=sys.stderr)
        sys.exit(1)
