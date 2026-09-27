#!/usr/bin/env python3
"""Survey memory accesses made through pointers in the decompiled C/C++.

One row per access: file, function, base expression, byte offset, stride
(for indexed accesses), width in bytes, signedness, read/write.  Plus one
edge per call where a pointer (a parameter, `this`, a global, or a local
derived from one of those) is passed on to another function.

Recognised shapes (all found in partial/ and src/):

    *(unsigned int *)((char *)a0 + 0x44)              cast + byte offset
    *(unsigned int *)(a0 + idx * 4 + 0x280 + 0x18)    unsigned char *a0, summed constants, stride
    *((unsigned char *)this + 0x40)                   byte pointer then deref
    *(unsigned int *)a0                               offset 0
    a0[16]                                            typed pointer, offset 16 * sizeof(*a0)
    p70[0xd]   where p70 = (unsigned char *)&field_70 interior pointer alias
    *slot298   where slot298 = (void **)((char *)base + idx * 4 + 0x298)
    *(unsigned int *)(r5_30 + 0x10) where r5_30 = field_30   local loaded from a field
    this->field_08, a0->dir, bare field_30 in a method     named members (offset from the
                                                            header layout, else the hex suffix)

Bases are normalised: an interior-pointer local folds into its origin
(`self = (char *)this + 0xa8; *(int *)(self + 4)` is `this` at 0xac); a
local loaded from a field becomes the base `this->0x30`; a local holding a
call result becomes `ret:sub_XXXXXXX`.

Usage:
    python3 scripts/field_access.py                 rows, tab separated
    python3 scripts/field_access.py --summary       grouped by (file, function, base)
    python3 scripts/field_access.py --calls         call edges only
    python3 scripts/field_access.py --unclassified  only the lines the parser gave up on
    filters: --file SUBSTR  --func SUBSTR  --base NAME  [paths...]

Lines with a deref or member shape that the parser cannot classify are
listed at the end, never dropped.  Plain `char` is reported with sign `c`
because ADS makes it unsigned while the source treats it as a byte of
unknown sign; `signed char` is `s`, `unsigned char` is `u`.
"""

import argparse
import glob
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# global name -> (type base, stars), from `extern` declarations in the
# headers and in each translation unit
GLOBALS = {}

EXTERN_RE = re.compile(
    r"\bextern\s+(?:\"[^\"]*\"\s+)?((?:(?:unsigned|signed|struct|union|enum|const|volatile|class)\s+)*"
    r"[A-Za-z_]\w*(?:\s+(?:int|char|short|long))*)\s*(\**)\s*"
    r"([A-Za-z_]\w*)\s*((?:\[[^\]]*\])*)\s*;")


def collect_globals(text):
    for m in EXTERN_RE.finditer(text):
        typ, stars, name, arr = m.groups()
        words = [w for w in typ.split() if w not in ("const", "volatile")]
        if words and words[0] in ("struct", "union", "enum", "class"):
            words = words[1:]
        if not words:
            continue
        GLOBALS[name] = (" ".join(words), len(stars) + (1 if arr else 0))

KEYWORDS = {
    "if", "while", "for", "switch", "return", "sizeof", "else", "do",
    "case", "goto", "break", "continue", "typedef", "struct", "union",
    "class", "enum", "extern", "static", "const", "volatile", "unsigned",
    "signed", "int", "char", "short", "long", "void", "operator", "new",
    "delete", "public", "private", "protected", "virtual", "inline",
}

PRIM_WIDTH = {
    "char": (1, "c"), "signed char": (1, "s"), "unsigned char": (1, "u"),
    "short": (2, "s"), "signed short": (2, "s"), "unsigned short": (2, "u"),
    "short int": (2, "s"), "unsigned short int": (2, "u"),
    "int": (4, "s"), "signed int": (4, "s"), "unsigned int": (4, "u"),
    "unsigned": (4, "u"), "long": (4, "s"), "unsigned long": (4, "u"),
    "long long": (8, "s"), "unsigned long long": (8, "u"),
    "bool": (1, "u"),
}

TYPE_WORDS = {"const", "volatile", "unsigned", "signed", "char", "short",
              "int", "long", "void", "struct", "union", "enum", "class",
              "bool"}

# ----------------------------------------------------------------------
# text utilities
# ----------------------------------------------------------------------


def strip_comments(text):
    """Replace comments and string/char literal bodies with spaces, keeping
    every newline so line numbers survive."""
    out = []
    i, n = 0, len(text)
    while i < n:
        c = text[i]
        if text.startswith("//", i):
            j = text.find("\n", i)
            if j < 0:
                j = n
            out.append(" " * (j - i))
            i = j
        elif text.startswith("/*", i):
            j = text.find("*/", i + 2)
            j = n if j < 0 else j + 2
            out.append(re.sub(r"[^\n]", " ", text[i:j]))
            i = j
        elif c == '"' or c == "'":
            q = c
            j = i + 1
            while j < n and text[j] != q:
                if text[j] == "\\":
                    j += 1
                j += 1
            j = min(j + 1, n)
            out.append(q + re.sub(r"[^\n]", " ", text[i + 1:j - 1]) + q)
            i = j
        else:
            out.append(c)
            i += 1
    return "".join(out)


def match_paren(text, i, open_ch="(", close_ch=")"):
    """text[i] is open_ch; return index just past its matching close_ch,
    or -1."""
    depth = 0
    n = len(text)
    while i < n:
        c = text[i]
        if c == open_ch:
            depth += 1
        elif c == close_ch:
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    return -1


def split_top(text, sep=","):
    """Split at top-level sep (outside (), [], {})."""
    parts, depth, cur = [], 0, []
    for c in text:
        if c in "([{":
            depth += 1
        elif c in ")]}":
            depth -= 1
        if c == sep and depth == 0:
            parts.append("".join(cur))
            cur = []
        else:
            cur.append(c)
    parts.append("".join(cur))
    return parts


def strip_outer_parens(s):
    s = s.strip()
    while s.startswith("(") and match_paren(s, 0) == len(s):
        s = s[1:-1].strip()
    return s


CAST_TYPE_RE = re.compile(
    r"^\s*(?:(?:const|volatile)\s+)*"
    r"((?:(?:unsigned|signed|struct|union|enum|class|const|volatile)\s+)*"
    r"[A-Za-z_]\w*(?:\s+(?:int|char|short|long))*)"
    r"\s*(\*+)\s*(?:const\s*)?$")


def parse_cast_type(s):
    """'unsigned int *' -> ('unsigned int', 1); None if not a pointer type."""
    m = CAST_TYPE_RE.match(s)
    if not m:
        return None
    words = [w for w in m.group(1).split() if w not in ("const", "volatile")]
    if not words:
        return None
    if words[0] in ("struct", "union", "enum", "class"):
        words = words[1:]
    base = " ".join(words)
    if base in KEYWORDS - TYPE_WORDS:
        return None
    return base, len(m.group(2))


def type_width(base, stars, layouts):
    """Width and signedness of one element of `base` with `stars` levels of
    indirection removed down to one deref."""
    if stars >= 2:
        return 4, "p"
    if base == "void":
        return None, "?"
    if base in PRIM_WIDTH:
        return PRIM_WIDTH[base]
    lay = layouts.get(base)
    if lay and lay.size is not None:
        return lay.size, "S"
    return None, "?"


def parse_const(s):
    s = s.strip()
    neg = False
    while s.startswith("(") and match_paren(s, 0) == len(s):
        s = s[1:-1].strip()
    if s.startswith("-"):
        neg = True
        s = s[1:].strip()
    if re.fullmatch(r"0[xX][0-9a-fA-F]+[uUlL]*", s):
        v = int(s.rstrip("uUlL"), 16)
    elif re.fullmatch(r"\d+[uUlL]*", s):
        v = int(s.rstrip("uUlL"))
    elif re.fullmatch(r"[0-9a-fA-FxX\s()+*/<>-]+", s) and re.search(r"[0-9]", s) and "//" not in s:
        # constant arithmetic such as 0x30 / 4 or (1 << 5)
        try:
            v = eval(re.sub(r"([0-9a-fA-FxX]+)[uUlL]+\b", r"\1", s), {"__builtins__": {}}, {})
        except Exception:
            return None
        if isinstance(v, float) and v == int(v):
            v = int(v)
        if not isinstance(v, int):
            return None
    else:
        return None
    return -v if neg else v


