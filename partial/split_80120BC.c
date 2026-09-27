/* Three functions of split_80120BC; the rest of the unit is still assembly in
 * asm/nonmatching/split_80120BC/. config/symbols.yml is out of scope for this
 * batch, so sub_80123B4 is declared locally rather than via generated/functions.h.
 * sub_80123B4 lives in split_8012334, a different unit, so this one still
 * needs its IMPORT -- which the original disassembly's header.s already has.
 *
 * sub_80122F0 sets bit 2 of the found entry's field 4 (and mirrors it back to
 * *a0), sub_801230C clears the same bit; same shape as sub_8012334 in the
 * other unit of this batch, just OR instead of a plain store, and AND-NOT.
 *
 * sub_80120BC reads *(gUnknown_03003BC8 + 0x1c), a pointer to an array of
 * 4-byte entries; it returns via a guarded local, which matches the ROM's
 * MOV r0,#0 scheduled ahead of the pointer test rather than an early return.
 *
 * sub_80120CA, sub_80120E2, sub_80120FA, sub_8012180, sub_80121C4,
 * sub_8012126, sub_801228C and sub_801220C are parked -- see
 * notes/parked.md. sub_80120CA/E2 come down to one ADD's operand order
 * (base+index vs index+base) that no source reshaping moved -- see
 * notes/quirks/add-operand-order-follows-evaluation-not-source.md.
 */
#include "generated/globals.h"

extern void *sub_80123B4(void *a0);

void sub_80122F0(void *a0)
{
    void *entry = sub_80123B4(a0);

    if (entry != 0) {
        int flags = *(int *)((char *)entry + 4) | 2;
        *(int *)((char *)entry + 4) = flags;
        *(int *)a0 = flags;
    }
}

void sub_801230C(void *a0)
{
    void *entry = sub_80123B4(a0);

    if (entry != 0) {
        int flags = *(int *)((char *)entry + 4) & ~2;
        *(int *)((char *)entry + 4) = flags;
        *(int *)a0 = flags;
    }
}

unsigned char sub_80120BC(void)
{
    unsigned char result = 0;
    void *ptr = *(void **)(gUnknown_03003BC8 + 0x1c);

    if (ptr != 0)
        result = *(unsigned char *)((char *)ptr + 2);
    return result;
}

