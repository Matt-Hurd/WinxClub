/* One function of split_80221AC; sub_802222C is parked (notes/parked.md),
 * still assembly in asm/nonmatching/split_80221AC/. The callees and the one
 * global besides gUnknown_0300345C/gUnknown_03003D20 (already in
 * generated/globals.h) are declared locally, config/symbols.yml being out
 * of scope for this batch.
 */

#include "generated/globals.h"

extern void sub_8028C2E(void *a0);
extern void TakeDamage__7DefaultFv(void *a0);
extern void *gUnknown_03003E98;

void sub_80221AC(void *a0)
{
    void *flags = (char *)a0 + 0x80;
    unsigned int action = *(unsigned int *)((char *)flags + 0x1c);
    unsigned int v;

    if (action != 5 && *(unsigned char *)&gUnknown_03003D20 != 0) {
        *(unsigned short *)((char *)a0 + 0x1e) = 0x44;
        *(unsigned short *)((char *)a0 + 0x1a) = 0x45;
        *(unsigned short *)((char *)a0 + 0x1c) = 0x46;
        *(unsigned short *)((char *)a0 + 0x18) = 0x46;
        *(unsigned int *)((char *)flags + 0x1c) = 0xd;
    } else if (action != 5 && action != 0xb) {
        *(unsigned short *)((char *)a0 + 0x1e) = 0x57;
        *(unsigned short *)((char *)a0 + 0x1a) = 0x58;
        *(unsigned short *)((char *)a0 + 0x1c) = 0x59;
        *(unsigned short *)((char *)a0 + 0x18) = 0x59;
        *(unsigned int *)((char *)flags + 0x1c) = 0xd;
    }

    v = *(unsigned int *)((char *)gUnknown_03003E98 + 8);
    v = (v << 0x1e) >> 0x1e;
    if (v < 2) {
        sub_8028C2E((char *)gUnknown_0300345C + (((v + 0x4d) << 0x18) >> 0x13));
    }

    *(unsigned int *)((char *)flags + 0xc) =
        (*(unsigned int *)((char *)flags + 0xc) & 0x8007ffff) + (0xf << 0x16);

    if (*(unsigned int *)((char *)flags + 0x1c) != 5) {
        TakeDamage__7DefaultFv(a0);
    }
}
