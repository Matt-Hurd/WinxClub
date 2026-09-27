/* Two functions of split_802E800; the rest of the unit, including the parked
 * sub_802E800 (see notes/parked.md), is still assembly in
 * asm/nonmatching/split_802E800/. sub_802E8F8 is slot +0x1C of the class
 * labelled dword_803E2A0, whose vtable is the sub_802E4xx..8xx set that
 * dword_803EA68, dword_803ECF8 and dword_803EDC4 inherit this slot from, so
 * it is defined on that class. The ROM is `movs r0, #0` / `bx lr`.
 *
 * sub_802E8B0 is a plain function on the same object layout, not a member --
 * it is also called as the shared +0x20 vtable body from split_802DDDC.cpp,
 * which already declares it as a plain `extern "C"` function, so it keeps
 * that shape here too.
 */
#include "dword_803E2A0.hpp"

int dword_803E2A0::m1C()
{
    return 0;
}

extern "C" int sub_8000AC4(void *a0, void *a1);
extern "C" void *sub_80019B4(void *a0);
extern "C" void sub_8001338(void *a0, void *a1);
extern void *gUnknown_03003EB8;

extern "C" void sub_802E8B0(void *a0)
{
    char *obj = (char *)a0;
    unsigned int *p = *(unsigned int **)(obj + 4);
    unsigned int zero = 0;

    if (*p & 8)
        sub_8001338(gUnknown_03003EB8, p);

    *p = (*p & ~8u) | zero;

    unsigned int *p2 = *(unsigned int **)(obj + 4);
    *p2 = (*p2 & ~4u) | zero;

    unsigned int w = *(unsigned int *)(obj + 0x34);
    w &= ~(4u << 0x12);
    w &= ~(7u << 8);
    w += (4u << 7);
    *(unsigned int *)(obj + 0x34) = w;

    *(unsigned int *)(obj + 0xc) = zero;
}
