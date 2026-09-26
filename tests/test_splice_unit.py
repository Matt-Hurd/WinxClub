"""scripts/splice_unit.py: a compiled function's literal loads, moved onto the
unit's pool by value, and every reason that move is refused."""

import os
import re
import textwrap

import pytest

from conftest import REPO

import splice_unit as su

FIXTURES = os.path.join(REPO, "tests", "fixtures")


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


# A pool tcc dumped inside sub_1: two words of its own, a neighbour's word with
# the same value as one of them (0x1234 at _08005108, never loaded here), the
# branch over it, and a load from the unit's end pool after it.
INTERIOR = slice_text("sub_1", "ldr r0, _08005100", "ldr r1, _08005104", "b %5", "ALIGN",
                      "_08005100 DCDU REG_IE", "_08005104 DCDU 0x1234",
                      "_08005108 DCDU 0x1234", "5", "ldr r2, _08005260", "bx lr")
INTERIOR_BODY = ("\tLDR      r0,_pool_1_24_4\n\tLDR      r1,_pool_1_24_0\n"
                 "\tLDR      r2,_pool_1_24_8\n\tBX       lr\n")
INTERIOR_POOL = {"_pool_1_24_4": ("DCD", "0x04000200"), "_pool_1_24_0": ("DCD", "0x00001234"),
                 "_pool_1_24_8": ("DCD", "0xc00f")}
INTERIOR_OUT = ("\tthumb_func_start sub_1\n"
                "\tLDR      r0,_08005100\n\tLDR      r1,_08005104\n"
                "\tb %N\n\tALIGN\n_08005100 DCDU REG_IE\n_08005104 DCDU 0x1234\n"
                "_08005108 DCDU 0x1234\nN\n"
                "\tLDR      r2,_08005260\n\tBX       lr\n"
                "\tthumb_func_end sub_1\n")


def unnumbered(text):
    """`text` with every local label N: renumber_locals picks the numbers."""
    return re.sub(r"^\d+$", "N", re.sub(r"%\d+", "%N", text), flags=re.M)


def test_own_pool_blocks_count_the_instructions_in_front_and_tell_the_branch_over():
    assert su.own_pool_shape(INTERIOR) == "interior"
    [b] = su.own_pool_blocks(INTERIOR.split("\n", 1)[1].rsplit("\tthumb_func_end", 1)[0])
    assert b.k == 2 and b.around == "5"
    assert b.text == ("\tALIGN\n_08005100 DCDU REG_IE\n_08005104 DCDU 0x1234\n"
                      "_08005108 DCDU 0x1234\n")
    assert [lab for lab, _, _ in b.words] == ["_08005100", "_08005104", "_08005108"]
    assert b.loaded == ["_08005100", "_08005104"]
    # after the function's own branch, with the code's label after it: no branch of its own
    natural = ("\tldr r0, _08005100\n\tb %7\n\tALIGN\n_08005100 DCDU 0x1234\n6\n"
               "\tmovs r0, #1\n7\n\tbx lr\n")
    [b] = su.own_pool_blocks(natural)
    assert b.k == 2 and b.around is None and b.loaded == ["_08005100"] and b.trampoline is None
    # a label on the branch over the pool: a conditional branch was routed through it
    routed = ("\tldr r0, _08005100\n\tbeq %8\n\tmovs r0, #1\n8\n\tb %9\n\tALIGN\n"
              "_08005100 DCDU 0x1234\n9\n\tbx lr\n")
    [b] = su.own_pool_blocks(routed)
    assert b.k == 3 and b.around == "9" and b.trampoline == "8"
    # the disassembler's labels among the words stay in the block; the one after does not
    strings = ("\tldr r0, _08005100\n\tb %9\n\tALIGN\n_08005100 DCDU 0x1234\n8\n"
               "\tDCB 0x42, 0x00\n_08005108 DCDU 0x5678\n9\n\tbx lr\n")
    [b] = su.own_pool_blocks(strings)
    assert b.k == 1 and b.around == "9"
    assert b.text == "\tALIGN\n_08005100 DCDU 0x1234\n8\n\tDCB 0x42, 0x00\n_08005108 DCDU 0x5678\n"


