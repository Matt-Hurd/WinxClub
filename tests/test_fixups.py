import pytest

from conftest import lines, text

from asmfix import fixups

RULE = {
    "unit": "split_80402F8",
    "match": [r"LDR      r0,\[r4,#0\]", r"LDR      r1,\[r0,#(0x[0-9A-Fa-f]+)\]", r"MOV      r0,r4"],
    "replace": ["LDR      r1,[r4,#0]", "MOV      r0,r4", "LDR      r2,[r1,#$1]"],
}

SITE = """
        LDR      r0,[r4,#0]
        LDR      r1,[r0,#0x4c]
        MOV      r0,r4
        BL       __call_via_r2
"""


def test_rule_rewrites_a_site_keeping_groups_and_indentation():
    assert text(fixups.apply_rule(lines(SITE), RULE)) == text(lines("""
            LDR      r1,[r4,#0]
            MOV      r0,r4
            LDR      r2,[r1,#0x4c]
            BL       __call_via_r2
    """))


def test_rule_hits_every_site_unless_once():
    src = lines(SITE) + lines(SITE)
    assert text(fixups.apply_rule(src, RULE)).count("LDR      r2,[r1,#0x4c]") == 2
    assert text(fixups.apply_rule(src, dict(RULE, once=True))).count("LDR      r2,[r1,#0x4c]") == 1


def test_patterns_must_match_the_whole_line():
    src = lines(SITE)
    src[0] = "        LDR      r0,[r4,#0]  ; comment\n"
    assert fixups.apply_rule(src, RULE) == src


def test_match_and_replace_must_agree_in_length():
    with pytest.raises(ValueError):
        fixups.apply_rule(lines(SITE), dict(RULE, replace=RULE["replace"][:2]))


def test_apply_only_touches_the_rules_unit(ctx):
    cfg = {"fixups": [RULE]}
    assert fixups.apply(lines(SITE), ctx("build/src/Kiko.s", fixups=cfg)) == lines(SITE)
    assert fixups.apply(lines(SITE), ctx("build/src/split_80402F8.s", fixups=cfg)) != lines(SITE)
