#!/usr/bin/env python3
"""Compile one C file and diff one function against its slice, under any flags.

    python scripts/regtest.py FILE.c UNIT FUNC ["-O2 -Otime -apcs /interwork"]

FILE.c (or .cpp, via tcpp) defines FUNC; UNIT is the asm/nonmatching directory
holding FUNC.s. Prints MATCH or the number of differing instruction lines;
REGTEST=-v in the environment prints the diff. Labels, register-list spelling
and adds/mov synonyms are normalised, so only real differences count.
"""
import re, subprocess, sys, os, difflib, tempfile
TCC = "/opt/arm/linux/bin/tcc"; TCPP = "/opt/arm/linux/bin/tcpp"
BASE = ["-Wi", "-Wp", "-Wb", "-S", "-g-", "-fpu", "none"]
REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

def norm(lines):
    out, labmap = [], {}
    def lab(name):
        if name not in labmap: labmap[name] = f"L{len(labmap)}"
        return labmap[name]
    for ln in lines:
        s = ln.strip()
        if not s: continue
        if re.match(r"^\d+$", s): out.append(lab(s) + ":"); continue
        m = re.match(r"^\|L1\.\d+\|$", s)
        if m: out.append(lab(s) + ":"); continue
        if re.match(r"^(thumb_func_(start|end)|non_word_aligned_thumb_func_(start|end)|ALIGN|CODE16|PROC|ENDP|EXPORT|IMPORT|AREA|END|DCW|DCD|DCDU|DCB|REQUIRE8|PRESERVE8)\b", s, re.I): continue
        if re.match(r"^\|L1\.\d+\|\s+DATA$", s) or re.match(r"^_0[0-9A-Fa-f]{7}\s+DC", s): continue  # a pool label, not a branch target
        s = re.sub(r"^(ldr\s+r\d,\s*)(\|L1\.\d+\|(?:\s*\+\s*\d+)?|_0[0-9A-Fa-f]{7})$", r"\1pool", s, flags=re.I)
        s = re.sub(r"%(\d+)", lambda m: lab(m.group(1)), s)
        s = re.sub(r"\|L1\.\d+\|", lambda m: lab(m.group(0)), s)
        s = s.split(";")[0].lower().replace("\t", " ")
        s = re.sub(r"\s+", " ", s).strip()
        s = re.sub(r",\s*", ",", s)
        s = re.sub(r"#0x([0-9a-f]+)", lambda m: "#" + str(int(m.group(1), 16)), s)
        s = re.sub(r"\[(r\d),#0\]", r"[\1]", s)
        s = re.sub(r"r(\d)-r(\d)", lambda m: ",".join(f"r{i}" for i in range(int(m.group(1)), int(m.group(2)) + 1)), s)
        s = re.sub(r"_0[0-9a-f]{7}\b|\bl\d+ \+ \d+\b|\|l1\.\d+\|( \+ \d+)?", "pool", s)
        # armasm unified vs tcc: 'adds r5,r1,#0' == 'mov r5,r1'; 'lsls' == 'lsl' etc
        s = re.sub(r"^(add|sub|lsl|lsr|asr|mov|mvn|and|orr|eor|neg|mul|bic|cmp)s\b", r"\1", s)
        s = re.sub(r"^mov (r\d),(r\d)$", r"add \1,\2,#0", s)
        s = re.sub(r"^\{|\}$", "", s)
        out.append(s)
    return out

def slice_lines(unit, func):
    p = os.path.join(REPO, "asm", "nonmatching", unit, func + ".s")
    return norm(open(p).read().splitlines())

def compile_lines(cfile, func, flags):
    out = os.path.join(tempfile.mkdtemp(prefix="regtest-"), os.path.basename(cfile) + ".s")
    r = subprocess.run([TCPP if cfile.endswith(".cpp") else TCC] + BASE + flags + ["-I", os.path.join(REPO, "include"), "-o", out, cfile], capture_output=True, text=True)
    if r.returncode: return None, r.stderr.strip()[:300]
    txt = open(out).read().splitlines()
    body, on = [], False
    for ln in txt:
        if re.match(rf"^{re.escape(func)}\s+PROC", ln): on = True; continue
        if on and re.match(r"^\s*ENDP", ln): break
        if on: body.append(ln)
    return norm(body), ""

if __name__ == "__main__":
    cfile, unit, func = sys.argv[1:4]
    flags = sys.argv[4].split() if len(sys.argv) > 4 else ["-O2", "-Otime", "-apcs", "/interwork"]
    ref = slice_lines(unit, func)
    got, err = compile_lines(cfile, func, flags)
    if got is None: print("COMPILE ERROR", err); sys.exit(2)
    d = list(difflib.unified_diff(ref, got, "rom", "tcc", lineterm="", n=0))
    diffs = sum(1 for l in d if l.startswith(("+", "-")) and not l.startswith(("+++", "---")))
    print(f"{'MATCH' if not diffs else str(diffs)+' diff lines'}  flags={' '.join(flags)}")
    if diffs and "-v" in os.environ.get("REGTEST", ""): print("\n".join(d))
