"""scripts/next.py: the classification of a slice, and the survey over the tree."""

import os
import textwrap

from conftest import REPO

import next as nxt


def slice_text(mode, name, *body):
    # a pool word and a numeric local label sit at column 0, as in the real slices
    lines = [f"\t{mode}_func_start {name}"] + [
        b if b[:2] == "_0" or b.isdigit() else f"\t{b}" for b in body]
    lines.append(f"\tthumb_func_end {name}" if mode != "arm" else f"\tarm_func_end {name}")
    return "\n".join(lines) + "\n"


def test_pool_free_thumb_is_splice_whatever_its_alignment():
    aligned = nxt.classify("sub_1", slice_text("thumb", "sub_1", "adds r0, #0xe8", "bx lr"))
    halfword = nxt.classify(
        "sub_2", slice_text("non_word_aligned_thumb", "sub_2", "adds r0, #0xe8", "bx lr"))
    assert aligned["cls"] == halfword["cls"] == "splice"
    assert not aligned["halfword"] and halfword["halfword"]
    assert aligned["lines"] == 2


def test_a_pool_label_in_the_body_is_pool_even_when_the_slice_defines_it():
    shared = slice_text("thumb", "sub_1", "ldr r0, _08001234", "bx lr")
    own = slice_text("thumb", "sub_1", "ldr r0, _08001234", "bx lr", "_08001234 DCDU 0x1234")
    assert nxt.classify("sub_1", shared)["cls"] == "pool"
    assert nxt.classify("sub_1", own)["cls"] == "pool"


def test_adr_and_add_pc_are_adr():
    assert nxt.classify("s", slice_text("thumb", "s", "adr r0, 4", "bx lr"))["cls"] == "adr"
    assert nxt.classify("s", slice_text("thumb", "s", "add r1, pc, #8", "bx lr"))["cls"] == "adr"
    # a pool load outranks ADR: the rewrite is what it waits on
    both = slice_text("thumb", "s", "ldr r0, _08001234", "adr r1, 4", "bx lr")
    assert nxt.classify("s", both)["cls"] == "pool"


def test_bx_pc_alone_is_a_veneer_but_bx_pc_with_code_is_not():
    assert nxt.classify("j", slice_text("thumb", "j", "bx pc"))["cls"] == "veneer"
    assert nxt.classify("j", slice_text("thumb", "j", "bx pc", "ALIGN"))["cls"] == "veneer"
    assert nxt.classify("j", slice_text("thumb", "j", "movs r0, #0", "bx pc"))["cls"] == "splice"


def test_arm_is_arm_before_anything_else():
    text = slice_text("arm", "sub_1", "ldr r0, _08001234", "bx lr")
    assert nxt.classify("sub_1", text)["cls"] == "arm"


def test_member_labels():
    assert nxt.classify("Boss__10", slice_text("thumb", "Boss__10", "bx lr"))["member"]
    assert nxt.classify("ScannerScriptGroup__Intersect",
                        slice_text("thumb", "ScannerScriptGroup__Intersect", "bx lr"))["member"]
    assert nxt.classify("m38__7DefaultFv", slice_text("thumb", "m38__7DefaultFv", "bx lr"))["member"]
    assert nxt.classify("__ct__7DefaultFv", slice_text("thumb", "__ct__7DefaultFv", "bx lr"))["member"]
    assert not nxt.classify("sub_8004C2C", slice_text("thumb", "sub_8004C2C", "bx lr"))["member"]
    assert not nxt.classify("gameExit", slice_text("thumb", "gameExit", "bx lr"))["member"]


def test_source_definitions_skip_prototypes_and_calls():
    src = textwrap.dedent("""\
        extern "C" void sub_8013318(void *a0, int a1);
        void Boss::m10()
        {
            sub_8013318(this, 1);
        }
        int sub_8004C2C(void *a0, int a1)
        {
            return 0;
        }
        static int helper(int a)
        {
            return a;
        }
        """)
    assert nxt.source_definitions(src) == ["Boss::m10", "sub_8004C2C", "helper"]


def test_converted_prefers_the_yml_then_the_manifest_then_the_source(tmp_path):
    repo = tmp_path
    (repo / "partial").mkdir()
    (repo / "partial" / "u.yml").write_text("functions: [a, b]\n")
    assert nxt.converted("u", str(repo)) == ({"a", "b"}, None)

    (repo / "partial" / "u.yml").write_text("")
    (repo / "build" / "x").mkdir(parents=True)
    (repo / "build" / "x" / "u.s.functions").write_text("c\nd\n")
    assert nxt.converted("u", str(repo)) == ({"c", "d"}, None)

    (repo / "build" / "x" / "u.s.functions").unlink()
    (repo / "partial" / "u.cpp").write_text("void Boss::m10()\n{\n}\nint e(void)\n{\n}\n")
    names, note = nxt.converted("u", str(repo))
    assert names == {"m10", "e"}
    assert "run make check" in note


