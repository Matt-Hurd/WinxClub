from conftest import lines, text

from asmfix import vtables

CFG = {
    "arg_encodings": ["v", "Pv"],
    "classes": {
        "Kiko": {"area": "__VTABLE__309Kiko"},
        "dword_803E2A0": {"area": "__VTABLE__300dword_803E2A0",
                          "slots": ["sub_802E4AA", None, "sub_802E4EC"]},
    },
}


def test_area_renames_use_tcpps_length_prefix():
    assert vtables.area_renames(CFG) == {
        "__VTABLE__4Kiko": "__VTABLE__309Kiko",
        "__VTABLE__13dword_803E2A0": "__VTABLE__300dword_803E2A0",
    }


def test_method_renames_cover_every_encoding_and_the_destructor_alias():
    assert vtables.method_renames(CFG) == {
        "m00__13dword_803E2A0Fv": "sub_802E4AA",
        "__dt__13dword_803E2A0Fv": "sub_802E4AA",
        "m00__13dword_803E2A0FPv": "sub_802E4AA",
        "__dt__13dword_803E2A0FPv": "sub_802E4AA",
        "m08__13dword_803E2A0Fv": "sub_802E4EC",
        "m08__13dword_803E2A0FPv": "sub_802E4EC",
    }


def test_rename_areas_touches_every_mention(ctx):
    src = lines("""
            AREA __VTABLE__4Kiko, DATA, READONLY
            DCD      __dt__4KikoFv - __VTABLE__4Kiko
            EXPORT __VTABLE__4Kiko
    """)
    assert text(vtables.rename_areas(src, ctx(vtables=CFG))) == text(lines("""
            AREA __VTABLE__309Kiko, DATA, READONLY
            DCD      __dt__4KikoFv - __VTABLE__309Kiko
            EXPORT __VTABLE__309Kiko
    """))


def test_rename_methods_renames_and_imports_what_the_vtable_now_names(ctx):
    src = lines("""
            DCD      __dt__13dword_803E2A0Fv - __VTABLE__300dword_803E2A0
            DCD      __pvfn__Fv - __VTABLE__300dword_803E2A0
            DCD      m08__13dword_803E2A0FPv - __VTABLE__300dword_803E2A0
            IMPORT m08__13dword_803E2A0FPv
            IMPORT __pvfn__Fv
    """)
    assert text(vtables.rename_methods(src, ctx(vtables=CFG))) == text(lines("""
            DCD      sub_802E4AA - __VTABLE__300dword_803E2A0
            DCD      __pvfn__Fv - __VTABLE__300dword_803E2A0
            DCD      sub_802E4EC - __VTABLE__300dword_803E2A0
            IMPORT sub_802E4AA
            IMPORT sub_802E4EC
            IMPORT __pvfn__Fv
    """))


def test_empty_config_changes_nothing(ctx):
    src = lines("""
            AREA __VTABLE__4Kiko, DATA, READONLY
            DCD      m00__4KikoFv - __VTABLE__4Kiko
    """)
    assert vtables.rename_areas(src, ctx()) == src
    assert vtables.rename_methods(src, ctx()) == src
