from conftest import lines, text

from asmfix import ctor

STUB_UNIT = """
        AREA ||.text||, CODE, READONLY

__ct__13dword_803E67CFv PROC
        PUSH     {r3,lr}
        BL       __nw__FUi
        LDR      r1,%28
        STR      r1,[r0,#0]
        BX       r3
        DCW      0000
28
        DCD      __VTABLE__13dword_803E67C
        ENDP

        AREA __VTABLE__13dword_803E67C, COMDEF, CODE, READONLY
        DCD      __dt__13dword_803E67CFv - {PC}

        AREA ||i.__dt__13dword_803E67CFv||, COMDEF, CODE, READONLY
__dt__13dword_803E67CFv PROC
        BL       __dt__14Singleton_3E80Fv
        ENDP

        EXPORT __dt__13dword_803E67CFv
        EXPORT __VTABLE__13dword_803E67C
        EXPORT __ct__13dword_803E67CFv
        IMPORT __dt__14Singleton_3E80Fv
        IMPORT __nw__FUi
        IMPORT __ct__7DefaultFv
"""


def test_stub_constructor_and_inherited_destructor_are_stripped(ctx):
    c = ctx()
    out = ctor.strip_stub(lines(STUB_UNIT), c)
    assert c.constructor_stripped
    assert text(out) == text(lines("""
            AREA ||.text||, CODE, READONLY


            AREA __VTABLE__13dword_803E67C, COMDEF, CODE, READONLY
            DCD      __dt__13dword_803E67CFv - {PC}


            EXPORT __VTABLE__13dword_803E67C
            IMPORT __dt__14Singleton_3E80Fv
    """))


def test_operator_new_import_survives_when_another_function_calls_it(ctx):
    src = lines(STUB_UNIT) + lines("""
    sub_1 PROC
            BL       __nw__FUi
            ENDP
    """)
    out = ctor.strip_stub(src, ctx())
    assert "        IMPORT __nw__FUi\n" in out


def test_a_real_constructor_is_left_alone(ctx):
    body = "".join(f"        MOV      r{i % 8},r0\n" for i in range(20))
    src = lines("""
            AREA __VTABLE__4Kiko, COMDEF, CODE, READONLY
    __ct__4KikoFv PROC
    """) + body.splitlines(keepends=True) + lines("""
            ENDP
            IMPORT __nw__FUi
    """)
    c = ctx()
    assert ctor.strip_stub(src, c) == src
    assert not c.constructor_stripped


def test_no_vtable_means_no_stripping(ctx):
    src = lines("""
    __ct__4KikoFv PROC
            BX       lr
            ENDP
    """)
    assert ctor.strip_stub(src, ctx()) == src


def test_constructor_pool_entry_is_dropped_with_or_without_padding():
    src = lines("""
            BX       r3
            DCW      0000
    28
            DCD      __VTABLE__13dword_803E320
            ENDP
    24
            DCD      __VTABLE__4Kiko
            BX       lr
    """)
    assert [l.strip() for l in ctor.strip_constructor_pool(src)] == ["BX       r3", "ENDP", "BX       lr"]


def test_a_named_pool_entry_is_not_a_constructor_entry():
    src = lines("""
    _pool_1_52_0
            DCD      __VTABLE__13dword_803ECB8
            DCD      gUnknown_03003E7C
    """)
    assert ctor.strip_constructor_pool(src) == src


def test_align_pools_only_after_a_strip(ctx):
    src = lines("""
            BX       r3
    _pool_1_52_0
            DCD      __VTABLE__354dword_803ECB8
    _pool_1_52_4
            DCD      gUnknown_03003E7C
    """)
    assert ctor.align_pools(src, ctx()) == src
    c = ctx()
    c.constructor_stripped = True
    assert text(ctor.align_pools(src, c)) == text(lines("""
            BX       r3
    \tALIGN
    _pool_1_52_0
            DCD      __VTABLE__354dword_803ECB8
    \tALIGN
    _pool_1_52_4
            DCD      gUnknown_03003E7C
    """))


def test_align_pools_skips_a_pool_already_padded_or_aligned(ctx):
    src = lines("""
            DCW      0000
    _pool_1_8_0
            DCD      1
    \tALIGN
    _pool_1_8_4
            DCD      2
    """)
    c = ctx()
    c.constructor_stripped = True
    assert ctor.align_pools(src, c) == src


def test_a_one_entry_pool_holding_the_vtable_is_the_constructors():
    src = lines("""
            BX       r3
            DCW      0000
    _pool_1_28_0
            DCD      __VTABLE__13dword_803E320
            ENDP
    """)
    assert [l.strip() for l in ctor.strip_constructor_pool(src)] == ["BX       r3", "ENDP"]


def test_a_vtable_entry_something_else_still_loads_stays():
    src = lines("""
            LDR      r1,_pool_1_28_0
            BX       lr
    _pool_1_28_0
            DCD      __VTABLE__13dword_803E320
    """)
    assert ctor.strip_constructor_pool(src) == src


def test_a_vtable_entry_in_a_pool_with_more_entries_stays():
    src = lines("""
    _pool_1_52_0
            DCD      __VTABLE__13dword_803ECB8
    _pool_1_52_4
            DCD      gUnknown_03003E7C
    """)
    assert ctor.strip_constructor_pool(src) == src
