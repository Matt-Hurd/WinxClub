from conftest import lines, text

from asmfix import areas


def test_text_area_is_renamed(ctx):
    src = ["        AREA ||.text||, CODE, READONLY\n"]
    assert areas.rename(src, ctx()) == ["        AREA text, CODE, READONLY\n"]


def test_text_area_rename_wants_the_compilers_indentation(ctx):
    src = ["AREA ||.text||, CODE, READONLY\n"]
    assert areas.rename(src, ctx()) == src


def test_vtable_area_becomes_data_and_entries_lose_pc(ctx):
    src = lines("""
            AREA __VTABLE__4Kiko, COMDEF, CODE, READONLY

            DCD      __dt__4KikoFv - {PC}
            DCD      m04__4KikoFv + 4 - {PC}
            DCD      Dead__7DefaultFv + 76 - {PC}
    """)
    assert text(areas.rename(src, ctx())) == text(lines("""
            AREA __VTABLE__4Kiko, DATA, READONLY

            DCD      __dt__4KikoFv - __VTABLE__4Kiko
            DCD      m04__4KikoFv - __VTABLE__4Kiko
            DCD      Dead__7DefaultFv - __VTABLE__4Kiko
    """))


def test_pc_entries_outside_a_vtable_area_are_left_alone(ctx):
    src = lines("""
            AREA __VTABLE__4Kiko, COMDEF, CODE, READONLY
            DCD      m04__4KikoFv + 4 - {PC}
            AREA ||i.__dt__4KikoFv||, COMDEF, CODE, READONLY
            DCD      other + 4 - {PC}
    """)
    out = areas.rename(src, ctx())
    assert out[1] == "        DCD      m04__4KikoFv - __VTABLE__4Kiko\n"
    assert out[3] == "        DCD      other + 4 - {PC}\n"
