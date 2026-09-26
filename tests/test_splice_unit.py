"""scripts/splice_unit.py: a compiled function's literal loads, moved onto the
unit's pool by value, and every reason that move is refused."""

import textwrap

import pytest

import splice_unit as su


def slice_text(name, *body, mode="thumb"):
    # a pool word and a numeric local label sit at column 0, as in the real slices
    lines = [f"\t{mode}_func_start {name}"] + [
        b if b[:2] == "_0" or b.isdigit() else f"\t{b}" for b in body]
    lines.append(f"\tthumb_func_end {name}")
    return "\n".join(lines) + "\n\n"


HEADER = "\tAREA text, CODE\n\n\tIMPORT gUnknown_030033E8\n\n"
POOL = textwrap.dedent("""\
    \tALIGN
    _08005258 DCDU gUnknown_030033E8
    _0800525C DCDU REG_IE
    _08005260 DCDU 0x0000C00F
    _08005264 DCDU 0x$REG_SIOMULTI0
    """)
CONSTANTS = {"REG_IE": 0x4000200, "REG_SIOMULTI0": 0x4000120}

COMPILED = textwrap.dedent("""\
    sub_1 PROC
            LDR      r0,_pool_1_24_0
            LDR      r0,[r0,#4]  ; gUnknown_030033E8
            BX       lr
            ENDP

    sub_2 PROC
            LDR      r0,_pool_1_24_4
            LDR      r1,_pool_1_24_8
            LDR      r2,_pool_1_24_12
            BX       lr
            ENDP
    _pool_1_24_0
            DCD      gUnknown_030033E8
    _pool_1_24_4
            DCD      0x04000200
    _pool_1_24_8
            DCD      0xc00f
    _pool_1_24_12
            DCD      0x04000120
    _pool_1_24_16
            DCB      "abc",0

            IMPORT gUnknown_030033E8
    """)


def pieces(**extra):
    p = {"header.s": HEADER, "pool.s": POOL,
         "sub_1.s": slice_text("sub_1", "ldr r0, _08005258", "ldr r0, [r0, #4]", "bx lr"),
         "sub_2.s": slice_text("sub_2", "ldr r0, _0800525C", "ldr r1, _08005260",
                               "ldr r2, _08005264", "bx lr")}
    p.update(extra)
    return p


def test_compiler_output_hands_over_the_pool_entries():
    bodies, imports, pool = su.compiler_output(COMPILED)
    assert sorted(bodies) == ["sub_1", "sub_2"]
    assert imports == ["gUnknown_030033E8"]
    assert pool == {
        "_pool_1_24_0": ("DCD", "gUnknown_030033E8"),
        "_pool_1_24_4": ("DCD", "0x04000200"),
        "_pool_1_24_8": ("DCD", "0xc00f"),
        "_pool_1_24_12": ("DCD", "0x04000120"),
        "_pool_1_24_16": ("DCB", '"abc",0'),
    }


def test_loads_move_onto_the_units_words_by_value_and_the_compiled_pool_is_dropped():
    bodies, imports, pool = su.compiler_output(COMPILED)
    out = su.splice("u", ["sub_1", "sub_2"], pieces(), bodies, imports, pool, CONSTANTS)
    assert "LDR      r0,_08005258\n" in out          # a symbol, as text
    assert "LDR      r0,_0800525C\n" in out          # REG_IE, through the constants
    assert "LDR      r1,_08005260\n" in out          # 0xc00f against 0x0000C00F
    assert "LDR      r2,_08005264\n" in out          # 0x$REG_SIOMULTI0
    assert "_pool_" not in out
    assert out.endswith(POOL + "\tEND\n")
    assert "        DCD " not in out                 # the unit's DCDU words only


def test_literal_value_normalises_numbers_and_keeps_symbols_as_text():
    assert su.literal_value("0x0000C00F", {}) == su.literal_value(" 0xc00f ", {})
    assert su.literal_value("-2", {}) == su.literal_value("0xfffffffe", {})
    assert su.literal_value("REG_IE", CONSTANTS) == 0x4000200
    assert su.literal_value("0x$REG_IE", CONSTANTS) == 0x4000200
    assert su.literal_value("gUnknown_030033E8", CONSTANTS) == "gUnknown_030033E8"


def test_gba_constants_reads_seta_sums(tmp_path):
    inc = tmp_path / "gba_constants.inc"
    inc.write_text(textwrap.dedent("""\
        \tGBLA REG_BASE
        REG_BASE SETA 0x4000000 ; I/O register base address
        OFFSET_REG_IE SETA          0x200
        REG_IE SETA REG_BASE + OFFSET_REG_IE
        VRAM SETA 0x6000000
        VRAM_BG SETA VRAM
        ODD SETA REG_BASE :SHL: 1
        """))
    values = su.gba_constants(str(inc))
    assert values["REG_IE"] == 0x4000200
    assert values["VRAM_BG"] == 0x6000000
    assert "ODD" not in values
    assert su.gba_constants(str(tmp_path / "missing.inc")) == {}


def refused(body, pool, extra=None, constants=CONSTANTS):
    with pytest.raises(su.SpliceError) as exc:
        su.splice("u", ["sub_1", "sub_2"], pieces(**(extra or {})),
                  {"sub_1": body}, [], pool, constants)
    return str(exc.value)


