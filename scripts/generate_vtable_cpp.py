#!/usr/bin/env python3
"""
Generate C++ header/source files from vtable assembly files.
Also outputs the data needed to update preprocess_compiler_labels.py and scatter_script.txt.
"""
import os
import re
import sys

VTABLES_DIR = 'asm/vtables'
SRC_DIR = 'src'
INCLUDE_DIR = 'include'

def parse_vtable_file(filepath):
    """Parse a vtable .s file and extract class info."""
    with open(filepath) as f:
        content = f.read()

    # Extract AREA name: __VTABLE__<3-digit-id><classname>
    area_match = re.search(r'AREA\s+(__VTABLE__(\d{3})(\w+))', content)
    if not area_match:
        return None

    original_vtable_name = area_match.group(1)
    vtable_id = area_match.group(2)
    class_name = area_match.group(3)

    # Extract DCD entries (symbols referenced in vtable)
    dcd_entries = re.findall(r'DCD\s+(\S+)\s+-\s+' + re.escape(original_vtable_name), content)

    # Extract IMPORT symbols
    imports = re.findall(r'IMPORT\s+(\S+)', content)

    return {
        'original_vtable_name': original_vtable_name,
        'vtable_id': vtable_id,
        'class_name': class_name,
        'dcd_entries': dcd_entries,
        'imports': imports,
    }


def generate_hpp(class_name, dcd_entries):
    """Generate C++ header file content."""
    guard = class_name.upper().replace('.', '_') + '_HPP'
    # Handle class names starting with __ (like __vftable_GenericObject)
    guard = guard.lstrip('_') + '_'

    lines = []
    lines.append(f'#ifndef {guard}')
    lines.append(f'#define {guard}')
    lines.append('')
    lines.append(f'class {class_name} {{')
    lines.append('public:')
    lines.append(f'    {class_name}();')

    for i, symbol in enumerate(dcd_entries):
        offset = i * 4
        method_name = f'm{offset:02X}'
        if symbol == '__pvfn__Fv':
            lines.append(f'    virtual void {method_name}() = 0;')
        else:
            lines.append(f'    virtual void {method_name}();')

    lines.append('};')
    lines.append('')
    lines.append(f'#endif // {guard}')
    lines.append('')

    return '\n'.join(lines)


def generate_cpp(class_name):
    """Generate C++ source file content."""
    lines = []
    lines.append(f'#include "{class_name}.hpp"')
    lines.append('')
    lines.append(f'{class_name}::{class_name}() {{}}')
    lines.append('')
    return '\n'.join(lines)


def main():
    results = []

    for filename in sorted(os.listdir(VTABLES_DIR)):
        if not filename.endswith('.s'):
            continue

        filepath = os.path.join(VTABLES_DIR, filename)
        info = parse_vtable_file(filepath)
        if not info:
            print(f"SKIP: {filename} (no AREA found)", file=sys.stderr)
            continue

        class_name = info['class_name']
        dcd_entries = info['dcd_entries']

        # Generate hpp
        hpp_content = generate_hpp(class_name, dcd_entries)
        hpp_path = os.path.join(INCLUDE_DIR, f'{class_name}.hpp')

        # Generate cpp
        cpp_content = generate_cpp(class_name)
        cpp_path = os.path.join(SRC_DIR, f'{class_name}.cpp')

        # Write files
        with open(hpp_path, 'w') as f:
            f.write(hpp_content)
        with open(cpp_path, 'w') as f:
            f.write(cpp_content)

        # Compute C++ mangled vtable name
        cpp_vtable_name = f'__VTABLE__{len(class_name)}{class_name}'

        # Build method rename map (skip pure virtuals)
        method_renames = []
        for i, symbol in enumerate(dcd_entries):
            if symbol == '__pvfn__Fv':
                continue
            offset = i * 4
            method_name = f'm{offset:02X}'
            mangled = f'{method_name}__{len(class_name)}{class_name}Fv'
            method_renames.append((mangled, symbol))

        results.append({
            'filename': filename,
            'class_name': class_name,
            'cpp_vtable_name': cpp_vtable_name,
            'original_vtable_name': info['original_vtable_name'],
            'method_renames': method_renames,
            'dcd_count': len(dcd_entries),
        })

        print(f"Generated: {hpp_path}, {cpp_path} ({len(dcd_entries)} methods)")

    # Output vtable rename entries for preprocess_compiler_labels.py
    print("\n\n# === Add to vtable_renames dict in preprocess_compiler_labels.py ===")
    for r in results:
        print(f"        '{r['cpp_vtable_name']}': '{r['original_vtable_name']}',")

    # Output method rename map for preprocess_compiler_labels.py
    print("\n\n# === vtable_method_maps for preprocess_compiler_labels.py ===")
    print("    vtable_method_maps = {")
    for r in results:
        if r['method_renames']:
            symbols = [sym for _, sym in r['method_renames']]
            print(f"        '{r['class_name']}': {symbols},")
    print("    }")

    # Output scatter_script replacements
    print("\n\n# === Scatter script: replace vtableNN_*.o with ClassName.o ===")
    for r in results:
        old_name = r['filename'].replace('.s', '.o')
        new_name = f"{r['class_name']}.o"
        print(f"    {old_name} -> {new_name}")


if __name__ == '__main__':
    main()