def test_compiler_output_strips_a_pool_the_compiler_dumped_inside_a_body():
    compiled = textwrap.dedent("""\
        big PROC
                LDR      r1,_pool_1_996_0
                B        %1008
                DCW      0000
        _pool_1_996_0
                DCD      0x00012345
        _pool_1_996_4
                DCD      gFirst
        1008
                STR      r3,[r2,#0x18]
                B        %9
        _pool_1_1200_0
                DCD      0x00000007
        8
                ADD      r0,r0,r1
        9
                BX       lr
                DCW      0000
                ENDP
        _pool_1_1292_0
                DCD      0x00022222
        """)
    bodies, imports, pool = su.compiler_output(compiled)
    assert bodies["big"] == ("        LDR      r1,_pool_1_996_0\n"
                             "        STR      r3,[r2,#0x18]\n"
                             "        B        %9\n8\n"         # the function's own branch stays
                             "        ADD      r0,r0,r1\n9\n"
                             "        BX       lr\n")
    assert pool == {"_pool_1_996_0": ("DCD", "0x00012345"), "_pool_1_996_4": ("DCD", "gFirst"),
                    "_pool_1_1200_0": ("DCD", "0x00000007"),
                    "_pool_1_1292_0": ("DCD", "0x00022222")}


def test_an_interior_own_pool_goes_back_after_the_same_instructions_and_the_loads_follow():
    out = su.splice("u", ["sub_1", "sub_2"], pieces(**{"sub_1.s": INTERIOR}),
                    {"sub_1": INTERIOR_BODY}, [], dict(INTERIOR_POOL), CONSTANTS)
    assert INTERIOR_OUT in unnumbered(out)
    assert "_pool_" not in out and out.endswith(POOL + "\tEND\n")
    # the compiler dumped its own pool elsewhere in the body: stripped, and put back where the slice has it
    elsewhere = ("\tLDR      r0,_pool_1_24_4\n\tB        %3\n\tDCW      0000\n"
                 "_pool_1_24_4\n\tDCD      0x04000200\n3\n"
                 "\tLDR      r1,_pool_1_24_0\n\tLDR      r2,_pool_1_24_8\n\tBX       lr\n")
    bodies, _, pool = su.compiler_output("sub_1 PROC\n" + elsewhere + "\tENDP\n"
                                         "_pool_1_24_0\n\tDCD 0x1234\n_pool_1_24_8\n\tDCD 0xC00F\n")
    out = su.splice("u", ["sub_1", "sub_2"], pieces(**{"sub_1.s": INTERIOR}), bodies, [], pool,
                    CONSTANTS)
    assert INTERIOR_OUT in unnumbered(out)
    # the branch over the pool takes a label of its own, apart from the body's
    busy = "\tLDR      r0,_pool_1_24_4\n1\n\tLDR      r1,_pool_1_24_0\n2\n\tLDR      r2,_pool_1_24_8\n\tBX       lr\n"
    out = su.splice("u", ["sub_1", "sub_2"], pieces(**{"sub_1.s": INTERIOR}),
                    {"sub_1": busy}, [], dict(INTERIOR_POOL), CONSTANTS)
    assert ("\tLDR      r1,_08005104\n\tb %N\n\tALIGN\n_08005100 DCDU REG_IE\n"
            "_08005104 DCDU 0x1234\n_08005108 DCDU 0x1234\nN\nN\n\tLDR      r2,_08005260\n") in unnumbered(out)
    labels = re.findall(r"^\d+$", out[out.index("sub_1"):out.index("sub_2")], flags=re.M)
    assert len(labels) == len(set(labels)) == 3