# ----------------------------------------------------------------------
# struct / class layouts from headers
# ----------------------------------------------------------------------


class Layout:
    def __init__(self, name, base=None):
        self.name = name
        self.base = base
        self.members = {}      # name -> (offset|None, width, sign, count, typename)
        self.size = None
        self.has_vtable = False

    def lookup(self, name, layouts, depth=0):
        if name in self.members:
            return self.members[name]
        if self.base and depth < 8 and self.base in layouts:
            return layouts[self.base].lookup(name, layouts, depth + 1)
        return None


CLASS_HEAD_RE = re.compile(
    r"\b(class|struct|union)\s+([A-Za-z_]\w*)\s*"
    r"(?::\s*(?:public|private|protected)?\s*([A-Za-z_]\w*))?\s*\{")
SIZEOF_RE = re.compile(r"sizeof\((\w+)\)\s*=\s*(0x[0-9a-fA-F]+|\d+)")
OFFSET_COMMENT_RE = re.compile(r"^\s*//\s*(0x[0-9a-fA-F]+)\s*$")


def parse_layouts(paths):
    layouts = {}
    sizes = {}
    pending = []
    for path in paths:
        try:
            raw = open(path, encoding="utf-8", errors="replace").read()
        except OSError:
            continue
        for m in SIZEOF_RE.finditer(raw):
            sizes[m.group(1)] = int(m.group(2), 0)
        stripped = strip_comments(raw)
        for m in CLASS_HEAD_RE.finditer(stripped):
            kind, name, base = m.group(1), m.group(2), m.group(3)
            start = m.end() - 1
            end = match_paren(stripped, start, "{", "}")
            if end < 0:
                continue
            body_raw = raw[m.end():end - 1]
            pending.append((kind, name, base, body_raw))
    # resolve in dependency order (a few passes suffice)
    for _ in range(4):
        for kind, name, base, body_raw in pending:
            layouts[name] = build_layout(kind, name, base, body_raw, layouts, sizes)
    return layouts


def build_layout(kind, name, base, body_raw, layouts, sizes):
    lay = Layout(name, base)
    cursor = 0
    if base and base in layouts and layouts[base].size is not None:
        cursor = layouts[base].size
    elif base and base in sizes:
        cursor = sizes[base]
    elif base:
        cursor = None
    stmt = []
    depth = 0
    for line in body_raw.split("\n"):
        oc = OFFSET_COMMENT_RE.match(line)
        if oc:
            cursor = int(oc.group(1), 16)
            continue
        line = strip_comments(line)
        for ch in line:
            if ch in "({":
                depth += 1
            elif ch in ")}":
                depth -= 1
            if ch == ";" and depth == 0:
                cursor = add_member("".join(stmt), lay, cursor, layouts)
                stmt = []
            else:
                stmt.append(ch)
    if kind == "union":
        lay.size = max([w * c for (o, w, s, c, t) in lay.members.values()
                        if w] or [None]) if lay.members else None
    else:
        lay.size = cursor
        if lay.has_vtable and lay.size is not None and not lay.members and lay.size == 0:
            lay.size = 4
    if name in sizes:
        lay.size = sizes[name]
    return lay


MEMBER_RE = re.compile(
    r"^\s*((?:(?:unsigned|signed|struct|union|enum|const|volatile|class)\s+)*"
    r"[A-Za-z_]\w*(?:\s+(?:int|char|short|long))*)\s*(\**)\s*"
    r"([A-Za-z_]\w*)\s*((?:\[[^\]]*\])*)\s*$")


def add_member(stmt, lay, cursor, layouts):
    s = stmt.strip()
    if not s:
        return cursor
    s = re.sub(r"\b(public|private|protected)\s*:", "", s).strip()
    if not s:
        return cursor
    if "(" in s or s.startswith("virtual"):
        if "virtual" in s:
            lay.has_vtable = True
            if cursor == 0 and not lay.members:
                cursor = 4
        return cursor
    if s.startswith(("typedef", "friend", "using", "static")):
        return cursor
    # allow "int a, b;" by splitting
    head_m = MEMBER_RE.match(s)
    if not head_m:
        return None
    typ, stars, mname, arr = head_m.groups()
    words = [w for w in typ.split() if w not in ("const", "volatile")]
    is_enum = words and words[0] == "enum"
    if words and words[0] in ("struct", "union", "enum", "class"):
        words = words[1:]
    tname = " ".join(words)
    if stars:
        width, sign = 4, "p"
    elif is_enum:
        width, sign = 4, "e"
    elif tname in PRIM_WIDTH:
        width, sign = PRIM_WIDTH[tname]
    elif tname in layouts and layouts[tname].size is not None:
        width, sign = layouts[tname].size, "S"
    else:
        width, sign = None, "?"
    count = 1
    for dim in re.findall(r"\[([^\]]*)\]", arr):
        v = parse_const(dim)
        count = count * v if v is not None else None
        if count is None:
            break
    off = cursor
    if off is not None and width and width in (2, 4, 8) and sign != "S":
        align = min(width, 4)
        off = (off + align - 1) // align * align
    if off is not None and sign == "S":
        align = 4
        off = (off + align - 1) // align * align
    lay.members[mname] = (off, width, sign, count, tname if not stars else tname + " " + stars)
    if off is None or width is None or count is None:
        return None
    return off + width * count


# ----------------------------------------------------------------------
# function bodies
# ----------------------------------------------------------------------


FUNC_RE = re.compile(
    r'(?m)^(?P<head>(?:extern\s+"[^"]*"\s+)?(?:static\s+|inline\s+)*'
    r"(?:[A-Za-z_]\w*[\s\*]+)*?)"
    r"(?P<name>~?[A-Za-z_][\w:~]*)\s*\(")


class Func:
    def __init__(self, path, name, params, body, body_start, cls):
        self.path = path
        self.name = name
        self.params = params      # name -> (typebase, stars)
        self.body = body
        self.body_start = body_start   # absolute index into the file text
        self.cls = cls
        self.locals = {}          # name -> (typebase, stars)
        self.aliases = {}         # name -> Alias
        self.ambiguous = {}       # name -> [labels] when assigned different things


def parse_param(p):
    p = p.strip()
    if not p or p == "void" or p == "...":
        return None
    fm = re.search(r"\(\s*\*\s*([A-Za-z_]\w*)\s*\)\s*\(", p)
    if fm:
        return fm.group(1), ("fnptr", 1)
    m = re.match(r"^(.*?)(\**)\s*([A-Za-z_]\w*)\s*((?:\[[^\]]*\])*)$", p.replace("\n", " "))
    if not m:
        return None
    typ, stars, name, arr = m.groups()
    words = [w for w in typ.replace("*", " * ").split()
             if w not in ("const", "volatile", "register")]
    nstars = len(stars) + words.count("*") + (1 if arr else 0)
    words = [w for w in words if w != "*"]
    if words and words[0] in ("struct", "union", "enum", "class"):
        words = words[1:]
    return name, (" ".join(words), nstars)


