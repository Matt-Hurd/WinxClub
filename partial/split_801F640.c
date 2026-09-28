/* One function of split_801F640; the rest of the unit is still assembly in
 * asm/nonmatching/split_801F640/.
 *
 * `p == 0` and `(*p >> 10) & 1` are two separate early `return`s, not one
 * `&&`: the function is void, so both already share the same fall-through
 * exit and there is nothing for a-boolean-and-shares-one-exit to disambiguate
 * here. `(*p >> 10) & 1` written as `*p & 0x400` compiles a single-instruction
 * bit test (`LSL`/`BPL`) instead of the ROM's `LSL #0x15`/`LSR #0x1f` pair --
 * the shift-then-mask shape from offset-split-tells-you-where-the-field-
 * boundary-is.md, applied with the shift written explicitly rather than as
 * `>> 10 & 1`, which tcc folds into the same single-instruction test.
 *
 * `a0` is a Default* (include/Default.hpp); Default.hpp is a C++ class
 * header this .c unit cannot include (tcc, not tcpp), so it reaches the
 * fields through include/GameObj.h instead: field_2c/field_30 are Sprite*
 * (include/Sprite.h), field_38 the vtable-pointer array, directionAndMore the
 * same raw word split_801E2D0.cpp reads through Default.hpp directly, here
 * through a raw `a0 + 0x7c` cast since this unit only ever touches it as a
 * bitfield. `gUnknown_03003454` is a SlotManager* (include/SlotManager.h).
 */

#include "Sprite.h"
#include "SlotManager.h"
#include "GameObj.h"

void sub_801F640(struct GameObj *a0, unsigned int a1)
{
    struct Sprite *p = a0->field_2c;
    unsigned int bit;

    if (p == 0)
        return;
    bit = (p->field_00 << 21) >> 31;
    if (bit == 0)
        return;
    p->field_00 = (p->field_00 & ~0x800) | (a1 << 11);
}

extern void sub_80401E4(void *a0, unsigned int a1);
extern void sub_8017862(void *a0, unsigned int a1);
extern struct SlotManager *gUnknown_03003454;

/* Each pending-object slot's first word is a vtable pointer whose own first
 * word is a PIC-style offset from itself to the callback, the same shape as
 * split_801CB18.c's `vtbl + *(int*)(vtbl+off)` calls but at offset 0. */
void sub_801F65C(struct GameObj *a0)
{
    unsigned int i;

    for (i = 0; i < 5; i++) {
        void *obj = (void *)a0->field_38[i];
        if (obj != 0) {
            int *vtbl = *(int **)obj;
            ((void (*)(void *, int))((char *)vtbl + *vtbl))(obj, 1);
            a0->field_38[i] = 0;
        }
    }

    if ((int)(a0->field_30->field_00 << 31) != 0)
        sub_80401E4(a0->field_30, 0);
    if ((int)(a0->field_2c->field_00 << 31) == 0)
        sub_80401E4(a0->field_2c, 1);

    {
        struct SlotManager *g454 = gUnknown_03003454;
        unsigned char idx = (unsigned char)(*(unsigned int *)((char *)a0 + 0x7c) >> 16);

        g454->field_598[idx] &= ~1;
        sub_8017862(g454, idx);
        g454->field_498[idx] = 0;
        *(unsigned int *)((char *)a0 + 0x7c) &= ~0xff0000;
    }
}
