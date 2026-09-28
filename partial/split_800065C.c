/* One of split_800065C's five assigned functions; the rest of the unit
 * stays assembly in asm/nonmatching/split_800065C/. sub_800069A is not a
 * vtable slot, so it is a plain C function, not a class member.
 *
 * sub_80007A0 and sub_800088C are parked -- see notes/parked.md -- and
 * stay in asm/nonmatching/split_800065C/: both need the 64-bit
 * `__16_ll_sdiv` divide-by-0x10BE20 shape, whose divisor the splicer
 * cannot place -- sub_80007A0's `muls` multiply hits the same value at two
 * identical unit-pool words (_08000908, _0800090C) it cannot tell apart,
 * and sub_800088C's own 64-bit divisor loads as a compiled DCQ, which the
 * splicer's by-value pool rename (a word against a word) does not accept.
 *
 * sub_800075E and sub_800065C are also parked -- see notes/parked.md --
 * for register allocation: straight translations match shape and size but
 * not the exact registers tcc picks, and no source rearrangement tried
 * moved them (notes/quirks/register-allocation-is-the-stop-signal.md).
 *
 * sub_800069A reads/writes the camera singleton (gUnknown_03003EA0). This
 * is a plain C translation unit, so it cannot include Singleton_3EA0.hpp's
 * class; the fields src/Kiko.cpp and src/split_803FC14.cpp reach through
 * Singleton_3EA0_Data are read here as raw offsets from the pointer
 * instead -- gUnknown_03003EA0 itself with no `sub_8000D5A()` call, since
 * the ROM has no `bl sub_8000D5A` for these accesses either. The same
 * restriction applies to gUnknown_03003EA4: it reaches the 0x9a0 pointer
 * by raw offset, the same fixed-offset arithmetic as
 * partial/split_8002004.c's sub_8002004 and partial/split_800212C.c's
 * sub_80023BA, but includes Singleton3EA4Records.h (a plain struct, no
 * vtable) to type the record it points at.
 *
 * Its condition (four ANDed range checks against that table) compiles
 * with the small (flag-only) branch placed inline before the epilogue and
 * the big (position-update) branch out of line with a trailing branch back
 * to that same epilogue -- the ROM's shape -- only when the C is written
 * with the flag-only case as the `if` body and the position update as the
 * `else`, i.e. the condition negated from the "natural" reading. Same for
 * the two masked halfword writes: writing them as the ROM's own
 * shift-mask-shift pairs (as src/split_803FC14.cpp already does for its
 * `<< 16 >> 14` scale) matches; an `& mask` version cost an extra `AND`
 * building the mask in a register that the ROM's `LSR`/`LSL` pair does not
 * need.
 */
#include "generated/functions.h"
#include "generated/globals.h"
#include "Singleton3EA4Records.h"
#include "Sprite.h"

extern void *gUnknown_03003EA0;
extern void *gUnknown_03003EA4;

void sub_800069A(struct Sprite *a0)
{
    int *elem = (int *)((char *)(*(struct Singleton3EA4LevelBounds **)((char *)gUnknown_03003EA4 + 0x9A0)) + 0x38);
    unsigned int flags = a0->field_00;

    if (!(a0->field_3c >= elem[0]
        && a0->field_34 < elem[0] + 0xf00000
        && a0->field_40 >= elem[1]
        && a0->field_38 < elem[1] + 0xa00000)) {
        if (!(flags & 0x200)) {
            sub_800C1CA(gUnknown_03003EA0, a0);
            a0->field_00 |= 0x200;
        }
    } else {
        if (flags & 0x200) {
            sub_800BE0E(gUnknown_03003EA0, a0);
            flags = a0->field_00;
            flags &= ~0x200;
            flags |= 0x20;
            flags |= 0x40;
            a0->field_00 = flags;
        }

        {
            int f2c = a0->field_2c;
            int diff28 = (f2c / 0x10000) - (elem[0] / 0x10000);
            unsigned short h28 = a0->field_28;
            unsigned int lowbits = ((unsigned int)diff28 << 23) >> 23;
            unsigned int highbits = ((unsigned int)h28 >> 9) << 9;
            a0->field_28 = (unsigned short)(lowbits | highbits);
        }
        {
            int f30 = a0->field_30;
            int diff26 = (f30 / 0x10000) - (elem[1] / 0x10000);
            unsigned short h26 = a0->field_26;
            unsigned int lowbits = (unsigned int)diff26 << 24;
            unsigned int highbits = (unsigned int)h26 >> 8;
            highbits = highbits << 8;
            lowbits = lowbits >> 24;
            a0->field_26 = (unsigned short)(lowbits | highbits);
        }

        a0->field_00 |= 0x80;
    }
}