def find_functions(path, text):
    funcs = []
    for m in FUNC_RE.finditer(text):
        name = m.group("name")
        short = name.split("::")[-1]
        if short in KEYWORDS or name.startswith("operator"):
            continue
        paren_start = m.end() - 1
        paren_end = match_paren(text, paren_start)
        if paren_end < 0:
            continue
        j = paren_end
        # skip whitespace, const, initialiser lists
        mm = re.compile(r"\s*(?:const\s*)?(?::[^{;]*)?\{").match(text, j)
        if not mm:
            continue
        if ";" in text[m.start():mm.end()]:
            continue
        brace = mm.end() - 1
        end = match_paren(text, brace, "{", "}")
        if end < 0:
            continue
        params = {}
        for p in split_top(text[paren_start + 1:paren_end - 1]):
            r = parse_param(p)
            if r:
                params[r[0]] = r[1]
        cls = name.split("::")[0] if "::" in name else None
        funcs.append(Func(path, name, params, text[brace + 1:end - 1], brace + 1, cls))
    return funcs


LOCAL_DECL_RE = re.compile(
    r"(?:^|[;{}])\s*((?:(?:unsigned|signed|struct|union|enum|const|volatile|class|static|register)\s+)*"
    r"[A-Za-z_]\w*(?:\s+(?:int|char|short|long))*)\s*(\*+|\s)\s*"
    r"([A-Za-z_]\w*)\s*(\[[^\]]*\])?\s*(?=[=;,])")


def collect_locals(fn):
    for m in re.finditer(r"\}\s*([A-Za-z_]\w*)\s*;", fn.body):
        fn.locals[m.group(1)] = ("<anon struct>", 0)
    for m in LOCAL_DECL_RE.finditer(fn.body):
        typ, stars, name, arr = m.groups()
        words = [w for w in typ.split() if w not in ("const", "volatile", "static", "register")]
        if not words or words[0] in ("return", "goto", "else"):
            continue
        if words[0] in ("struct", "union", "enum", "class"):
            words = words[1:]
        if not words or words[0] in KEYWORDS - TYPE_WORDS:
            continue
        if name in fn.params:
            continue
        nstars = stars.count("*") + (1 if arr else 0)
        fn.locals[name] = (" ".join(words), nstars)


# ----------------------------------------------------------------------
# address expression parsing
# ----------------------------------------------------------------------


class Alias:
    """What a local really is.
    kind 'addr': pointer into `root` at `off` (+ strides)
    kind 'load': value loaded from root at off, i.e. a new base named root->off
    kind 'call': result of a call, base named ret:name
    kind 'copy': same as another base (e.g. a global)."""

    def __init__(self, kind, root, off=0, strides=(), elem=None):
        self.kind = kind
        self.root = root
        self.off = off
        self.strides = tuple(strides)
        self.elem = elem     # (width, sign) of pointee when known


class Addr:
    """Parsed address: base root name, byte offset, strides list, element
    type of the pointer (for `a0[N]`-style scaling), and the leading cast."""

    def __init__(self):
        self.root = None
        self.off = 0
        self.strides = []
        self.scale = 1
        self.cast = None      # (base, stars) of an explicit pointer cast on the base
        self.elem = None      # (width, sign) of *root when the pointer type is known
        self.notes = []
        self.kind = None      # 'param', 'this', 'global', 'local', 'alias', 'load', 'call', 'member'


def base_from_ident(name, fn, layouts, ctx):
    """Resolve an identifier used as a pointer base."""
    a = Addr()
    if name == "this":
        a.root, a.kind = "this", "this"
        if fn.cls and fn.cls in layouts:
            a.elem = (layouts[fn.cls].size, "S")
        return a
    al = fn.aliases.get(name)
    if al:
        if al.elem is None and name in fn.locals and fn.locals[name][1] >= 1:
            al.elem = elem_of(fn.locals[name][0], fn.locals[name][1], layouts)
        if al.kind == "addr":
            a.root, a.off, a.strides = al.root, al.off, list(al.strides)
            a.kind = "alias"
            a.elem = al.elem
            return a
        if al.kind == "load":
            a.root = "%s->%s" % (al.root, fmt_off(al.off, al.strides))
            a.kind = "load"
            a.loaded = al.elem      # width/sign of the value that was loaded
            return a
        if al.kind == "call":
            a.root, a.kind, a.elem = "ret:" + al.root, "call", al.elem
            return a
        if al.kind == "copy":
            a.root, a.off, a.strides, a.kind, a.elem = al.root, al.off, list(al.strides), "alias", al.elem
            return a
    if name in fn.params:
        tb, stars = fn.params[name]
        a.root, a.kind = name, "param"
        if stars >= 1:
            a.elem = elem_of(tb, stars, layouts)
        else:
            a.notes.append("param %s is not declared as a pointer" % name)
        return a
    if name in fn.locals:
        tb, stars = fn.locals[name]
        a.root, a.kind = name, "local"
        if stars >= 1:
            a.elem = elem_of(tb, stars, layouts)
        if name in fn.ambiguous:
            a.notes.append("local %s is one of: %s" % (name, " | ".join(fn.ambiguous[name])))
        else:
            a.notes.append("local %s of unknown origin" % name)
        return a
    if fn.cls and fn.cls in layouts:
        mem = layouts[fn.cls].lookup(name, layouts)
        if mem is not None:
            off, width, sign, count, tname = mem
            a.root = "this->%s" % (fmt_off(off, []) if off is not None else name)
            a.kind = "load"
            return a
    g = GLOBALS.get(name)
    if g is not None:
        a.root, a.kind = name, "global"
        if g[1] >= 1:
            a.elem = elem_of(g[0], g[1], layouts)
        else:
            a.notes.append("global %s is not declared as a pointer" % name)
        return a
    if name.startswith(("gUnknown_", "g", "dword_", "off_", "byte_", "word_", "unk_")) and not name[1:2].islower():
        a.root, a.kind = name, "global"
        return a
    a.root, a.kind = name, "global"
    a.notes.append("base %s not a parameter, local or known member (treated as global)" % name)
    return a


def elem_of(tb, stars, layouts):
    w, s = type_width(tb, stars, layouts)
    return (w, s)


def fmt_off(off, strides):
    if off is None:
        return "?"
    s = "0x%x" % off if off >= 0 else "-0x%x" % -off
    if strides:
        s += "[]"
    return s


def member_offset(root_type, member, layouts):
    """Offset/width of `member` in type `root_type` from the layout table,
    falling back to a hex suffix in the name."""
    lay = layouts.get(root_type) if root_type else None
    if lay:
        mem = lay.lookup(member, layouts)
        if mem is not None and mem[0] is not None:
            return mem
    m = re.match(r"^(?:field|sprite|gap|mask|pad|half|byte|word|dword|unk|f|m)_?([0-9a-fA-F]+)$", member)
    if m:
        try:
            return (int(m.group(1), 16), None, "?", 1, "?")
        except ValueError:
            pass
    return None


