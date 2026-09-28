"""scripts/parked_index.py: entries, names, tickets and reasons from parked.md text."""

import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "scripts"))

import parked_index  # noqa: E402

SAMPLE = """# Parked functions

## sub_8000001 (asm/nonmatching/split_8000000/) -- winx-iez.3
The C is not in doubt. What is left is register allocation: the original
puts `a` in r4 and tcc puts it in r5. Best 97.10%.

## 2026-09-25: sub_8000009 unparked -- a dated note, not a park
Nothing to index here.

## sub_8000002, sub_8000003 (asm/nonmatching/split_8000000/) -- winx-iez.4
Splice refusal, not a compare cycle: merge_partial_c: sub_8000002 loads
_pool_1_2_4, a string; only a word can be found in the unit's pool by value.

**`sub_8000004`** (`asm/split/split_8000004.s`, 29 lines, `winx-78k.18`)
was not attempted: the batch timed out before it.
"""


def test_entries_names_and_tickets():
    rows = parked_index.parse(SAMPLE)
    assert [r["names"] for r in rows] == [
        ["sub_8000001"], ["sub_8000002", "sub_8000003"], ["sub_8000004"]]
    assert [r["ticket"] for r in rows] == ["winx-iez.3", "winx-iez.4", "winx-78k.18"]
    assert [r["line"] for r in rows] == [3, 10, 14]


def test_reasons_and_best_percent():
    rows = parked_index.parse(SAMPLE)
    assert [r["reason"] for r in rows] == ["registers", "tooling", "untried"]
    assert rows[0]["best"] == 97.10
    assert rows[1]["best"] is None


def test_note_is_one_line_without_backticks():
    rows = parked_index.parse(SAMPLE)
    assert rows[0]["note"].startswith("The C is not in doubt.")
    assert "`" not in rows[0]["note"]
    assert "\n" not in rows[0]["note"]
