#!/usr/bin/env python3
"""Fix tcc/tcpp assembler output in place so armasm and the scatter accept it.

    python scripts/preprocess_compiler_labels.py build/.../unit.s ...

The Makefile runs this over every .s the compilers write, and
scripts/merge_partial_c.py calls convert_compiler_labels_in_file() before a
splice. The passes live in scripts/asmfix/ (read its __init__ for the order and
why it matters); the tables they use are config/vtables.yml and, owner-only,
config/fixups.yml. Idempotent: a file that has been through once is unchanged
by a second run.
"""

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import asmfix


def convert_compiler_labels_in_file(file_path):
    if not os.path.isfile(file_path):
        return
    try:
        asmfix.fix_file(file_path)
    except OSError as exc:
        print(f"Error writing to {file_path}: {exc}", file=sys.stderr)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(f"Usage: python {sys.argv[0]} <path_to_assembly_file.s> ...", file=sys.stderr)
        sys.exit(1)
    for path in sys.argv[1:]:
        convert_compiler_labels_in_file(path)
