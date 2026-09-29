/* Several functions of split_803A490; the rest of the unit is still assembly
 * in asm/nonmatching/split_803A490/. An empty body is the whole function: tcc
 * emits the bare `bx lr` the ROM has, with no frame.
 *
 * `a0` is a Default* (include/Default.hpp). `p` in
 * ScannerScriptGroup__38_SetSize is not -- it is the Sprite* a0->field_2c or
 * a0->field_30, out of this task's scope, so it keeps its raw offsets.
 */

#include "Default.hpp"

void ScannerScriptGroup__StartAttack2(void)
{
}

void ScannerScriptGroup__StartAttack(void)
{
}

extern void TakeDamage__7DefaultFv(void *a0);

int ScannerScriptGroup__Intersect(struct Default *a0)
{
    TakeDamage__7DefaultFv(a0);
    *(unsigned int *)&a0->directionAndMore =
        (*(unsigned int *)&a0->directionAndMore << 1) >> 1;
    a0->field_34 = 0;
    return 1;
}

static void ScannerScriptGroup__38_SetSize(void *p, unsigned int a1)
{
    *(unsigned short *)((char *)p + 0x2a) =
        (*(unsigned short *)((char *)p + 0x2a) & ~0xc00) | (((a1 >> 6) & 3) << 10);
    *((unsigned char *)p + 5) = a1;
    if (!(*(unsigned int *)p & 0x200))
        *(unsigned int *)p |= 0x80;
}

void ScannerScriptGroup__38(struct Default *a0)
{
    /* 0xac (0x80 + 0x2c) is past Default's 0xa0 -- a Scanner-derived field
     * with no header yet, so it stays a raw offset. */
    if ((((*(unsigned int *)((char *)a0 + 0x80 + 0x2c)) << 5) >> 0x17) == 0x38)
        return;

    ScannerScriptGroup__38_SetSize(a0->field_30, 0x7f);
    ScannerScriptGroup__38_SetSize(a0->field_2c, 0x60);

    a0->flags.unk0C &= ~0x4000;
}