def parse_primary(s, fn, layouts, ctx):
    """Parse a base primary: identifier, cast primary, nested deref, &member,
    member, ident->member.  Returns Addr or None."""
    s = strip_outer_parens(s)
    if not s:
        return None
    # numeric literal: an absolute address
    if parse_const(s) is not None:
        a = Addr()
        a.root, a.kind, a.off = "<abs>", "abs", parse_const(s)
        return a
    # leading cast
    if s.startswith("("):
        j = match_paren(s, 0)
        if j > 0:
            ct = parse_cast_type(s[1:j - 1])
            if ct:
                rest = s[j:].strip()
                if rest.startswith("(") and match_paren(rest, 0) == len(rest):
                    inner = parse_addr(rest, fn, layouts, ctx)
                else:
                    inner = parse_primary(rest, fn, layouts, ctx)
                if inner is None:
                    return None
                inner.cast = ct
                inner.scale = 1
                return inner
            # (void) value cast or other non-pointer cast: not a base
            if re.fullmatch(r"\s*(?:unsigned|signed|int|char|short|long|void|\s)+\s*", s[1:j - 1]):
                return parse_primary(s[j:], fn, layouts, ctx)
    # nested deref: *(T *)(...) or *(...)
    if s.startswith("*"):
        acc = parse_deref(s, 0, fn, layouts, ctx)
        if acc is None:
            return None
        a = Addr()
        a.root = "%s->%s" % (acc.addr.root, fmt_off(acc.addr.off, acc.addr.strides))
        a.kind = "load"
        a.elem = None
        a.notes = list(acc.addr.notes)
        return a
    # &member or &this->member or &a0->member, or &global (the object itself)
    if s.startswith("&"):
        inner = s[1:].strip()
        a = parse_member_expr(inner, fn, layouts, ctx)
        if a is not None:
            a.is_address_of = True
            return a
        if re.match(r"^[A-Za-z_]\w*$", inner) and inner not in fn.params and inner not in fn.locals:
            a = Addr()
            a.root, a.kind = "&" + inner, "global"
            g = GLOBALS.get(inner)
            if g and g[1] == 0:
                a.elem = elem_of(g[0], 1, layouts)
            a.is_address_of = True
            return a
        return None
    # call result used as a base: sub_8000D5A(g) + 0x24
    cm = re.match(r"^([A-Za-z_][\w:]*)\s*\(", s)
    if cm and cm.group(1) not in KEYWORDS and match_paren(s, cm.end() - 1) == len(s):
        a = Addr()
        a.root, a.kind = "ret:" + cm.group(1), "call"
        return a
    # identifier chain
    m = re.match(r"^([A-Za-z_]\w*)((?:\s*(?:->|\.)\s*[A-Za-z_]\w*)*)\s*(\[.*)?$", s, re.S)
    if m:
        name, chain, idx = m.groups()
        if chain:
            a = parse_member_expr(s if not idx else s[:m.start(3)], fn, layouts, ctx)
            if a is None:
                return None
            # member value used as a pointer base -> load
            la = Addr()
            la.root = "%s->%s" % (a.root, fmt_off(a.off, a.strides))
            la.kind = "load"
            la.elem = a.member_elem if hasattr(a, "member_elem") else None
            la.notes = a.notes
            return la
        if idx:
            return None
        if name in KEYWORDS:
            return None
        return base_from_ident(name, fn, layouts, ctx)
    return None


def parse_member_expr(s, fn, layouts, ctx):
    """`this->field_08`, `a0->dir`, `flags.unk04`, `field_30`, `p->a.b`.
    Returns Addr with root = object base, off = member offset, and
    member_elem = (width, sign)."""
    s = strip_outer_parens(s)
    m = re.match(r"^([A-Za-z_]\w*)((?:\s*(?:->|\.)\s*[A-Za-z_]\w*)*)\s*(\[.*\])?$", s, re.S)
    if not m:
        return None
    name, chain, index = m.groups()
    if index:
        a = parse_member_expr(s[:m.start(3)], fn, layouts, ctx)
        if a is None:
            return None
        elem = getattr(a, "member_elem", (None, "?"))
        idx_text = index[1:-1]
        if index.count("[") != 1:
            a.off = None
            a.notes.append("multi-dimensional index %s" % index)
            return a
        v = parse_const(idx_text)
        if elem[1] == "p" and getattr(a, "member_count", 1) == 1:
            # indexing a pointer member: load it, then access the pointee
            la = Addr()
            la.root = "%s->%s" % (a.root, fmt_off(a.off, a.strides))
            la.kind = "load"
            la.notes = a.notes
            tname = getattr(a, "member_type", None) or ""
            ct = parse_cast_type(tname)
            ew, es = type_width(ct[0], ct[1], layouts) if ct else (None, "?")
            la.member_elem = (ew, es)
            if ew is None:
                la.off = None
                la.notes.append("element width of pointer member unknown")
            elif v is not None:
                la.off = v * ew
            else:
                la.strides.append((ew, idx_text.strip()))
            return la
        if elem[0] is None:
            a.off = None
            a.notes.append("element width of indexed member unknown")
        elif v is not None and a.off is not None:
            a.off += v * elem[0]
        else:
            a.strides.append((elem[0], idx_text.strip()))
        return a
    parts = re.findall(r"(->|\.)\s*([A-Za-z_]\w*)", chain)
    if name in KEYWORDS:
        return None
    if not parts:
        # bare member in a method
        if name in fn.params or name in fn.locals or not fn.cls:
            return None
        lay = layouts.get(fn.cls)
        mem = lay.lookup(name, layouts) if lay else None
        if mem is None:
            mem = member_offset(None, name, layouts)
            if mem is None:
                return None
        a = Addr()
        a.root, a.kind = "this", "this"
        a.off = mem[0]
        a.member_elem = (mem[1], mem[2])
        a.member_type = mem[4]
        a.member_count = mem[3]
        if a.off is None:
            a.notes.append("member %s has no offset" % name)
        return a
    # first hop
    op, member = parts[0]
    if op == "->":
        base = base_from_ident(name, fn, layouts, ctx)
        if base is None:
            return None
        root_type = None
        if name == "this":
            root_type = fn.cls
        elif name in fn.params and fn.params[name][1] == 1:
            root_type = fn.params[name][0]
        elif name in fn.locals and fn.locals[name][1] == 1:
            root_type = fn.locals[name][0]
        elif name in GLOBALS and GLOBALS[name][1] == 1 and name not in fn.locals and name not in fn.params:
            root_type = GLOBALS[name][0]
        a = base
    else:
        # value.member: name is a member of this (method), a local struct,
        # or a global struct object
        a = parse_member_expr(name, fn, layouts, ctx)
        if a is None and name not in fn.locals and name not in fn.params and (
                name in GLOBALS or name.startswith("g")):
            a = Addr()
            a.root, a.kind = "&" + name, "global"
            g = GLOBALS.get(name)
            a.member_type = g[0] if g and g[1] == 0 else None
            a.member_elem = (None, "?")
        if a is None:
            return None
        root_type = getattr(a, "member_type", None)
        mem = member_offset(root_type, member, layouts)
        if mem is None:
            a.notes.append("member %s.%s unresolved" % (name, member))
            a.off = None
        else:
            a.off = (a.off + mem[0]) if a.off is not None and mem[0] is not None else None
            a.member_elem = (mem[1], mem[2])
            a.member_type = mem[4]
            a.member_count = mem[3]
        parts = parts[1:]
        for op2, member2 in parts:
            mem = member_offset(getattr(a, "member_type", None), member2, layouts)
            if mem is None or a.off is None:
                a.off = None
                a.notes.append("member %s unresolved" % member2)
            else:
                a.off += mem[0]
                a.member_elem = (mem[1], mem[2])
                a.member_type = mem[4]
        return a
    mem = member_offset(root_type, member, layouts)
    if mem is None:
        a.off = None
        a.notes.append("member %s->%s unresolved (type %s)" % (name, member, root_type or "?"))
        a.member_elem = (None, "?")
        a.member_type = None
        a.member_count = 1
    else:
        a.off = (a.off or 0) + mem[0]
        a.member_elem = (mem[1], mem[2])
        a.member_type = mem[4]
        a.member_count = mem[3]
    for op2, member2 in parts[1:]:
        if op2 == "->":
            # pointer member then deref: new load base
            la = Addr()
            la.root = "%s->%s" % (a.root, fmt_off(a.off, a.strides))
            la.kind = "load"
            a = la
            mem = member_offset(None, member2, layouts)
        else:
            mem = member_offset(getattr(a, "member_type", None), member2, layouts)
        if mem is None or a.off is None:
            a.off = None
            a.notes.append("member %s unresolved" % member2)
            a.member_elem = (None, "?")
        else:
            a.off += mem[0]
            a.member_elem = (mem[1], mem[2])
            a.member_type = mem[4]
    return a


