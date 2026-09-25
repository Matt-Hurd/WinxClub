#!/usr/bin/env python3
"""Recapture tests/fixtures/<unit>/raw.s and fixed.s.

    python tests/regen_fixtures.py            # every fixture
    python tests/regen_fixtures.py Kiko       # one

raw.s is what tcc or tcpp writes for the fixture's source, compiled with the
Makefile's TCC/CPP and CC1FLAGS/CPPFLAGS (read from the Makefile, not copied
here). The source is <fixture dir>/<unit>.c or .cpp when one exists (midpool),
else src/<unit>.c or .cpp. fixed.s is raw.s after asmfix with the repo's config/.

tests/test_fixtures.py compares asmfix over raw.s to fixed.s, so run this after
an intended change to a pass or to config/, review the diff in fixed.s, and
commit both files with the change. Needs the ADS toolchain; the tests do not.
"""

import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(HERE)
FIXTURES = os.path.join(HERE, "fixtures")
sys.path.insert(0, os.path.join(REPO, "scripts"))

import asmfix  # noqa: E402


def makefile_var(name):
    with open(os.path.join(REPO, "Makefile")) as fh:
        for line in fh:
            m = re.match(rf"^{name}\s*:?=\s*(.*?)\s*$", line)
            if m:
                return m.group(1)
    raise SystemExit(f"Makefile: no {name}")


def source_for(unit):
    for base in (os.path.join(FIXTURES, unit, unit), os.path.join(REPO, "src", unit)):
        for ext in (".c", ".cpp"):
            if os.path.exists(base + ext):
                return base + ext
    raise SystemExit(f"{unit}: no .c or .cpp in tests/fixtures/{unit}/ or src/")


def regen(unit):
    source = source_for(unit)
    cpp = source.endswith(".cpp")
    cc = makefile_var("CPP" if cpp else "TCC")
    flags = makefile_var("CPPFLAGS" if cpp else "CC1FLAGS")
    raw = os.path.join(FIXTURES, unit, "raw.s")
    cmd = f"{cc} {flags} -I include -o {raw} {os.path.relpath(source, REPO)}"
    print(cmd)
    subprocess.run(cmd, shell=True, check=True, cwd=REPO,
                   stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    with open(raw) as fh:
        text = fh.read()
    with open(os.path.join(FIXTURES, unit, "fixed.s"), "w") as fh:
        fh.write(asmfix.fix_text(text, f"{unit}.s"))


if __name__ == "__main__":
    units = sys.argv[1:] or sorted(
        d for d in os.listdir(FIXTURES) if os.path.isdir(os.path.join(FIXTURES, d)))
    for unit in units:
        regen(unit)
