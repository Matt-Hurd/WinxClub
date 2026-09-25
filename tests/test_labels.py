from conftest import lines, text

from asmfix import labels


def test_find_pool_labels_needs_an_offset_somewhere():
    src = lines("""
            BEQ      |L1.16|
            LDR      r1,|L1.28|
            LDR      r2,|L1.28| + 4
            LDR      r3,|L1.40|
    """)
    assert labels.find_pool_labels(src) == {("1", "28")}


def test_rewrite_branch_labels_become_numeric_locals(ctx):
    src = lines("""
            BNE      |L1.16|
    |L1.16|
            BX       lr
    """)
    assert text(labels.rewrite(src, ctx())) == text(lines("""
            BNE      %16
    16
            BX       lr
    """))


def test_rewrite_pool_labels_get_one_name_per_offset(ctx):
    src = lines("""
            LDR      r1,|L1.44|
            LDR      r2,|L1.44| + 4
            LDR      r3,|L1.44|+8
    |L1.44| DATA
            DCD      gUnknown_03003E88
    """)
    assert text(labels.rewrite(src, ctx())) == text(lines("""
            LDR      r1,_pool_1_44_0
            LDR      r2,_pool_1_44_4
            LDR      r3,_pool_1_44_8
    _pool_1_44_0
            DCD      gUnknown_03003E88
    """))


def test_rewrite_definition_drops_data_marker_for_locals_too(ctx):
    src = lines("""
            LDR      r1,|L1.28|
    |L1.28| DATA
            DCD      __VTABLE__4Kiko
    """)
    out = labels.rewrite(src, ctx())
    assert out[0] == "        LDR      r1,%28\n"
    assert out[1] == "28\n"


def test_rewrite_keeps_second_pool_apart_from_first(ctx):
    src = lines("""
            LDR      r1,|L1.996| + 8
            LDR      r1,|L1.1292| + 4
    |L1.996| DATA
    |L1.1292| DATA
    """)
    out = labels.rewrite(src, ctx())
    assert out[2] == "_pool_1_996_0\n"
    assert out[3] == "_pool_1_1292_0\n"


def test_dcb_size_counts_string_bytes_and_value_lists():
    assert labels.dcb_size('DCB      "Kiko"') == 4
    assert labels.dcb_size('DCB      "up\\0\\0"') == 4
    assert labels.dcb_size('DCB      "a\\n\\t\\\\"') == 4
    assert labels.dcb_size("DCB      1,2,3") == 3


def test_expand_pools_labels_every_entry_by_byte_offset(ctx):
    src = lines("""
    _pool_1_404_0
            DCD      __VTABLE__4Kiko
            DCB      "Kiko"
            DCW      0x0505

            DCQ      0x0000000000000001
            ; a comment inside the run
            DCD      gUnknown_08051096
            ENDP
    """)
    out = labels.expand_pools(src, ctx())
    assert text(out) == text(lines("""
    _pool_1_404_0
            DCD      __VTABLE__4Kiko
    _pool_1_404_4
            DCB      "Kiko"
    _pool_1_404_8
            DCW      0x0505

    _pool_1_404_10
            DCQ      0x0000000000000001
            ; a comment inside the run
    _pool_1_404_18
            DCD      gUnknown_08051096
            ENDP
    """))


def test_expand_pools_stops_at_the_first_non_data_line(ctx):
    src = lines("""
    _pool_1_8_0
            DCD      1
            BX       lr
            DCD      2
    """)
    out = labels.expand_pools(src, ctx())
    assert [l.strip() for l in out] == ["_pool_1_8_0", "DCD      1", "BX       lr", "DCD      2"]


def test_expand_pools_without_a_pool_returns_the_input(ctx):
    src = lines("""
    16
            DCD      1
    """)
    assert labels.expand_pools(src, ctx()) is src