def parse_addr(expr, fn, layouts, ctx):
    """Parse a pointer-valued sum expression into an Addr, or None."""
    expr = strip_outer_parens(expr)
    if not expr:
        return None
    # split at top-level + / - (binary only)
    terms = []
    depth, cur, i, n = 0, [], 0, len(expr)
    sign = 1
    while i < n:
        c = expr[i]
        if c in "([":
            depth += 1
        elif c in ")]":
            depth -= 1
        if depth == 0 and c in "+-" and i > 0 and "".join(cur).strip():
            prev = expr[i - 1]
            nxt = expr[i + 1] if i + 1 < n else ""
            if c == "-" and nxt == ">":
                cur.append(c)
                i += 1
                continue
            if nxt == c or nxt == "=":
                # ++ / -- / += : not an address sum
                return None
            if prev not in "+-*/(<>=&|^,":
                terms.append((sign, "".join(cur)))
                cur = []
                sign = 1 if c == "+" else -1
                i += 1
                continue
        cur.append(c)
        i += 1
    terms.append((sign, "".join(cur)))
    addr = None
    consts = []
    strides = []
    others = []
    for sgn, t in terms:
        t = t.strip()
        if not t:
            continue
        v = parse_const(t)
        if v is not None:
            consts.append(sgn * v)
            continue
        st = parse_stride_term(t)
        if st is not None:
            strides.append((sgn * st[0], " ".join(st[1].split())))
            continue
        p = parse_primary(t, fn, layouts, ctx)
        if p is not None and addr is None:
            addr = p
            continue
        others.append((sgn, t))
    if addr is None:
        if others:
            return None
        if not consts:
            return None
        a = Addr()
        a.root, a.kind = "<abs>", "abs"
        a.off = sum(consts)
        return a
    scale = 1
    if addr.cast is None and addr.elem and addr.elem[0] and addr.kind in ("param", "local", "alias", "copy"):
        # typed pointer arithmetic: a0 + 3 with int *a0 means 12 bytes
        scale = addr.elem[0]
    for sgn, t in others:
        # a bare non-constant index term: unknown stride, treat as element index
        strides.append((sgn * scale, " ".join(t.split())))
    if addr.off is None:
        return addr
    addr.off += sum(consts) * scale
    addr.strides += [(s * scale, idx) for (s, idx) in strides]
    if others and scale == 1:
        addr.notes.append("byte index term(s): %s" % ", ".join(t for _, t in others))
    return addr


def parse_stride_term(t):
    """`idx * 4`, `4 * idx`, `(a1 + i) * 2`, `idx << 2`  -> (stride, index_expr)."""
    t = strip_outer_parens(t)
    parts = split_top(t, "*")
    if len(parts) == 2:
        l, r = parts[0].strip(), parts[1].strip()
        v = parse_const(r)
        if v is not None and l and not l.endswith(("(", "*")):
            return v, l
        v = parse_const(l)
        if v is not None:
            return v, r
    m = re.match(r"^(.*)<<\s*(\d+)$", t)
    if m:
        return 1 << int(m.group(2)), m.group(1).strip()
    return None


# ----------------------------------------------------------------------
# access detection
# ----------------------------------------------------------------------


class Access:
    def __init__(self, fn, start, end, addr, width, sign, text):
        self.fn = fn
        self.start = start
        self.end = end
        self.addr = addr
        self.width = width
        self.sign = sign
        self.text = text
        self.rw = "R"


UNARY_PREV = set("(,=+-*/%&|^!<>?:;{}[")


def is_unary_star(body, i):
    # `(*)` and `(*fn)(` are function-pointer syntax, not derefs
    if re.match(r"\s*\)", body[i + 1:i + 8]):
        return False
    if re.match(r"\s*[A-Za-z_]\w*\s*\)\s*\(", body[i + 1:i + 40]):
        k = i - 1
        while k >= 0 and body[k] in " \t\n":
            k -= 1
        if k >= 0 and body[k] == "(":
            return False
    j = i - 1
    while j >= 0 and body[j] in " \t\n":
        j -= 1
    if j < 0:
        return True
    c = body[j]
    if c in UNARY_PREV:
        return True
    if c == ")":
        # find matching open paren
        k = j
        depth = 0
        while k >= 0:
            if body[k] == ")":
                depth += 1
            elif body[k] == "(":
                depth -= 1
                if depth == 0:
                    break
            k -= 1
        if k < 0:
            return False
        inner = body[k + 1:j]
        if parse_cast_type(inner):
            return True
        w = re.search(r"([A-Za-z_]\w*)\s*$", body[:k])
        if w and w.group(1) in ("if", "while", "for", "switch"):
            return True
        return False
    if body[max(0, j - 5):j + 1].endswith("return"):
        return True
    return False


def operand_extent(body, k):
    """Extent of the primary operand starting at body[k] (after a cast or a
    unary *): a parenthesised group, a nested deref, &expr, an identifier
    chain with optional index or call, or a numeric literal.  Returns end
    index or -1."""
    n = len(body)
    while k < n and body[k] in " \t\n":
        k += 1
    if k >= n:
        return -1
    c = body[k]
    if c == "(":
        j = match_paren(body, k)
        if j < 0:
            return -1
        # a cast applied to what follows: (T *)operand
        if parse_cast_type(body[k + 1:j - 1]):
            return operand_extent(body, j)
        return j
    if c == "*":
        return operand_extent(body, k + 1)
    if c == "&":
        return operand_extent(body, k + 1)
    m = re.compile(r"[A-Za-z_]\w*(?:\s*(?:->|\.)\s*[A-Za-z_]\w*)*").match(body, k)
    if m:
        e = m.end()
        while e < n and body[e] in " \t\n":
            e += 1
        if e < n and body[e] == "[":
            j = match_paren(body, e, "[", "]")
            return j if j > 0 else m.end()
        if e < n and body[e] == "(":
            j = match_paren(body, e)
            return j if j > 0 else m.end()
        return m.end()
    m = re.compile(r"0[xX][0-9a-fA-F]+[uUlL]*|\d+[uUlL]*").match(body, k)
    if m:
        return m.end()
    return -1


def parse_deref(body, i, fn, layouts, ctx):
    """body[i] == '*'.  Return Access or None (unclassified)."""
    j = i + 1
    while j < len(body) and body[j] in " \t\n":
        j += 1
    if j >= len(body):
        return None
    width = sign = None
    if body[j] == "(":
        g_end = match_paren(body, j)
        if g_end < 0:
            return None
        inner = body[j + 1:g_end - 1]
        ct = parse_cast_type(inner)
        if ct:
            width, sign = type_width(ct[0], ct[1], layouts)
            end = operand_extent(body, g_end)
            if end < 0:
                return None
            expr = body[g_end:end]
            addr = parse_addr(expr, fn, layouts, ctx)
        else:
            expr = inner
            end = g_end
            addr = parse_addr(expr, fn, layouts, ctx)
            if addr is not None:
                if addr.cast:
                    width, sign = type_width(addr.cast[0], addr.cast[1], layouts)
                elif addr.elem:
                    width, sign = addr.elem
    else:
        end = operand_extent(body, j)
        if end < 0:
            return None
        expr = body[j:end]
        addr = parse_addr(expr, fn, layouts, ctx)
        if addr is not None:
            if addr.cast:
                width, sign = type_width(addr.cast[0], addr.cast[1], layouts)
            elif addr.elem:
                width, sign = addr.elem
        # `*p++` etc: keep as offset 0
    if addr is None:
        return None
    return Access(fn, i, end, addr, width, sign, body[i:end])


def classify_rw(body, start, end):
    after = body[end:end + 4]
    m = re.match(r"\s*(\+\+|--)", after)
    if m:
        return "RW"
    m = re.match(r"\s*(=(?!=)|\+=|-=|\*=|/=|%=|&=|\|=|\^=|<<=|>>=)", body[end:end + 6])
    if m:
        return "W" if m.group(1) == "=" else "RW"
    # (ACCESS)++ or (ACCESS) += x
    k = start - 1
    while k >= 0 and body[k] in " \t\n":
        k -= 1
    if k >= 0 and body[k] == "(":
        e = end
        while e < len(body) and body[e] in " \t\n":
            e += 1
        if e < len(body) and body[e] == ")":
            return classify_rw(body, k, e + 1)
    before = body[max(0, start - 3):start]
    if re.search(r"(\+\+|--)\s*$", before):
        return "RW"
    return "R"


