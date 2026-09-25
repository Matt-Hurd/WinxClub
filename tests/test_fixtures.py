"""asmfix over captured compiler output, against the checked-in result.

tests/fixtures/<unit>/raw.s is what tcc or tcpp wrote (tests/regen_fixtures.py
says how), fixed.s is what asmfix made of it with the repo's config/. Fixtures:

  split_803FB24   plain C, one function, a two-entry pool
  dword_803E67C   tcpp vtable class with a stub constructor and an inherited
                  destructor AREA, both stripped; slot symbol from vtables.yml
  dword_803ECB8   stub constructor sharing its pool with the real destructor,
                  so the pool needs ALIGN once the constructor is gone
  Kiko            a real constructor kept, a string in the pool, and the Kiko
                  register fixup from config/fixups.yml
  split_80402F8   the vtable-dispatch fixup, applied four times
  midpool         a function tcc had to split a pool into the middle of
"""

import os

import pytest

from conftest import REPO

import asmfix

FIXTURES = os.path.join(REPO, "tests", "fixtures")
UNITS = sorted(d for d in os.listdir(FIXTURES) if os.path.isdir(os.path.join(FIXTURES, d)))


def read(unit, name):
    with open(os.path.join(FIXTURES, unit, name)) as fh:
        return fh.read()


@pytest.mark.parametrize("unit", UNITS)
def test_fixture_matches(unit):
    raw, fixed = read(unit, "raw.s"), read(unit, "fixed.s")
    assert raw != fixed
    assert asmfix.fix_text(raw, f"{unit}.s") == fixed


@pytest.mark.parametrize("unit", UNITS)
def test_fixture_is_a_fixed_point(unit):
    fixed = read(unit, "fixed.s")
    assert asmfix.fix_text(fixed, f"{unit}.s") == fixed


def test_every_fixture_has_both_files():
    assert UNITS
    for unit in UNITS:
        assert os.path.exists(os.path.join(FIXTURES, unit, "raw.s")), unit
        assert os.path.exists(os.path.join(FIXTURES, unit, "fixed.s")), unit
