/* Three of split_8017AB0's five candidates: sub_8017AB0, sub_8017AFE and
 * sub_8017B4C are the same setter (allocate a 0x1c record from
 * gUnknown_03003E88's pool, splice a0's a2-derived flags into its halfword
 * @0x10, hand it to sub_803FB24, then stash a1) differing only in where a1
 * lands -- word @0x8, halfword @0xc, halfword @0xe. The halfword @0x10 is a
 * real bitfield (low 6 bits left alone, high 10 bits set) -- writing it as
 * plain `& 0x3f` masking compiles to a shift-extract that does not match;
 * only an actual bitfield struct member produces the ROM's
 * `movs r2,#0x3f; ands r1,r2`.
 *
 * sub_8017B9A is parked -- see notes/parked.md -- and stays asm in
 * asm/nonmatching/split_8017AB0/, as does sub_8017CA0, out of scope for
 * this batch.
 *
 * sub_803FB24 and sub_803FB58 have no signature in config/symbols.yml (out
 * of scope for this batch), so they are declared locally, same as
 * partial/split_800B464.cpp's wrappers.
 */

#include "generated/globals.h"
#include "generated/functions.h"

extern "C" void *sub_803FB24(void *a0, void *a1, unsigned int a2, unsigned int a3);
extern "C" void sub_803FB58(void *a0, unsigned int a1);

extern "C" void sub_8017AB0(unsigned char *a0, unsigned int a1, unsigned char *a2, unsigned int a3, unsigned char a4)
{
    unsigned char idx = a4;
    unsigned char *obj;

    if (idx == 0xff)
        idx = a0[0x14];

    obj = (unsigned char *)sub_803F72C(gUnknown_03003E88, 0x1c, idx);

    struct Bits10_10 { unsigned char pad[0x10]; unsigned short lo : 6; unsigned short hi : 10; };

    ((struct Bits10_10 *)obj)->hi = *(unsigned short *)(a2 + 2) + 0x1c;

    sub_803FB24(obj, a2, a3, idx);

    *(unsigned int *)(obj + 8) = a1;

    sub_803FB58(obj, 0);
}

extern "C" void sub_8017AFE(unsigned char *a0, unsigned short a1, unsigned char *a2, unsigned int a3, unsigned char a4)
{
    unsigned char idx = a4;
    unsigned char *obj;

    if (idx == 0xff)
        idx = a0[0x14];

    obj = (unsigned char *)sub_803F72C(gUnknown_03003E88, 0x1c, idx);

    struct Bits10_10 { unsigned char pad[0x10]; unsigned short lo : 6; unsigned short hi : 10; };

    ((struct Bits10_10 *)obj)->hi = *(unsigned short *)(a2 + 2) + 0x1c;

    sub_803FB24(obj, a2, a3, idx);

    *(unsigned short *)(obj + 0xc) = a1;

    sub_803FB58(obj, 0);
}

extern "C" void sub_8017B4C(unsigned char *a0, unsigned short a1, unsigned char *a2, unsigned int a3, unsigned char a4)
{
    unsigned char idx = a4;
    unsigned char *obj;

    if (idx == 0xff)
        idx = a0[0x14];

    obj = (unsigned char *)sub_803F72C(gUnknown_03003E88, 0x1c, idx);

    struct Bits10_10 { unsigned char pad[0x10]; unsigned short lo : 6; unsigned short hi : 10; };

    ((struct Bits10_10 *)obj)->hi = *(unsigned short *)(a2 + 2) + 0x1c;

    sub_803FB24(obj, a2, a3, idx);

    *(unsigned short *)(obj + 0xe) = a1;

    sub_803FB58(obj, 0);
}