CALL_RE = re.compile(r"(?<![\w.>])([A-Za-z_][\w:]*(?:\s*\[\s*\])?)\s*\(")
INDEX_RE = re.compile(r"(?<![\w\]\)])([A-Za-z_]\w*)\s*\[")
ASSIGN_RE = re.compile(r"(?<![=!<>+\-*/%&|^])=(?!=)")


def collect_aliases(fn, layouts, ctx):
    """Walk assignments in textual order and record what each local is."""
    body = fn.body
    for m in ASSIGN_RE.finditer(body):
        eq = m.start()
        # identifier immediately before '='
        lm = re.compile(r"([A-Za-z_]\w*)\s*$").search(body, 0, eq)
        if not lm:
            continue
        name = lm.group(1)
        if name == "this" or name in KEYWORDS:
            continue
        # what precedes the identifier?
        k = lm.start(1) - 1
        while k >= 0 and body[k] in " \t\n":
            k -= 1
        if k >= 0:
            c = body[k]
            if c in ".>":
                continue         # member store
            if c == "*":
                # declaration `int *x =` or deref store `*x =`
                kk = k
                while kk >= 0 and body[kk] in "* \t\n":
                    kk -= 1
                if kk < 0 or not (body[kk].isalnum() or body[kk] == "_"):
                    continue
            elif c == "]" or c == ")":
                continue
        # rhs up to ';' at depth 0
        depth = 0
        e = eq + 1
        while e < len(body):
            ch = body[e]
            if ch in "([{":
                depth += 1
            elif ch in ")]}":
                depth -= 1
                if depth < 0:
                    break
            elif ch == ";" and depth == 0:
                break
            elif ch == "," and depth == 0:
                break
            e += 1
        rhs = body[eq + 1:e].strip()
        if not rhs:
            continue
        if name in fn.params:
            continue
        al = alias_from_rhs(rhs, fn, layouts, ctx)
        if al is None:
            continue
        if name in fn.aliases:
            old = fn.aliases[name]
            if old is False:
                fn.ambiguous[name].append(alias_label(al))
                continue
            if (old.kind, old.root, old.off, old.strides) != (al.kind, al.root, al.off, al.strides):
                fn.aliases[name] = False     # ambiguous
                fn.ambiguous[name] = [alias_label(old), alias_label(al)]
                continue
        fn.aliases[name] = al
    # drop ambiguous ones
    fn.aliases = {k: v for k, v in fn.aliases.items() if v}


def alias_label(al):
    if al.kind == "load":
        return "%s->%s" % (al.root, fmt_off(al.off, al.strides))
    if al.kind == "call":
        return "ret:" + al.root
    if al.kind == "addr":
        return "%s+%s" % (al.root, fmt_off(al.off, al.strides))
    return al.root


def alias_from_rhs(rhs, fn, layouts, ctx):
    r = strip_outer_parens(rhs)
    stripped_cast = None
    # strip value casts like (void *)x, (unsigned int)x, remembering a pointer cast
    while r.startswith("("):
        j = match_paren(r, 0)
        if j < 0:
            break
        inner = r[1:j - 1]
        ct = parse_cast_type(inner)
        if ct or re.fullmatch(r"\s*(?:unsigned|signed|int|char|short|long|\s)+\s*", inner):
            rest = strip_outer_parens(r[j:])
            if "+" in rest or "-" in rest:
                break
            if ct and stripped_cast is None:
                stripped_cast = ct
            r = rest
            continue
        break
    # call result
    cm = re.match(r"^([A-Za-z_][\w:]*)\s*\(", r)
    if cm and cm.group(1) not in KEYWORDS and match_paren(r, cm.end() - 1) == len(r):
        return Alias("call", cm.group(1))
    # load: leading * or a member expression or ident[N]
    if r.startswith("*"):
        acc = parse_deref(r, 0, fn, layouts, ctx)
        if acc is None or acc.end != len(r):
            return None
        return Alias("load", acc.addr.root, acc.addr.off, acc.addr.strides, (acc.width, acc.sign))
    im = re.match(r"^([A-Za-z_]\w*)\s*\[(.*)\]$", r, re.S)
    if im:
        base = base_from_ident(im.group(1), fn, layouts, ctx)
        if base is None or base.root is None:
            return None
        elem = base.elem[0] if base.elem and base.elem[0] else 1
        v = parse_const(im.group(2))
        if v is None:
            return Alias("load", base.root, base.off, list(base.strides) + [(elem, im.group(2))], base.elem)
        return Alias("load", base.root, base.off + v * elem, base.strides, base.elem)
    if re.match(r"^[A-Za-z_]\w*(?:\s*(?:->|\.)\s*[A-Za-z_]\w*)+$", r):
        a = parse_member_expr(r, fn, layouts, ctx)
        if a is None or a.off is None:
            return None
        return Alias("load", a.root, a.off, a.strides, getattr(a, "member_elem", None))
    if re.match(r"^[A-Za-z_]\w*$", r):
        if r in fn.params:
            return Alias("copy", r, 0, (), elem_of(*fn.params[r], layouts) if fn.params[r][1] else None)
        if r in GLOBALS and r not in fn.locals and GLOBALS[r][1]:
            return Alias("copy", r, 0, (), elem_of(GLOBALS[r][0], GLOBALS[r][1], layouts))
        if r in fn.aliases and fn.aliases[r]:
            return fn.aliases[r]
        if fn.cls and fn.cls in layouts and layouts[fn.cls].lookup(r, layouts) is not None:
            mem = layouts[fn.cls].lookup(r, layouts)
            if mem[0] is None:
                return None
            return Alias("load", "this", mem[0], (), (mem[1], mem[2]))
        if r in fn.locals:
            return None
        if r == "this":
            return Alias("copy", "this")
        return Alias("copy", r)       # a global
    # address expression
    a = parse_addr(r, fn, layouts, ctx)
    if a is None or a.root is None or a.kind == "abs":
        return None
    if getattr(a, "is_address_of", False) or a.cast or a.strides or a.off or a.kind in ("alias", "param", "this", "global"):
        elem = None
        if a.cast:
            elem = elem_of(a.cast[0], a.cast[1], layouts)
        elif stripped_cast:
            elem = elem_of(stripped_cast[0], stripped_cast[1], layouts)
        elif getattr(a, "is_address_of", False):
            elem = getattr(a, "member_elem", None)
        return Alias("addr", a.root, a.off or 0, a.strides, elem)
    return None


