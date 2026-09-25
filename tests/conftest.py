import os
import sys

import pytest

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(REPO, "scripts"))

import asmfix  # noqa: E402


def lines(text):
    """A triple-quoted snippet as readlines() would give it.

    The indentation of the closing quotes' line is what the test added, so that
    much is removed from every line; a compiler line keeps its own eight spaces.
    """
    body, _, closing = text.rpartition("\n")
    out = []
    for line in (body.lstrip("\n") + "\n").splitlines(keepends=True):
        if line.startswith(closing):
            line = line[len(closing):]
        out.append(line)
    return out


def text(lines_):
    return "".join(lines_)


@pytest.fixture
def ctx():
    """A Context for `unit.s` with an empty config, unless the test passes its own."""
    def make(path="unit.s", vtables=None, fixups=None):
        return asmfix.Context(path, {"vtables": vtables or {}, "fixups": fixups or {}})
    return make
