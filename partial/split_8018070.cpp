/* Two functions of split_8018070; the rest of the unit is still assembly in
 * asm/nonmatching/split_8018070/. FadeToBlack is a sibling of FadeToImage
 * but stays assembly here -- it is not word-aligned, so it is out of scope
 * for this pool-free/word-aligned batch.
 */
#include "generated/functions.h"

extern "C" void sub_8004716(void *a0);
extern "C" void sub_803D680(void *a0, int a1, int a2, int a3, int a4, int a5,
                             int a6);
extern "C" int sub_803D97C(void *a0);
extern "C" void sub_803D834(void *a0);
extern "C" void sub_800474E(void *a0);

extern "C" void FadeToImage(void)
{
    int local[3];

    sub_8004716(local);
    sub_803D680(local, 1, 0x3f, 2, 0x10, 1, 0);
    while (!sub_803D97C(local)) {
        sub_803D834(local);
        sub_800474E(local);
        sub_800EF2A();
    }
}

/* a0's first word is zeroed by sub_803D9A8 (offset 0), and a0[0x10] is a
 * pointer whose target's first word is itself a self-relative function
 * pointer: the value stored at *a0[0x10] is an offset from that same
 * address, added back to get the callable target -- __call_via_r2 is the
 * compiler's own veneer for the resulting indirect call, not something to
 * write by hand.
 */
extern "C" void sub_8018160(void *a0, int a1)
{
    void *p;

    sub_803D9A8(*(void **)a0, 0, 0);
    *(int *)((char *)a0 + 0x0) = 0;
    *(int *)((char *)a0 + 0x4) = 0;
    *(int *)((char *)a0 + 0x8) = 0;
    *(int *)((char *)a0 + 0xc) = 0;
    p = *(void **)((char *)a0 + 0x10);
    if (p != 0) {
        void *base = *(void **)p;
        void (*fn)(void *, int) =
            (void (*)(void *, int))(*(int *)base + (int)base);
        fn(p, 1);
    }
    *(void **)((char *)a0 + 0x10) = 0;
    if (a1) {
        sub_803DA18(a0);
    }
}
