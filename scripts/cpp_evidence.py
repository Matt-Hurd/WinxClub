#!/usr/bin/env python3

"""Which units were C++, from the runtime symbols armlink had to resolve.

    python scripts/cpp_evidence.py                 # summary over every unit
    python scripts/cpp_evidence.py split_803FB58   # one unit, before converting it
    python scripts/cpp_evidence.py --list          # every unit that has evidence
    python scripts/cpp_evidence.py --check         # contradictions only; exits 1 if any

tcc and tcpp emit identical bytes for code containing no C++ construct, so a byte
match cannot say which compiler the original used. The test is one-sided: C++ can be
proven, C cannot, because C is the absence of markers.

Proof is a call to a symbol only tcpp emits, resolved out of the ADS C++ libraries:

    __nw__FUi      operator new              __pvfn__Fv      pure virtual placeholder
    __nwa__FUi     operator new[]            __vec_ctor__    array constructor
    __dl__FPv      operator delete           __vec_dtor__    array destructor
    __da__FPv      operator delete[]         __vecmap1c__    array ctor/dtor mapping

A `__VTABLE__*` reference is weaker, and a mangled name that is not one of the above
weaker still: the mangled spelling in this repo was written to make tcpp emit the
wanted symbol, so it records a belief about the original rather than a fact from it.

Evidence is read from four places, any of which counts: asm/split/<unit>.s, the
asm/nonmatching/<unit>/ slices, src/<unit>.c or .cpp, and partial/<unit>.c. The last
two are all that survives once a unit is converted.

Rule: .cpp when a unit has proof even if .c would match, .c otherwise. --check guards
it, and caught src/split_8041274.c, which declared __da__FPv by hand inside a C file.
"""

import glob
import os
import re
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# tcpp-only: armlink resolves these out of the ADS C++ libraries and tcc never
# emits a call to one. Prefixes, because the array helpers carry a signature.
CPP_RUNTIME = (
    "__nw__FUi",       # operator new
    "__nwa__FUi",      # operator new[]
    "__dl__FPv",       # operator delete
    "__da__FPv",       # operator delete[]
    "__pvfn__Fv",      # pure virtual function placeholder
    "__vec_ctor__",
    "__vec_ctor_p__",
    "__vec_dtor__",
    "__vecmap1c__",
)

# What the same constructs look like once a unit is written as C++ source.
CPP_SOURCE = ("operator new", "operator delete", "__cplusplus", 'extern "C"')

RE_VTABLE = re.compile(r"__VTABLE__\w+")
RE_MANGLED = re.compile(r"\b\w+__\d+\w+F\w*\b")
# Three start macros, and `non_word_aligned_thumb_func_start` is 447 of the 1356 --
# anchoring on `thumb_func_start` alone silently loses every one of them.
RE_FUNC_START = re.compile(
    r"^\s*(?:arm_func_start|thumb_func_start|non_word_aligned_thumb_func_start)\b",
    re.M)

PROVEN, VTABLE, MANGLED, NONE = "proven", "vtable", "mangled", "none"
RANK = {PROVEN: 0, VTABLE: 1, MANGLED: 2, NONE: 3}
LABEL = {
    PROVEN: "C++ proven (runtime call)",
    VTABLE: "C++ likely (vtable reference)",
    MANGLED: "C++ likely (mangled name only)",
    NONE: "undetermined",
}


def read(path):
    try:
        with open(path, errors="replace") as fh:
            return fh.read()
    except OSError:
        return ""


def evidence(text):
    """(tier, [marker, ...]) for one blob of asm or source."""
    runtime = sorted({s for s in CPP_RUNTIME if s in text})
    runtime += sorted({s for s in CPP_SOURCE if s in text and s != 'extern "C"'})
    if runtime:
        return PROVEN, runtime
    vt = sorted(set(RE_VTABLE.findall(text)))
    if vt:
        return VTABLE, vt
    mg = sorted(set(RE_MANGLED.findall(text)) - set(CPP_RUNTIME))
    if mg:
        return MANGLED, mg
    return NONE, []


