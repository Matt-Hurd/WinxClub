from conftest import lines, text

from asmfix import endp


def test_endp_moves_in_front_of_the_trailing_pool(ctx):
    src = lines("""
            BX       lr
    _pool_1_44_0
            DCD      gUnknown_03003E88
    _pool_1_44_4
            DCD      0x0000fffe
            ENDP
    """)
    assert text(endp.before_pool(src, ctx())) == text(lines("""
            BX       lr
            ENDP
    _pool_1_44_0
            DCD      gUnknown_03003E88
    _pool_1_44_4
            DCD      0x0000fffe
    """))


def test_every_pool_shape_counts_as_data(ctx):
    src = lines("""
            BX       lr
            DCW      0000
    28
            DCD      1
    _08001234
            DCB      "x"

    |L1.8|
            DCQ      2
            SPACE    4
            FILL     4
            ALIGN
            ENDP
    """)
    out = endp.before_pool(src, ctx())
    assert out[1].strip() == "ENDP"
    assert out[-1].strip() == "ALIGN"


def test_endp_directly_after_code_stays(ctx):
    src = lines("""
            BX       lr
            ENDP
    """)
    assert endp.before_pool(src, ctx()) is src


def test_each_function_with_a_pool_is_handled(ctx):
    src = lines("""
    first PROC
            BX       lr
    _pool_1_8_0
            DCD      1
            ENDP
    second PROC
            BX       lr
    _pool_1_20_0
            DCD      2
            ENDP
    """)
    out = [l.strip() for l in endp.before_pool(src, ctx())]
    assert out == ["first PROC", "BX       lr", "ENDP", "_pool_1_8_0", "DCD      1",
                   "second PROC", "BX       lr", "ENDP", "_pool_1_20_0", "DCD      2"]


def test_a_pool_in_the_middle_of_a_function_is_not_the_trailing_one(ctx):
    src = lines("""
            B        %1008
            DCW      0000
    _pool_1_996_0
            DCD      0x00012345
    1008
            STR      r1,[r0,#0]
            BX       lr
            ENDP
    """)
    assert endp.before_pool(src, ctx()) is src


def test_a_labelled_directive_is_pool_data_too(ctx):
    src = lines("""
            BX       lr
    _0803FB50 DCD      gUnknown_03003E88
    _0803FB54 DCD      0x0000fffe
            ENDP
    """)
    out = endp.before_pool(src, ctx())
    assert [l.strip() for l in out] == ["BX       lr", "ENDP",
                                        "_0803FB50 DCD      gUnknown_03003E88",
                                        "_0803FB54 DCD      0x0000fffe"]
