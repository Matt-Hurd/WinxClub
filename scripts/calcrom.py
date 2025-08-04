#!/usr/bin/env python3

import sys
from elftools.elf.elffile import ELFFile
from elftools.elf.constants import SH_FLAGS

def die(message):
    """Prints an error message to stderr and exits."""
    print(f"ERROR: {message}", file=sys.stderr)
    sys.exit(1)

def main():
    # Check for the correct number of command-line arguments
    if len(sys.argv) != 2:
        die(f"no ELF file specified.\nUsage: {sys.argv[0]} path/to/your.elf")
    
    elf_path = sys.argv[1]

    c_code_size = 0
    asm_code_size = 0
    library_code_size = 0

    try:
        with open(elf_path, 'rb') as f:
            elf = ELFFile(f)
            
            # GBA ROM is mapped from 0x08000000 up to 0x0A000000 (32MB max)
            GBA_ROM_START = 0x08000000
            GBA_ROM_END = 0x0A000000

            # Iterate through all sections in the ELF file
            for section in elf.iter_sections():
                # Section names determine C or ASM code
                if section.name.startswith('.src'):
                    c_code_size += section['sh_size']
                elif section.name.startswith('.text'):
                    asm_code_size += section['sh_size']
                # Exclude .data sections before checking for library code
                elif not section.name.startswith('.data'):
                    # Check for other executable code in the ROM region
                    is_executable = section['sh_flags'] & SH_FLAGS.SHF_EXECINSTR
                    is_in_rom = GBA_ROM_START <= section['sh_addr'] < GBA_ROM_END
                    if is_executable and is_in_rom:
                        library_code_size += section['sh_size']

    except FileNotFoundError:
        die(f"could not open file '{elf_path}'.")
    except Exception as e:
        die(f"failed to process ELF file: {e}")

    # --- Calculate and Print Final Statistics ---
    total_code = c_code_size + asm_code_size + library_code_size
    if total_code == 0:
        die("No executable code found.")
    
    # Calculate percentages
    c_pct = 100 * c_code_size / total_code if total_code > 0 else 0
    asm_pct = 100 * asm_code_size / total_code if total_code > 0 else 0
    lib_pct = 100 * library_code_size / total_code if total_code > 0 else 0
    
    print(f"Total Code: {total_code} bytes")
    print("---")
    print(f"C Code (.src*):       {c_code_size:>8} bytes ({c_pct:7.4f}%)")
    print(f"ASM Code (.text*):     {asm_code_size:>8} bytes ({asm_pct:7.4f}%)")
    print(f"Library Code (other): {library_code_size:>8} bytes ({lib_pct:7.4f}%)")

if __name__ == '__main__':
    main()
