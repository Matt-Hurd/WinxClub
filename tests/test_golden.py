"""scripts/golden.py: the fingerprint and the comparison, over real frozen objects.

The freeze and check commands need a build and the ROM, so they are exercised
by make check (report.py runs them); what is tested here is what they rest on.
"""

import os
import struct

import pytest

from conftest import REPO

import golden

GOLDEN = os.path.join(REPO, "tests", "golden")
UNITS = sorted(p[:-len(".o")] for p in os.listdir(GOLDEN) if p.endswith(".o"))


def path(unit):
    return os.path.join(GOLDEN, f"{unit}.o")


def test_goldens_exist():
    assert "Kiko" in UNITS and "split_803FB24" in UNITS


@pytest.mark.parametrize("unit", UNITS)
def test_fingerprint_holds_only_what_is_placed(unit):
    fp = golden.fingerprint(path(unit))  # {} for a unit that places nothing (UnknownObj)
    for name, (content, relocs) in fp.items():
        assert name not in (".symtab", ".strtab", ".comment", ".shstrtab", ".debug_frame")
        assert not name.startswith(".rel")
        assert isinstance(content, (bytes, int))
        for offset, kind, target in relocs:
            assert isinstance(offset, int) and isinstance(kind, int)
            assert isinstance(target, str)


def test_kiko_fingerprint():
    fp = golden.fingerprint(path("Kiko"))
    assert set(fp) == {"text", "__VTABLE__309Kiko"}
    text, relocs = fp["text"]
    assert len(text) == 452 and len(relocs) == 17
    assert relocs[0] == (8, 10, "__nw__FUi")  # R_ARM_THM_PC22 to operator new
    assert {t for _, t, _ in relocs} == {2, 10}  # R_ARM_ABS32 pool words, R_ARM_THM_PC22 calls
    assert len(fp["__VTABLE__309Kiko"][1]) == 20


def test_same_object_does_not_differ():
    assert golden.compare(path("Kiko"), path("Kiko")) == []


def test_different_units_differ_by_section():
    lines = golden.compare(path("Kiko"), path("Scanner"))
    assert "section __VTABLE__309Kiko: in golden only" in lines
    assert "section __VTABLE__332Scanner: in built only" in lines
    assert any(line.startswith("section text: 452 -> ") for line in lines)


def test_one_changed_byte_is_located(tmp_path):
    data = bytearray(open(path("Kiko"), "rb").read())
    text = next(s for s in golden.sections(bytes(data)) if s["name"] == "text")
    data[text["offset"] + 0x20] ^= 0xFF
    changed = tmp_path / "Kiko.o"
    changed.write_bytes(bytes(data))
    lines = golden.compare(path("Kiko"), str(changed))
    assert lines == ["section text: 452 -> 452 bytes, first difference at +0x20"]


def test_a_retargeted_relocation_is_named(tmp_path):
    data = bytearray(open(path("Kiko"), "rb").read())
    secs = golden.sections(bytes(data))
    rel = next(s for s in secs if s["name"] == ".reltext")
    # point the first relocation at the symbol the second one uses
    r0, r1 = rel["offset"], rel["offset"] + rel["entsize"]
    info1 = struct.unpack_from("<I", data, r1 + 4)[0]
    struct.pack_into("<I", data, r0 + 4, info1)
    changed = tmp_path / "Kiko.o"
    changed.write_bytes(bytes(data))
    lines = golden.compare(path("Kiko"), str(changed))
    assert lines == ["section text: relocations 17 -> 17 "
                     "(+0x8 __nw__FUi -> +0x8 __ct__7DefaultFv)"]


def test_not_an_elf_is_refused(tmp_path):
    bad = tmp_path / "bad.o"
    bad.write_bytes(b"not an object")
    with pytest.raises(golden.GoldenError):
        golden.fingerprint(str(bad))