def test_a_value_the_unit_pool_lacks_is_refused_with_the_value():
    msg = refused("\tLDR r0,_pool_1_24_0\n\tBX lr\n", {"_pool_1_24_0": ("DCD", "0x12345678")})
    assert "0x12345678" in msg and "no word" in msg


def test_a_value_the_unit_pool_holds_twice_is_refused_with_both_labels():
    twice = POOL + "_08005268 DCDU 0xC00F\n"
    msg = refused("\tLDR r0,_pool_1_24_0\n\tBX lr\n", {"_pool_1_24_0": ("DCD", "0xc00f")},
                  {"pool.s": twice})
    assert "_08005260" in msg and "_08005268" in msg


def test_a_string_entry_is_refused():
    msg = refused("\tLDR r0,_pool_1_24_0\n\tBX lr\n", {"_pool_1_24_0": ("DCB", '"abc",0')})
    assert "string" in msg


def test_a_load_the_compiled_pool_does_not_define_is_refused():
    msg = refused("\tLDR r0,_pool_1_24_0\n\tBX lr\n", {})
    assert "_pool_1_24_0" in msg and "does not define" in msg


def test_a_pool_the_label_pass_did_not_name_is_refused():
    msg = refused("\tLDR r0,|L1.24|\n\tBX lr\n", {})
    assert "|L1.24|" in msg and "label pass" in msg
    msg = refused("\tLDR r0,_08005258\n\tBX lr\n", {})
    assert "_08005258" in msg


def test_a_slice_with_a_pool_in_the_interior_of_its_body_is_refused():
    own = slice_text("sub_1", "ldr r0, _08005100", "b %1", "ALIGN", "_08005100 DCDU 0x1234",
                     "1", "bx lr")
    assert su.own_pool_shape(own) == "interior"
    msg = refused("\tMOV r0,#1\n\tBX lr\n", {}, {"sub_1.s": own})
    assert "own body" in msg and "interior" in msg


TRAILING = slice_text("sub_1", "ldr r0, _08005100", "ldr r1, _08005104", "bx lr", "ALIGN",
                      "_08005100 DCDU REG_IE", "_08005104 DCDU 0x1234")
TRAILING_BODY = "\tLDR      r0,_pool_1_24_4\n\tLDR      r1,_pool_1_24_0\n\tBX       lr\n"
TRAILING_POOL = {"_pool_1_24_4": ("DCD", "0x04000200"), "_pool_1_24_0": ("DCD", "0x00001234")}


def test_a_trailing_own_pool_is_kept_verbatim_and_the_loads_renamed_by_position():
    assert su.own_pool_shape(TRAILING) == "trailing"
    assert su.own_pool_shape(slice_text("sub_1", "bx lr")) is None
    # compiled order (4 then 0, as the file defines them) is the slice's order
    pool = dict(TRAILING_POOL)
    out = su.splice("u", ["sub_1", "sub_2"], pieces(**{"sub_1.s": TRAILING}),
                    {"sub_1": TRAILING_BODY}, [], pool, CONSTANTS)
    assert ("\tthumb_func_start sub_1\n"
            "\tLDR      r0,_08005100\n\tLDR      r1,_08005104\n\tBX       lr\n"
            "\tALIGN\n_08005100 DCDU REG_IE\n_08005104 DCDU 0x1234\n"
            "\tthumb_func_end sub_1\n") in out
    assert "_pool_" not in out and out.endswith(POOL + "\tEND\n")


def test_a_trailing_own_pool_with_a_different_count_or_value_is_refused_naming_both():
    body = "\tLDR      r0,_pool_1_24_4\n\tBX       lr\n"
    msg = refused(body, TRAILING_POOL, {"sub_1.s": TRAILING})
    assert "keeps 2 pool word(s)" in msg and "loads 1 (DCD 0x04000200)" in msg
    wrong = {"_pool_1_24_4": ("DCD", "0x04000200"), "_pool_1_24_0": ("DCD", "0x5678")}
    msg = refused(TRAILING_BODY, wrong, {"sub_1.s": TRAILING})
    assert "entry 2 of 2" in msg and "_08005104 DCDU 0x1234" in msg and "0x5678" in msg
    msg = refused(TRAILING_BODY, {"_pool_1_24_4": ("DCD", "0x04000200")}, {"sub_1.s": TRAILING})
    assert "_pool_1_24_0" in msg and "does not define" in msg
    string = {"_pool_1_24_4": ("DCD", "0x04000200"), "_pool_1_24_0": ("DCB", '"abc",0')}
    msg = refused(TRAILING_BODY, string, {"sub_1.s": TRAILING})
    assert "entry 2 of 2" in msg and 'DCB "abc",0' in msg and "word against a word" in msg


def test_a_pool_free_body_never_reads_the_constants():
    out = su.splice("u", ["sub_1", "sub_2"], pieces(), {"sub_1": "\tBX lr\n"}, [], {},
                    constants=None)
    assert "\tthumb_func_start sub_1\n\tBX lr\n\tthumb_func_end sub_1\n" in out