def test_a_pool_after_the_functions_own_branch_goes_back_with_no_branch_of_its_own():
    own = slice_text("sub_1", "ldr r0, _08005100", "b %7", "ALIGN", "_08005100 DCDU 0x1234",
                     "6", "movs r0, #1", "7", "bx lr")
    body = "\tLDR      r0,_pool_1_24_0\n\tB        %7\n6\n\tMOV      r0,#1\n7\n\tBX       lr\n"
    out = su.splice("u", ["sub_1", "sub_2"], pieces(**{"sub_1.s": own}), {"sub_1": body}, [],
                    {"_pool_1_24_0": ("DCD", "0x1234")}, CONSTANTS)
    assert ("\tthumb_func_start sub_1\n\tLDR      r0,_08005100\n\tB        %N\n"
            "\tALIGN\n_08005100 DCDU 0x1234\nN\n\tMOV      r0,#1\nN\n\tBX       lr\n"
            "\tthumb_func_end sub_1\n") in unnumbered(out)


def test_a_branch_routed_past_the_pool_is_refused():
    routed = slice_text("sub_1", "ldr r0, _08005100", "beq %8", "movs r0, #1", "8", "b %9",
                        "ALIGN", "_08005100 DCDU 0x1234", "9", "bx lr")
    body = "\tLDR      r0,_pool_1_24_0\n\tBEQ      %9\n\tMOV      r0,#1\n9\n\tBX       lr\n"
    msg = refused(body, {"_pool_1_24_0": ("DCD", "0x1234")}, {"sub_1.s": routed})
    assert "through label 8" in msg and "out of range" in msg and "_08005100" in msg


def test_an_interior_own_pool_is_refused_naming_both_sides():
    short = "\tLDR      r0,_pool_1_24_4\n"
    msg = refused(short, INTERIOR_POOL, {"sub_1.s": INTERIOR})
    assert "after 2 instruction(s)" in msg and "only 1" in msg and "_08005100" in msg
    # a value the original does not load from that pool -- even one a neighbour's word holds
    other = {"_pool_1_24_4": ("DCD", "0x04000200"), "_pool_1_24_0": ("DCD", "0x5678"),
             "_pool_1_24_8": ("DCD", "0xc00f")}
    msg = refused(INTERIOR_BODY, other, {"sub_1.s": INTERIOR})
    assert "loads 0x5678 before the pool it keeps at _08005100" in msg
    assert "does not load" in msg and "_08005104 0x1234" in msg
    # a word the original loads that the compiled function does not
    fewer = "\tLDR      r0,_pool_1_24_4\n\tLDR      r1,_pool_1_24_4\n\tLDR      r2,_pool_1_24_8\n\tBX       lr\n"
    msg = refused(fewer, INTERIOR_POOL, {"sub_1.s": INTERIOR})
    assert "loads _08005100, _08005104 from the pool" in msg and "compiled function loads _08005100" in msg
    # a load after the last block is the end pool's business, and refused as such
    after = {"_pool_1_24_4": ("DCD", "0x04000200"), "_pool_1_24_0": ("DCD", "0x00001234"),
             "_pool_1_24_8": ("DCD", "0x77")}
    msg = refused(INTERIOR_BODY, after, {"sub_1.s": INTERIOR})
    assert "loads 0x77, and the unit's pool has no word" in msg


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


TCC = "/opt/arm/linux/bin/tcc"
FLAGS = "-Wi -Wp -Wb -O2 -Otime -S -g- -apcs /interwork -fpu none"


