import os
import subprocess
import sys

from conftest import REPO, lines, text

import asmfix
from asmfix import areas, ctor, endp, fixups, labels, vtables

UNIT = """
        AREA ||.text||, CODE, READONLY

sub_1 PROC
        LDR      r1,|L1.12|
        LDR      r2,|L1.12| + 4
        BNE      |L1.8|
|L1.8|
        BX       lr
|L1.12| DATA
        DCD      gUnknown_03003E88
        DCD      0x0000fffe
        ENDP
"""

FIXED = """
        AREA text, CODE, READONLY

sub_1 PROC
        LDR      r1,_pool_1_12_0
        LDR      r2,_pool_1_12_4
        BNE      %8
8
        BX       lr
        ENDP
_pool_1_12_0
        DCD      gUnknown_03003E88
_pool_1_12_4
        DCD      0x0000fffe
"""


def test_pass_order_is_the_documented_one():
    assert asmfix.PASSES == (
        labels.rewrite, areas.rename, labels.expand_pools, ctor.strip_stub,
        vtables.rename_areas, vtables.rename_methods, fixups.apply,
        ctor.align_pools, endp.before_pool)


def test_fix_text_runs_the_passes_and_is_idempotent():
    out = asmfix.fix_text(text(lines(UNIT)), "unit.s", {"vtables": {}, "fixups": {}})
    assert out == text(lines(FIXED))
    assert asmfix.fix_text(out, "unit.s", {"vtables": {}, "fixups": {}}) == out


def test_context_unit_is_the_files_stem():
    c = asmfix.Context("build/winxclub/src/split_80402F8.s", {})
    assert c.unit == "split_80402F8"
    assert not c.constructor_stripped


def test_fix_file_reports_whether_it_wrote(tmp_path):
    path = tmp_path / "unit.s"
    path.write_text(text(lines(UNIT)))
    assert asmfix.fix_file(str(path), {"vtables": {}, "fixups": {}}) is True
    assert path.read_text() == text(lines(FIXED))
    assert asmfix.fix_file(str(path), {"vtables": {}, "fixups": {}}) is False


def test_load_config_reads_the_repo_tables_and_a_missing_dir_is_empty(tmp_path):
    cfg = asmfix.load_config()
    assert "classes" in cfg["vtables"]
    assert "fixups" in cfg["fixups"]
    assert asmfix.load_config(str(tmp_path)) == {"vtables": {}, "fixups": {}}


def test_the_cli_fixes_files_in_place(tmp_path):
    path = tmp_path / "unit.s"
    path.write_text(text(lines(UNIT)))
    script = os.path.join(REPO, "scripts", "preprocess_compiler_labels.py")
    subprocess.run([sys.executable, script, str(path)], check=True, cwd=REPO)
    assert path.read_text() == text(lines(FIXED))
