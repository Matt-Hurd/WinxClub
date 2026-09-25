"""Vtable names, from config/vtables.yml.

rename_areas    tcpp names a class vtable AREA __VTABLE__<len><class>. The
                original used a three-digit id in place of the length, and
                armlink sorts AREAs by name, so the id is what places the
                vtable. The yml records each class's original AREA name.

rename_methods  a vtable slot body written as a C++ member compiles to
                m<offset>__<len><class>F<args> (and slot 0 also to
                __dt__<len><class>F<args>). The yml lists the symbol each slot
                had in the original, so the IMPORT and the DCD entry are
                renamed to it, and an IMPORT is added for any slot symbol the
                unit now names but did not import.
"""

import re

RE_VTABLE_SEP = re.compile(r"__VTABLE__(\d+)(\w+)")


def config(ctx):
    return ctx.config.get("vtables") or {}


def area_renames(cfg):
    """{tcpp AREA name: original AREA name}, in the yml's order."""
    out = {}
    for cls, spec in (cfg.get("classes") or {}).items():
        out[f"__VTABLE__{len(cls)}{cls}"] = spec["area"]
    return out


def method_renames(cfg):
    """{mangled slot symbol: original symbol}, in the yml's order."""
    out = {}
    encodings = cfg.get("arg_encodings") or ["v"]
    for cls, spec in (cfg.get("classes") or {}).items():
        for i, sym in enumerate(spec.get("slots") or []):
            if sym is None:  # pure virtual
                continue
            for enc in encodings:
                out[f"m{i * 4:02X}__{len(cls)}{cls}F{enc}"] = sym
                if i == 0:
                    out[f"__dt__{len(cls)}{cls}F{enc}"] = sym
    return out


def rename_areas(lines, ctx):
    renames = area_renames(config(ctx))
    if not renames:
        return lines
    out = []
    for line in lines:
        for old, new in renames.items():
            if old in line:
                line = line.replace(old, new)
        out.append(line)
    return out


def rename_methods(lines, ctx):
    renames = method_renames(config(ctx))
    if not renames:
        return lines
    out = []
    needed = set()
    for line in lines:
        for mangled, original in renames.items():
            if mangled in line:
                line = line.replace(mangled, original)
                if "DCD" in line:
                    needed.add(original)
        out.append(line)
    if needed:
        have = {l.strip().split()[1].rstrip(",") for l in out if l.strip().startswith("IMPORT ")}
        missing = sorted(needed - have)
        if missing:
            at = next((i for i, l in enumerate(out) if l.strip().startswith("IMPORT ")), None)
            if at is not None:
                out[at:at] = [f"        IMPORT {sym}\n" for sym in missing]
    return out
