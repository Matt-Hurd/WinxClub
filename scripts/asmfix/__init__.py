"""asmfix: the passes that turn tcc/tcpp assembler output into what armasm and
the scatter script expect.

    from asmfix import fix_text, fix_file

    fix_text(text, path)   -> new text
    fix_file(path)         -> True if the file changed

Each pass is a module with `run(lines, ctx) -> lines`. `lines` keeps its
trailing newlines, as readlines() gives them. `ctx` is a Context: the file's
path (the per-file fixups match on its stem), the loaded config, and any flag
one pass leaves for a later one. The order below is the order the old
single-function script applied them in and is part of the contract: the pool
ALIGN pass must run before the ENDP move treats ALIGN as pool data, and the
per-file fixups match text that the label pass has already rewritten.

The passes are byte-neutral or they are not: nothing here may change what a
unit assembles to except fixups.py, whose every rule is owner-approved data in
config/fixups.yml.
"""

import os

from . import labels, areas, ctor, vtables, fixups, endp

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
CONFIG = os.path.join(REPO, "config")


class Context:
    def __init__(self, path, config=None):
        self.path = path
        self.unit = os.path.splitext(os.path.basename(path))[0]
        self.config = config if config is not None else load_config()
        self.constructor_stripped = False


_config = None


def load_config(config_dir=CONFIG):
    """config/vtables.yml and config/fixups.yml, each optional, loaded once."""
    global _config
    if _config is None or config_dir != CONFIG:
        import yaml
        cfg = {}
        for name in ("vtables", "fixups"):
            path = os.path.join(config_dir, f"{name}.yml")
            if os.path.exists(path):
                with open(path) as fh:
                    cfg[name] = yaml.safe_load(fh) or {}
            else:
                cfg[name] = {}
        if config_dir != CONFIG:
            return cfg
        _config = cfg
    return _config


PASSES = (
    labels.rewrite,       # |L1.N| -> %N; pool labels -> _pool_1_N_<offset>
    areas.rename,         # ||.text|| -> text; vtable AREA CODE -> DATA; - {PC} -> - <vtable>
    labels.expand_pools,  # one _pool_1_N_<offset> label per pool entry
    ctor.strip_stub,      # drop tcpp's stub constructor and inherited destructor
    vtables.rename_areas, # __VTABLE__<len><class> -> the original's __VTABLE__<id><class>
    vtables.rename_methods,  # m<off>__<len><class>F<args> -> the slot's original symbol
    fixups.apply,         # owner-approved per-file rewrites, config/fixups.yml
    ctor.align_pools,     # ALIGN before a pool that lost its constructor's padding
    endp.before_pool,     # ENDP in front of the trailing literal pool
)


def fix_lines(lines, ctx):
    for run in PASSES:
        lines = run(lines, ctx)
    return lines


def fix_text(text, path, config=None):
    return "".join(fix_lines(text.splitlines(keepends=True), Context(path, config)))


def fix_file(path, config=None):
    with open(path) as fh:
        text = fh.read()
    fixed = fix_text(text, path, config)
    if fixed == text:
        return False
    with open(path, "w") as fh:
        fh.write(fixed)
    return True