def scan_function(fn, layouts, ctx, rows, edges, unclassified):
    body = fn.body
    n = len(body)
    covered = [False] * n
    accesses = []

    def mark(a, b):
        for q in range(a, min(b, n)):
            covered[q] = True

    # cast types like (void **) are not derefs: mark them first
    for m in re.finditer(r"\(", body):
        e = match_paren(body, m.start())
        if e > 0 and "(" not in body[m.start() + 1:e - 1] and parse_cast_type(body[m.start() + 1:e - 1]):
            mark(m.start(), e)
    # pass 1: derefs
    i = 0
    while i < n:
        c = body[i]
        if c == "*" and not covered[i] and is_unary_star(body, i):
            acc = parse_deref(body, i, fn, layouts, ctx)
            if acc is None:
                # find end of the expression for reporting
                unclassified.append((fn, i, snippet(body, i)))
                i += 1
                continue
            acc.rw = classify_rw(body, acc.start, acc.end)
            accesses.append(acc)
            # nested derefs inside are found by continuing the scan from i+1
        i += 1
    # pass 2: ident[index] on known pointers / aliases, and (cast)ptr[idx]
    for m in INDEX_RE.finditer(body):
        name = m.group(1)
        if name in KEYWORDS:
            continue
        bs = m.end() - 1
        be = match_paren(body, bs, "[", "]")
        if be < 0:
            continue
        idx = body[bs + 1:be - 1]
        if name not in fn.params and name not in fn.locals and name not in fn.aliases:
            if not (name.startswith("gUnknown_")):
                continue
        base = base_from_ident(name, fn, layouts, ctx)
        if base is None or base.root is None:
            continue
        if name in fn.locals and fn.locals[name][1] == 0 and name not in fn.aliases:
            continue      # a local array, not a pointer
        elem = base.elem
        ew = elem[0] if elem and elem[0] else None
        a = Addr()
        a.root, a.kind, a.strides, a.notes = base.root, base.kind, list(base.strides), list(base.notes)
        v = parse_const(idx)
        if ew is None:
            a.off = None
            a.notes.append("element size of %s unknown" % name)
        elif v is not None:
            a.off = (base.off or 0) + v * ew
        else:
            a.off = base.off or 0
            a.strides.append((ew, idx.strip()))
        acc = Access(fn, m.start(1), be, a, ew, elem[1] if elem else "?", body[m.start(1):be])
        acc.rw = classify_rw(body, acc.start, acc.end)
        accesses.append(acc)
    # pass 2b: ((T *)&member)[idx] / ((T *)expr)[idx]
    for m in re.finditer(r"\(\(", body):
        s = m.start()
        e = match_paren(body, s)
        if e < 0 or e >= n or body[e] != "[":
            continue
        be = match_paren(body, e, "[", "]")
        if be < 0:
            continue
        a = parse_addr(body[s:e], fn, layouts, ctx)
        if a is None or a.root is None or not a.cast:
            continue
        ew, es = type_width(a.cast[0], a.cast[1], layouts)
        v = parse_const(body[e + 1:be - 1])
        if v is not None and ew and a.off is not None:
            a.off += v * ew
        elif ew:
            a.strides.append((ew, body[e + 1:be - 1].strip()))
        acc = Access(fn, s, be, a, ew, es, body[s:be])
        acc.rw = classify_rw(body, s, be)
        accesses.append(acc)
    # pass 3: member accesses (this->x, a0->x, x.y, bare members in methods)
    for m in re.finditer(r"(?<![\w.>])([A-Za-z_]\w*)((?:\s*(?:->|\.)\s*[A-Za-z_]\w*)+)", body):
        s, e = m.start(), m.end()
        if body[e:e + 1] == "(":
            continue
        if body[e:e + 1] == "[":
            be = match_paren(body, e, "[", "]")
            if be > 0:
                e = be
        if any(covered_by(acc, s) for acc in accesses):
            continue
        name = m.group(1)
        if name in KEYWORDS:
            continue
        # skip pure declarations like `struct Foo`
        if name in ("struct", "union", "class", "enum"):
            continue
        # a local struct value (`pos.y`) is not an access through a pointer
        if m.group(2).lstrip().startswith(".") and (
                (name in fn.locals and fn.locals[name][1] == 0 and name not in fn.aliases)
                or (name in fn.params and fn.params[name][1] == 0)):
            continue
        a = parse_member_expr(body[s:e], fn, layouts, ctx)
        if a is None:
            unclassified.append((fn, s, snippet(body, s)))
            continue
        elem = getattr(a, "member_elem", (None, "?"))
        acc = Access(fn, s, e, a, elem[0], elem[1], body[s:e])
        acc.rw = classify_rw(body, s, e)
        if body[s - 1:s] == "&":
            acc.rw = "&"
        accesses.append(acc)
    if fn.cls and fn.cls in layouts:
        lay = layouts[fn.cls]
        for m in re.finditer(r"(?<![\w.>])([A-Za-z_]\w*)(?![\w(])", body):
            name = m.group(1)
            if name in fn.params or name in fn.locals or name in KEYWORDS or name in fn.aliases:
                continue
            mem = lay.lookup(name, layouts)
            if mem is None:
                continue
            s, e = m.start(), m.end()
            if any(covered_by(acc, s) for acc in accesses):
                continue
            # skip `field.sub` (handled above)
            if body[e:e + 1] == "." or body[e:e + 2] == "->":
                continue
            if body[e:e + 1] == "[":
                be = match_paren(body, e, "[", "]")
                if be < 0:
                    continue
                a = parse_member_expr(body[s:be], fn, layouts, ctx)
                if a is None:
                    unclassified.append((fn, s, snippet(body, s)))
                    continue
                elem = getattr(a, "member_elem", (mem[1], mem[2]))
                acc = Access(fn, s, be, a, elem[0], elem[1], body[s:be])
                acc.rw = classify_rw(body, s, be)
                accesses.append(acc)
                continue
            a = Addr()
            a.root, a.kind, a.off = "this", "this", mem[0]
            acc = Access(fn, s, e, a, mem[1], mem[2], name)
            acc.rw = classify_rw(body, s, e)
            if body[s - 1:s] == "&":
                acc.rw = "&"
            accesses.append(acc)
    for acc in accesses:
        rows.append(acc)
    # call edges
    for m in CALL_RE.finditer(body):
        callee = m.group(1).replace(" ", "")
        if callee.split("::")[-1] in KEYWORDS or callee in ("operator", "sizeof"):
            continue
        ps = m.end() - 1
        pe = match_paren(body, ps)
        if pe < 0:
            continue
        # is this a definition-like or a cast? ignore `(T *)` style
        args = split_top(body[ps + 1:pe - 1])
        indirect = callee in fn.locals or callee in fn.params or \
            re.search(r"\(\s*\*\s*%s\s*\)\s*\(" % re.escape(callee), body) is not None
        if "::" in callee and fn.cls:
            edges.append((fn, "this", 0, "this", callee, "implicit"))
        for ai, arg in enumerate(args):
            arg = arg.strip()
            if not arg:
                continue
            base = None
            r = arg
            # strip value casts
            while r.startswith("("):
                j = match_paren(r, 0)
                if j < 0:
                    break
                inner = r[1:j - 1]
                if parse_cast_type(inner) or re.fullmatch(r"\s*(?:unsigned|signed|int|char|short|long|\s)+\s*", inner):
                    r = r[j:].strip()
                    continue
                break
            if re.match(r"^[A-Za-z_]\w*$", r):
                if r in fn.params and fn.params[r][1] == 0 and r not in fn.aliases:
                    continue
                if r in fn.locals and fn.locals[r][1] == 0 and r not in fn.aliases:
                    continue
                if r not in fn.params and r not in fn.locals and r not in fn.aliases and r != "this":
                    if fn.cls and fn.cls in layouts and layouts[fn.cls].lookup(r, layouts):
                        pass
                    elif not r.startswith("gUnknown_"):
                        continue
                base = parse_primary(r, fn, layouts, ctx)
            else:
                base = parse_addr(arg, fn, layouts, ctx)
                if base is None or base.kind == "abs":
                    continue
                if base.kind == "load" and not base.cast and base.off == 0 and not base.strides and r.startswith("*") and not acc_is_pointer(r):
                    # a loaded plain value, not a pointer (heuristic: cast to non-pointer)
                    continue
            if base is None or base.root is None:
                continue
            loaded = getattr(base, "loaded", None)
            if loaded and loaded[0] in (1, 2):
                continue        # a byte or halfword value, not a pointer
            edges.append((fn, base.root, base.off, fmt_off(base.off, base.strides), ("*" if indirect else "") + callee, ai))


def acc_is_pointer(r):
    m = re.match(r"^\*\s*\(([^()]*)\)", r)
    if m:
        ct = parse_cast_type(m.group(1))
        return bool(ct and ct[1] >= 2)
    return True


def covered_by(acc, pos):
    return acc.start <= pos < acc.end


