#!/usr/bin/env python
#
# Description:
#   Compares the virtual addresses of all symbols (functions/data) between
#   two ELF files. It reports which symbols have moved, which have been
#   added, and which have been removed.
#
# Dependencies:
#   pyelftools (install with: pip install pyelftools)
#
# Usage:
#   python compare_addrs.py <original.elf> <modified.elf>
#
#   You can also provide a rename map for symbols:
#   python compare_addrs.py <original.elf> <modified.elf> --map <rename.txt>
#
# The rename map file format (old_name new_name):
#   old_function_name new_function_name
#

import argparse
from elftools.elf.elffile import ELFFile
from elftools.elf.sections import SymbolTableSection

def parse_rename_map(map_file_path):
    """Parses a file that maps old symbol names to new symbol names."""
    if not map_file_path:
        return {}
    
    rename_map = {}
    try:
        with open(map_file_path, 'r') as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith('#'):
                    continue
                parts = line.split()
                if len(parts) == 2:
                    old_name, new_name = parts
                    rename_map[old_name] = new_name
                else:
                    print(f"[Warning] Skipping malformed line in map file: {line}")
    except FileNotFoundError:
        print(f"[Error] Rename map file not found: {map_file_path}")
        exit(1)
    return rename_map

def get_symbol_addresses(elf_path):
    """
    Extracts the name and address of all function and object symbols.

    Args:
        elf_path (str): Path to the ELF file.

    Returns:
        dict: A dictionary mapping symbol names to their virtual addresses.
              Returns None on error.
    """
    symbol_addrs = {}
    try:
        with open(elf_path, 'rb') as f:
            elf = ELFFile(f)

            # Find the symbol table
            symtab = elf.get_section_by_name('.symtab')
            if not isinstance(symtab, SymbolTableSection):
                print(f"[Error] Could not find .symtab in {elf_path}")
                return None

            # Iterate through all defined function and object symbols
            for symbol in symtab.iter_symbols():
                if (symbol['st_shndx'] != 'SHN_UNDEF' and
                    symbol['st_info']['type'] in ('STT_FUNC', 'STT_OBJECT') and
                    symbol.name):
                    symbol_addrs[symbol.name] = symbol['st_value']
    
    except FileNotFoundError:
        print(f"[Error] ELF file not found: {elf_path}")
        return None
    except Exception as e:
        print(f"[Error] Failed to process ELF file {elf_path}: {e}")
        return None
        
    return symbol_addrs

def main():
    """ Main entry point of the script. """
    parser = argparse.ArgumentParser(
        description="Compare the addresses of symbols between two ELF files."
    )
    parser.add_argument("file1", help="Path to the first (original) ELF file.")
    parser.add_argument("file2", help="Path to the second (modified) ELF file.")
    parser.add_argument(
        "--map",
        dest="map_file",
        help="Path to a file mapping old symbol names to new names.",
    )
    args = parser.parse_args()

    # Step 1: Parse rename map
    rename_map = parse_rename_map(args.map_file)
    if rename_map:
        print(f"Loaded {len(rename_map)} symbol rename entries.")

    # Step 2: Get symbol addresses from both files
    print(f"\nReading symbols from {args.file1}...")
    addrs1 = get_symbol_addresses(args.file1)
    if addrs1 is None: return

    print(f"Reading symbols from {args.file2}...")
    addrs2 = get_symbol_addresses(args.file2)
    if addrs2 is None: return

    # Step 3: Apply rename map to the first symbol dictionary
    mapped_addrs1 = {rename_map.get(name, name): addr for name, addr in addrs1.items()}

    # Step 4: Compare the two dictionaries
    symbols1 = set(mapped_addrs1.keys())
    symbols2 = set(addrs2.keys())

    common_symbols = symbols1.intersection(symbols2)
    removed_symbols = symbols1 - symbols2
    added_symbols = symbols2 - symbols1
    
    moved_symbols = []
    for name in sorted(common_symbols):
        if mapped_addrs1[name] != addrs2[name]:
            moved_symbols.append({
                'name': name,
                'old_addr': mapped_addrs1[name],
                'new_addr': addrs2[name]
            })

    # Step 5: Print the report
    print("\n" + "="*80)
    print("Symbol Address Comparison Report")
    print("="*80)

    if moved_symbols:
        print(f"\n[MOVED] {len(moved_symbols)} symbols have changed address:")
        for sym in moved_symbols:
            print(f"  - {sym['name']}: 0x{sym['old_addr']:08x} -> 0x{sym['new_addr']:08x}")
    else:
        print("\n[OK] No common symbols have moved.")

    if removed_symbols:
        print(f"\n[REMOVED] {len(removed_symbols)} symbols are in the original file only:")
        for name in sorted(removed_symbols):
            print(f"  - {name} (at 0x{mapped_addrs1[name]:08x})")
    
    if added_symbols:
        print(f"\n[ADDED] {len(added_symbols)} symbols are in the new file only:")
        for name in sorted(added_symbols):
            print(f"  - {name} (at 0x{addrs2[name]:08x})")

    if not moved_symbols and not removed_symbols and not added_symbols:
        print("\n✅ The symbol tables are equivalent.")

    print("\n" + "="*80)


if __name__ == "__main__":
    main()
