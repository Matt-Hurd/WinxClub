from conftest import lines, text

import asmfix
from asmfix import pools


def with_pools(ctx, **records):
    c = ctx()
    c.config["pools"] = records
    return c


def test_entries_take_the_recorded_addresses_in_file_order(ctx):
    src = lines("""
            LDR      r1,_pool_1_44_0
            LDR      r2,_pool_1_44_4
            BX       lr
    _pool_1_44_0
            DCD      gUnknown_03003E88
    _pool_1_44_4
            DCD      0x0000fffe
    """)
    c = with_pools(ctx, unit=[0x08000D60, 0x08000D64])
    assert text(pools.name_entries(src, c)) == text(lines("""
            LDR      r1,_08000D60
            LDR      r2,_08000D64
            BX       lr
    _08000D60 DCD      gUnknown_03003E88
    _08000D64 DCD      0x0000fffe
    """))


def test_a_second_pool_starts_at_the_first_address_past_the_first(ctx):
    src = lines("""
    _pool_1_8_0
            DCD      1
            B        %20
    20
            BX       lr
    _pool_1_40_0
            DCD      2
    """)
    out = pools.name_entries(src, with_pools(ctx, unit=[0x08001000, 0x08001010]))
    assert [l.strip() for l in out if l.startswith("_")] == [
        "_08001000 DCD      1", "_08001010 DCD      2"]
    assert pools.pool_blocks(src) == [([("_pool_1_8_0", 0)], 4), ([("_pool_1_40_0", 0)], 4)]


def test_a_string_is_one_entry_over_several_recorded_words(ctx):
    src = lines("""
            LDR      r0,_pool_1_4_4
    _pool_1_4_0
            DCD      gUnknown_03003E88
    _pool_1_4_4
            DCB      "hello wor",0
            DCB      0,0
    _pool_1_4_16
            DCD      2
    _pool_1_60_0
            DCD      3
    """)
    base = 0x08002000
    record = [base + k for k in (0, 4, 8, 12, 16)] + [base + 24]
    assert pools.pool_blocks(src) == [
        ([("_pool_1_4_0", 0), ("_pool_1_4_4", 4), ("_pool_1_4_16", 16)], 20),
        ([("_pool_1_60_0", 0)], 4)]
    out = pools.name_entries(src, with_pools(ctx, unit=record))
    assert [l.strip() for l in out if l.startswith("_")] == [
        "_08002000 DCD      gUnknown_03003E88", '_08002004 DCB      "hello wor",0',
        "_08002010 DCD      2", "_08002018 DCD      3"]
    assert out[0].strip() == "LDR      r0,_08002004"
    assert out[3].strip() == "DCB      0,0"


def test_a_unit_with_no_record_is_left_alone(ctx):
    src = lines("""
    _pool_1_8_0
            DCD      1
    """)
    assert pools.name_entries(src, with_pools(ctx, other=[0x08001000])) == src
    assert pools.name_entries(src, with_pools(ctx)) == src


def test_an_entry_at_an_unrecorded_offset_keeps_its_name(ctx):
    src = lines("""
    _pool_1_8_0
            DCD      1
    _pool_1_8_4
            DCD      2
    """)
    out = pools.name_entries(src, with_pools(ctx, unit=[0x08001000]))
    assert [l.strip() for l in out if l.startswith("_")] == ["_08001000 DCD      1", "_pool_1_8_4"]


def test_a_record_longer_than_the_pool_is_fine(ctx):
    src = lines("""
    _pool_1_8_0
            DCD      1
    """)
    out = pools.name_entries(src, with_pools(ctx, unit=[0x08001000, 0x08001004]))
    assert out[0].strip() == "_08001000 DCD      1"


def test_only_whole_labels_are_renamed(ctx):
    src = lines("""
            LDR      r1,_pool_1_8_0
            LDR      r2,_pool_1_8_04
    _pool_1_8_0
            DCD      1
    """)
    out = pools.name_entries(src, with_pools(ctx, unit=[0x08001000]))
    assert out[1].strip() == "LDR      r2,_pool_1_8_04"


def test_named_entries_are_a_fixed_point(ctx):
    src = lines("""
            LDR      r1,_08001000
    _08001000 DCD      1
    """)
    assert pools.name_entries(src, with_pools(ctx, unit=[0x08001000])) == src


def test_records_load_from_symbols_yml_once_and_only_on_demand(tmp_path):
    symbols = tmp_path / "symbols.yml"
    symbols.write_text(
        "pools:\n"
        "- unit: asm/split/split_8000C7C.s\n  entries:\n  - '0x08000D60'\n"
        "- unit: asm/nonmatching/split_800B154\n  entries:\n  - '0x0800B2B4'\n  - '0x0800B2B8'\n")
    cfg = {"vtables": {}, "fixups": {}}
    got = asmfix.pool_addresses(cfg, str(symbols))
    assert got == {"split_8000C7C": [0x08000D60], "split_800B154": [0x0800B2B4, 0x0800B2B8]}
    symbols.write_text("pools: []\n")
    assert asmfix.pool_addresses(cfg, str(symbols)) is got
    assert asmfix.pool_addresses({"pools": {}}, str(symbols)) == {}
    assert asmfix.load_pools(str(tmp_path / "absent.yml")) == {}
    assert asmfix.unit_stem("asm/split/split_8000C7C.s") == "split_8000C7C"
    assert asmfix.unit_stem("asm/nonmatching/split_800B154") == "split_800B154"


def test_the_context_looks_its_own_unit_up():
    c = asmfix.Context("build/winxclub/src/split_8000C7C.s",
                       {"pools": {"split_8000C7C": [0x08000D60]}})
    assert c.pool_addresses() == [0x08000D60]
    assert asmfix.Context("x.s", {"pools": {}}).pool_addresses() == []