@pytest.mark.skipif(not os.path.exists(TCC), reason="ADS tcc not installed")
def test_a_function_compiled_alone_splices_back_under_the_pool_the_unit_gave_it(tmp_path):
    """tests/fixtures/midpool: `first` then `big`, with the pool tcc dumped inside
    `big` because first's literal was about to fall out of range. Compiled alone,
    big dumps its pool 6 bytes later; spliced under the unit's own asm it comes
    back where the unit has it, and every instruction is the one the unit has.
    """
    import subprocess
    import asmfix
    fixed = open(os.path.join(FIXTURES, "midpool", "fixed.s")).read()
    src = open(os.path.join(FIXTURES, "midpool", "midpool.c")).read()
    alone = src[src.index("void big("):src.index("void last(")]
    (tmp_path / "alone.c").write_text(src[:src.index("void first(")] + alone)
    subprocess.run(f"{TCC} {FLAGS} -o {tmp_path / 'alone.s'} {tmp_path / 'alone.c'}",
                   shell=True, check=True)
    asmfix.fix_file(str(tmp_path / "alone.s"), dict(asmfix.load_config(), pools={}))
    bodies, imports, pool = su.compiler_output((tmp_path / "alone.s").read_text())
    # the unit as the disassembler would have cut it: the together-compiled big, as a slice
    together, _, _ = su.compiler_output(fixed)
    assert together["big"] != bodies["big"]  # the pool sits elsewhere: 0x12345 and gFirst are first's
    unit_big = fixed[fixed.index("big PROC") + len("big PROC\n"):fixed.index("        ENDP", fixed.index("big PROC"))]
    words = {"_pool_1_996_0": "_08000400", "_pool_1_996_4": "_08000404", "_pool_1_996_8": "_08000408",
             "_pool_1_1292_0": "_08000500", "_pool_1_1292_4": "_08000504"}
    unit_big = unit_big.replace("        DCW      0000\n", "\tALIGN\n")
    unit_big = re.sub(r"^(_pool_1_996_\d+)\n        DCD      (\S+)\n",
                      lambda m: f"{words[m.group(1)]} DCDU {m.group(2)}\n", unit_big, flags=re.M)
    unit_big = re.sub(r"_pool_1_\d+_\d+", lambda m: words[m.group(0)], unit_big)
    unit_big = re.sub(r"^        ", "\t", unit_big, flags=re.M).replace("\tB        %1008", "\tb %1008")
    unit_big = unit_big.replace("        DCW      0000\n", "")
    slice_big = "\tthumb_func_start big\n" + unit_big + "\tthumb_func_end big\n\n"
    assert su.own_pool_shape(slice_big) == "interior"
    unit = {"header.s": "\tAREA text, CODE\n\n\tIMPORT gBuffer\n\tIMPORT gFirst\n\tIMPORT gSecond\n\n",
            "pool.s": "\tALIGN\n_08000500 DCDU 0x00022222\n_08000504 DCDU gSecond\n",
            "first.s": slice_text("first", "bx lr"), "big.s": slice_big}
    out = su.splice("midpool", ["first", "big"], unit, {"big": bodies["big"]}, imports, pool, {})
    got = out[out.index("\tthumb_func_start big\n"):out.index("\tthumb_func_end big\n") + 21]

    def instructions(text):
        return [re.sub(r"%\d+", "%N", " ".join(ln.split())).lower() for ln in text.splitlines()
                if su.is_instruction(ln) or su.RE_UNIT_WORD.match(ln)]

    assert instructions(got) == instructions(slice_big)
    assert "_pool_" not in got
    # and through armasm: the unit spliced from asm alone and the unit with big
    # compiled alone assemble to the same code bytes
    asm_only = su.splice("midpool", ["first", "big"], unit)
    assert code_bytes(tmp_path, "ref", asm_only) == code_bytes(tmp_path, "got", out)


ARMASM = "/opt/arm/linux/bin/armasm"
ASFLAGS = "-CPU arm7tdmi -LIttleend -fpu none -apcs /interwork -I asminclude -I include"


def code_bytes(tmp_path, stem, text):
    """The bytes of the text AREA of `text` assembled by armasm, from the repo root
    so the unit's INCLUDE resolves as the Makefile's does."""
    import subprocess
    from elftools.elf.elffile import ELFFile
    src, obj = tmp_path / f"{stem}.s", tmp_path / f"{stem}.o"
    src.write_text("\tINCLUDE asm/macros.inc\n" + text)
    subprocess.run(f"{ARMASM} {ASFLAGS} -o {obj} {src}", shell=True, check=True, cwd=REPO)
    with open(obj, "rb") as fh:
        elf = ELFFile(fh)
        [text_section] = [sec for sec in elf.iter_sections() if sec.name == "text"]
        data = text_section.data()
    assert len(data) > 1000
    return data