def units():
    """Every unit name, mapped to what is known about it.

    A unit's evidence can come from three places, and any of them counts: the
    unconverted split file, the per-function reference slices (which outlive the
    split file where a conversion deleted only the latter), and the committed
    source, which is the only place left once a unit is fully converted.
    """
    found = {}

    def note(name, text, where):
        tier, markers = evidence(text)
        u = found.setdefault(name, dict(tier=NONE, markers=[], where=[], funcs=0,
                                        src=None))
        if RANK[tier] < RANK[u["tier"]]:
            u["tier"], u["markers"], u["where"] = tier, markers, [where]
        elif tier == u["tier"] and tier != NONE:
            u["markers"] = sorted(set(u["markers"]) | set(markers))
            u["where"].append(where)
        return u

    for path in glob.glob(os.path.join(REPO, "asm/split/*.s")):
        name = os.path.basename(path)[:-2]
        text = read(path)
        note(name, text, "asm/split")["funcs"] = len(RE_FUNC_START.findall(text))

    for path in glob.glob(os.path.join(REPO, "asm/nonmatching/*/*.s")):
        name = os.path.basename(os.path.dirname(path))
        note(name, read(path), "asm/nonmatching")

    for ext in ("c", "cpp"):
        for path in glob.glob(os.path.join(REPO, "src/*.%s" % ext)):
            name = os.path.basename(path)[: -len(ext) - 1]
            note(name, read(path), "src")["src"] = ext

    # partial/ is the splicer's hook and counts as converted just as src/ does.
    # Two shapes share it: partial/<unit>.yml and partial/thumb/<unit>.yml.
    for pattern in ("partial/*.c", "partial/*/*.c"):
        for path in glob.glob(os.path.join(REPO, pattern)):
            name = os.path.basename(path)[:-2]
            note(name, read(path), "partial")["src"] = "partial"

    return found


def contradictions(found):
    """Units whose committed extension disagrees with the evidence."""
    return sorted(u for u, d in found.items()
                  if d["src"] == "c" and d["tier"] in (PROVEN, VTABLE))


def print_one(name, d):
    print("%s: %s" % (name, LABEL[d["tier"]]))
    if d["funcs"]:
        print("  functions:  %d" % d["funcs"])
    if d["src"]:
        print("  committed:  src/%s.%s" % (name, d["src"]))
    if d["markers"]:
        print("  markers:    %s" % ", ".join(d["markers"][:8]))
        print("  seen in:    %s" % ", ".join(sorted(set(d["where"]))))
    verdict = ".cpp" if d["tier"] in (PROVEN, VTABLE) else ".c unless a type is needed"
    print("  write as:   %s" % verdict)


def main():
    args = [a for a in sys.argv[1:]]
    found = units()

    named = [a for a in args if not a.startswith("-")]
    if named:
        for name in named:
            if name not in found:
                print("ERROR: no unit %r" % name, file=sys.stderr)
                return 2
            print_one(name, found[name])
        return 0

    bad = contradictions(found)

    if "--check" in args:
        for name in bad:
            d = found[name]
            print("src/%s.c is C++ by evidence (%s) -- write it as .cpp"
                  % (name, ", ".join(d["markers"][:4])))
        if not bad:
            print("no unit's extension disagrees with its evidence")
        return 1 if bad else 0

    if "--list" in args:
        for name in sorted(found):
            if found[name]["tier"] != NONE:
                print_one(name, found[name])
                print()
        return 0

    unconverted = {u: d for u, d in found.items() if not d["src"]}
    print("=== %d units, %d not yet converted ===" % (len(found), len(unconverted)))
    for tier in (PROVEN, VTABLE, MANGLED, NONE):
        us = [d for d in unconverted.values() if d["tier"] == tier]
        if not us:
            continue
        print("  %-31s %4d units  %5d functions"
              % (LABEL[tier], len(us), sum(d["funcs"] for d in us)))

    singles = [d for d in unconverted.values() if d["funcs"] == 1]
    print("\nsingle-function units (the winx-5nt epic): %d" % len(singles))
    for tier in (PROVEN, VTABLE, MANGLED, NONE):
        n = len([d for d in singles if d["tier"] == tier])
        if n:
            print("  %-31s %4d" % (LABEL[tier], n))

    print("\ncontradictions: %s"
          % (", ".join("src/%s.c" % u for u in bad) if bad else "none"))
    return 0


if __name__ == "__main__":
    sys.exit(main())