def snippet(body, i):
    s = body.rfind("\n", 0, i) + 1
    e = body.find("\n", i)
    if e < 0:
        e = len(body)
    return body[s:e].strip()


def line_of(fn, pos, text):
    return text.count("\n", 0, fn.body_start + pos) + 1


# ----------------------------------------------------------------------
# driver
# ----------------------------------------------------------------------


def default_paths():
    pats = ["partial/*.c", "partial/*.cpp", "src/*.c", "src/*.cpp"]
    out = []
    for p in pats:
        out.extend(sorted(glob.glob(os.path.join(ROOT, p))))
    return out


def rel(path):
    return os.path.relpath(path, ROOT)


def fmt_width(w, s):
    s = s or "?"
    if w is None:
        return "?" + (s if s != "?" else "")
    return "%d%s" % (w, s)


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("paths", nargs="*")
    ap.add_argument("--summary", action="store_true")
    ap.add_argument("--calls", action="store_true")
    ap.add_argument("--unclassified", action="store_true")
    ap.add_argument("--file", help="only files whose path contains this")
    ap.add_argument("--func", help="only functions whose name contains this")
    ap.add_argument("--base", help="only this base (exact)")
    args = ap.parse_args()

    header_paths = sorted(glob.glob(os.path.join(ROOT, "include", "*.hpp"))) + \
        sorted(glob.glob(os.path.join(ROOT, "include", "*.h")))
    paths = [os.path.abspath(p) for p in args.paths] or default_paths()
    header_paths += sorted(glob.glob(os.path.join(ROOT, "include", "generated", "*.h")))
    layouts = parse_layouts(header_paths + paths)
    for hp in header_paths:
        try:
            collect_globals(strip_comments(open(hp, encoding="utf-8", errors="replace").read()))
        except OSError:
            pass
    header_globals = dict(GLOBALS)

    rows, edges, unclassified = [], [], []
    texts = {}
    nfuncs = 0
    for path in paths:
        if args.file and args.file not in rel(path):
            continue
        raw = open(path, encoding="utf-8", errors="replace").read()
        text = strip_comments(raw)
        texts[path] = text
        # a unit's own extern declarations override the headers' only for that unit
        GLOBALS.clear()
        GLOBALS.update(header_globals)
        collect_globals(text)
        ctx = {}
        for fn in find_functions(path, text):
            if args.func and args.func not in fn.name:
                continue
            nfuncs += 1
            collect_locals(fn)
            collect_aliases(fn, layouts, ctx)
            scan_function(fn, layouts, ctx, rows, edges, unclassified)

    if args.base:
        rows = [r for r in rows if r.addr.root == args.base]
        edges = [e for e in edges if e[1] == args.base]

    absolute = [r for r in rows if r.addr.kind == "abs"]
    rows = [r for r in rows if r.addr.kind != "abs"]

    if args.unclassified:
        print_unclassified(unclassified, texts)
        return
    if args.calls:
        print_edges(edges, texts)
        return
    if args.summary:
        print_summary(rows, edges, texts)
    else:
        print("file\tfunction\tbase\toffset\tstride\twidth\trw\tline\ttext")
        for r in sorted(rows, key=lambda r: (rel(r.fn.path), r.fn.body_start, r.start)):
            print("\t".join([
                rel(r.fn.path), r.fn.name, r.addr.root,
                fmt_off(r.addr.off, []),
                ",".join("%d(%s)" % (s, i) for s, i in r.addr.strides) or "-",
                fmt_width(r.width, r.sign), r.rw,
                str(line_of(r.fn, r.start, texts[r.fn.path])),
                " ".join(r.text.split()),
            ]))
        print()
        print_edges(edges, texts)
    print()
    print_unclassified(unclassified, texts)
    print()
    print("# %d functions, %d access rows, %d call edges, %d absolute-address accesses, %d unclassified lines"
          % (nfuncs, len(rows), len(edges), len(absolute), len(unclassified)))


def print_edges(edges, texts):
    print("# call edges: file function base offset -> callee arg")
    seen = set()
    for fn, root, off, offs, callee, ai in sorted(edges, key=lambda e: (rel(e[0].path), e[0].body_start, str(e[4]), str(e[5]))):
        key = (fn.path, fn.name, root, offs, callee, ai)
        if key in seen:
            continue
        seen.add(key)
        print("%s\t%s\t%s\t%s\t-> %s\targ %s" % (rel(fn.path), fn.name, root, offs if offs != "0x0" else "-", callee, ai))


def print_unclassified(unclassified, texts):
    print("# unclassified lines (%d)" % len(unclassified))
    seen = set()
    for fn, pos, snip in unclassified:
        ln = line_of(fn, pos, texts[fn.path])
        key = (fn.path, ln)
        if key in seen:
            continue
        seen.add(key)
        print("%s:%d\t%s\t%s" % (rel(fn.path), ln, fn.name, snip))


def print_summary(rows, edges, texts):
    groups = {}
    for r in rows:
        key = (rel(r.fn.path), r.fn.body_start, r.fn.name, r.addr.root)
        groups.setdefault(key, []).append(r)
    edge_map = {}
    for e in edges:
        edge_map.setdefault((rel(e[0].path), e[0].body_start, e[0].name, e[1]), []).append(e)
    for key in sorted(groups):
        path, _, func, root = key
        rs = groups[key]
        fn = rs[0].fn
        decl = ""
        if root in fn.params:
            tb, st = fn.params[root]
            decl = "  [param %s%s]" % (tb, " " + "*" * st if st else "")
        elif root == "this":
            decl = "  [this: %s]" % (fn.cls or "?")
        elif root in fn.locals:
            tb, st = fn.locals[root]
            decl = "  [local %s%s]" % (tb, " " + "*" * st if st else "")
        elif "->" in root:
            decl = "  [pointer loaded from a field]"
        elif root.startswith("ret:"):
            decl = "  [call result]"
        elif root.lstrip("&") in GLOBALS:
            tb, st = GLOBALS[root.lstrip("&")]
            decl = "  [global %s%s%s]" % (tb, " " + "*" * st if st else "", ", its own storage" if root.startswith("&") else "")
        print("== %s  %s  base %s%s  (%d accesses)" % (path, func, root, decl, len(rs)))
        per = {}
        for r in rs:
            k = r.addr.off
            per.setdefault(k, {"widths": set(), "strides": set(), "rw": set(), "notes": set()})
            per[k]["widths"].add(fmt_width(r.width, r.sign))
            for s, idx in r.addr.strides:
                per[k]["strides"].add((s, idx))
            per[k]["rw"].add(r.rw)
            for nt in r.addr.notes:
                per[k]["notes"].add(nt)
        for off in sorted(per, key=lambda o: (o is None, o if o is not None else 0)):
            d = per[off]
            widths = "/".join(sorted(d["widths"]))
            stride = ""
            if d["strides"]:
                stride = "  stride " + ",".join(
                    "%d(%s)" % (s, i) for s, i in sorted(d["strides"], key=lambda x: (x[0], x[1])))
            rw = "".join(c for c in "RW&" if any(c in x for x in d["rw"]))
            conflict = "  CONFLICT widths" if len({w.rstrip("suScpe?") for w in d["widths"] if w[0] != "?"}) > 1 else ""
            notes = ("  ; " + "; ".join(sorted(d["notes"]))) if d["notes"] else ""
            print("   %-8s:%-6s%s  %s%s%s" % (fmt_off(off, []), widths, stride, rw, conflict, notes))
        seen_e = set()
        for e in edge_map.get(key, []):
            fn_, root_, off_, offs, callee, ai = e
            if (offs, callee, ai) in seen_e:
                continue
            seen_e.add((offs, callee, ai))
            if ai == "implicit":
                print("   -> %s (implicit this)" % callee)
            else:
                print("   -> %s arg %s%s" % (callee, ai, ("" if offs in ("0x0", "-") else " (+%s)" % offs)))


if __name__ == "__main__":
    main()