def test_survey_covers_every_remaining_function_once():
    rows, notes = nxt.survey(REPO)
    assert rows, "the survey found nothing still in assembly"
    assert not notes, notes
    assert len({(r["unit"], r["name"]) for r in rows}) == len(rows)
    assert {r["cls"] for r in rows} <= set(nxt.CLASSES)
    # every whole-asm unit's functions are in it, and only from slices that exist
    for r in rows:
        assert os.path.exists(os.path.join(REPO, "asm", "nonmatching", r["unit"], r["name"] + ".s"))
    whole = {os.path.basename(p)[:-2] for p in os.listdir(os.path.join(REPO, "asm", "split"))
             for p in [p] if p.endswith(".s")}
    assert whole <= {r["unit"] for r in rows}


def test_own_pool_is_trailing_or_interior_by_where_the_instructions_stop():
    none = slice_text("thumb", "s", "ldr r0, _08001234", "bx lr")
    trailing = slice_text("thumb", "s", "ldr r0, _08001234", "bx lr", "ALIGN",
                          "_08001234 DCDU REG_WIN0H")
    padded = slice_text("thumb", "s", "ldr r0, _08001234", "bx lr", "_08001234 DCDU 0x1234",
                        "_08001238 DCB 0x00", "DCB 0x00")
    interior = slice_text("non_word_aligned_thumb", "s", "adds r3, #1", "b %73", "ALIGN",
                          "_0801E75C DCDU 0xFF8003FF", "_0801E760 DCDU gUnknown_03003458",
                          "73", "bx lr")
    assert nxt.classify("s", none)["own_pool"] is None
    assert nxt.classify("s", trailing)["own_pool"] == "trailing"
    assert nxt.classify("s", padded)["own_pool"] == "trailing"
    assert nxt.classify("s", interior)["own_pool"] == "interior"
    assert nxt.classify("s", interior)["cls"] == "pool"


def test_ready_queue_puts_parked_last_and_batches_skip_them():
    def row(cls, name, unit, lines, parked=False, has_partial=True, halfword=False,
            own_pool=None):
        return dict(cls=cls, parked=parked, has_partial=has_partial, lines=lines, name=name,
                    unit=unit, halfword=halfword, member=False, ext=".c", addr="0x1",
                    own_pool=own_pool)
    rows = [
        row("splice", "p", "u1", 1, parked=True),
        row("splice", "fresh", "u2", 3, has_partial=False),
        row("splice", "grown", "u3", 9, halfword=True),
        row("pool", "lit", "u3", 2),
        row("pool", "trail", "u4", 4, own_pool="trailing"),
        row("pool", "inner", "u4", 6, own_pool="interior"),
        row("pool", "alone", "u5", 5),
    ]
    assert [r["name"] for r in nxt.queue(rows, "splice")] == ["grown", "fresh", "p"]
    assert [r["name"] for r in nxt.queue(rows, "splice", include_parked=False)] == ["grown", "fresh"]
    # splice first, then pool, an own pool trailing or interior included; parked is not ready
    assert [r["name"] for r in nxt.queue(rows, "pool")] == ["lit", "trail", "alone", "inner"]
    assert [r["name"] for r in nxt.ready(rows)] == ["grown", "fresh", "lit", "trail", "alone", "inner"]
    assert nxt.flags(rows[4], "halfword", "parked") == ["own pool: trailing"]
    assert nxt.flags(rows[2], "halfword", "parked") == ["halfword"]
    # a unit's pool functions ride with its splice ones, and with each other
    groups = nxt.batches(rows, count=3, per=1)
    assert [[r["name"] for r in g] for g in groups] == [["grown", "lit"], ["fresh"], ["trail", "inner"]]
    assert nxt.batches(rows, count=3, per=1, min_lines=5) == [[rows[2]], [rows[6]], [rows[5]]]
    cmds = nxt.ticket_commands(groups, "winx-test")
    assert cmds.count("bd create ") == 3
    assert "--parent winx-test" in cmds
    assert "u3  .c  grown (9 lines, halfword start), lit (2 lines, pool)" in cmds
    assert "dry run" not in cmds and "pool-loading" not in cmds
    assert "Batch 1 of 3: 1 unit(s), 2 function(s)" in cmds


def test_parked_names_reads_every_heading_style(tmp_path):
    parked = tmp_path / "parked.md"
    parked.write_text(textwrap.dedent("""\
        ## sub_803B81C (asm/nonmatching/split_803B81C/) -- winx-5nt.3
        ## sub_8005044, SomehowInitEWRAMLinkedList, sub_8005164 / sub_8005170 (split_8005044)
        **`sub_8004784`** and **`sub_8004984`** (`asm/split/split_8004780.s`, 17 lines)
        ## 2026-09-25: sub_80132F4 unparked -- a date entry names no function
        """))
    assert nxt.parked_names(str(parked)) == {
        "sub_803B81C", "sub_8005044", "SomehowInitEWRAMLinkedList",
        "sub_8005164", "sub_8005170", "sub_8004784", "sub_8004984"}
    assert nxt.parked_names(str(tmp_path / "missing.md")) == set()
