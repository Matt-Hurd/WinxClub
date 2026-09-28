/* Four functions of split_8014738; the rest of the unit is still assembly in
 * asm/nonmatching/split_8014738/. sub_8014738, sub_8014864 and sub_8014B34
 * were also attempted (per notes/parked.md) but their register allocation
 * would not move to match the ROM across several source shapes, so they
 * stay in asm/nonmatching and are pulled in as assembly by the splicer.
 */

#include "EntityState.h"

int sub_8014B58(void *a0)
{
    return ((struct EntityState *)a0)->field_54 != 0;
}

extern void sub_803F55C(void *a0);
extern void sub_8013E64(void *a0, int a1);

void sub_8014B7E(void *a0, int a1)
{
    sub_803F55C(a0);
    sub_8013E64(a0, a1);
}

int sub_8014B66(void *a0, int a1)
{
    typedef int (*Fn)(void *, unsigned char);
    void *vt;
    Fn fn;

    *(int *)((char *)a0 + 0x40) = a1;
    vt = *(void **)a0;
    fn = (Fn)(*(int *)((char *)vt + 0x28) + (int)vt);
    return fn(a0, *(unsigned char *)((char *)a0 + 0x2e));
}

extern void sub_803EF2C(void *a0);
extern void sub_803F5FC(void *a0, int a1, int a2, int a3);

/* The ROM shares one exit between three tests -- "already this value",
 * "on but nothing to notify", "off but nothing was on" -- the same shape as
 * notes/quirks/a-boolean-and-shares-one-exit-for-both-tests.md, here with
 * a `&&` and a second, later-checked half of the same condition.
 */
void sub_8014B02(void *a0, int a1)
{
    if (*(int *)((char *)a0 + 0x70) == a1)
        return;
    *(int *)((char *)a0 + 0x70) = a1;
    if (a1 != 0 && *(int *)((char *)a0 + 0x54) != 0) {
        sub_803EF2C(a0);
        return;
    }
    if (a1 != 0)
        return;
    if (*(int *)((char *)a0 + 0x60) != 0) {
        sub_803F5FC(a0, *(int *)((char *)a0 + 0x60), *(int *)((char *)a0 + 0x64),
                    *(int *)((char *)a0 + 0x68));
    }
}
