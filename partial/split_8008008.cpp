/* split_8008008; the rest of the unit still not converted is assembly in
 * asm/nonmatching/split_8008008/. cpp_evidence.py proves this unit C++ (an
 * __nw__FUi operator-new call in sub_8008008), so it is spliced as .cpp.
 * None of these are vtable slots -- plain sub_ labels -- so they are
 * unmangled `extern "C"` free functions, same convention as
 * partial/split_800B464.cpp.
 *
 * sub_800807C (12 lines) and sub_800808E (58 lines) are parked --
 * register-allocation-is-the-stop-signal, see notes/parked.md -- and stay
 * in asm/nonmatching/split_8008008/, which the splicer pulls in on its own
 * since they are not named here.
 *
 * gUnknown_030033F4 and __VTABLE__384dword_803EEF0 are declared locally the
 * same way src/split_8040380.cpp declares __VTABLE__14Singleton_3E90 and
 * gUnknown_03003E90 -- plain extern "C" globals, not a symbols.yml decl:.
 * gUnknown_030033F4 is a two-word record: field_00 a nonzero/live flag,
 * field_04 the last object's raw a0 argument, used later purely as an
 * integer (sub_8008160/sub_8008182 subtract a right-shifted copy of it from
 * a hardware timer snapshot), never dereferenced as a pointer here.
 * REG_TM0CNT (0x04000100) is 32-byte aligned, so a flat cast pools verbatim
 * -- see notes/quirks/mmio-constants-get-rebased-to-a-32-byte-boundary.md.
 */
#include "generated/functions.h"

extern "C" int __VTABLE__384dword_803EEF0;
extern "C" struct { int field_00; int field_04; } gUnknown_030033F4;

extern "C" void *sub_8008008(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x18);
        if (a0 == 0) {
            return a0;
        }
    }
    *(int *)((char *)a0 + 0x0) = 0;
    *(int *)((char *)a0 + 0x4) = 0;
    *(int *)((char *)a0 + 0x8) = 0;
    *(char *)((char *)a0 + 0xc) = 1;
    *(int *)((char *)a0 + 0x10) = 0;
    *(int *)((char *)a0 + 0x14) = 0;
    return a0;
}

extern "C" int sub_80080FC(void)
{
    return 0;
}

extern "C" int sub_8008100(void *a0)
{
    return *(int *)((char *)a0 + 0x18) == 0;
}

extern "C" int sub_8008118(void)
{
    return 0;
}

extern "C" int sub_800811C(void)
{
    return 0;
}

extern "C" void sub_8008120(void)
{
}

/* Written in field order 0, 4, 8; tcpp itself schedules the register-ready
 * a1 store between the two zero stores, which is the ROM's zero, a1, zero.
 */
extern "C" void sub_80081B6(void *a0, int a1)
{
    *(int *)((char *)a0 + 0x0) = 0;
    *(int *)((char *)a0 + 0x4) = 0;
    *(int *)((char *)a0 + 0x8) = a1;
}

extern "C" void sub_800807A(void)
{
}

extern "C" void sub_8008116(void)
{
}

extern "C" int sub_800810E(void)
{
    return 0;
}

extern "C" int sub_8008112(void)
{
    return 0;
}

extern "C" unsigned char sub_8008072(void *a0)
{
    return *(unsigned short *)((char *)a0 + 6);
}

extern "C" void sub_8008122(void)
{
    gUnknown_030033F4.field_00 = 1;
}

extern "C" void sub_80081A8(void)
{
    *(volatile unsigned short *)(0x04000100 + 0xa) = 0;
    gUnknown_030033F4.field_00 = 0;
    gUnknown_030033F4.field_04 = 0;
}

extern "C" void sub_800805E(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__384dword_803EEF0;
    if (a1 != 0)
        sub_803DA18(a0);
}

extern "C" int sub_8008160(void)
{
    int flag = gUnknown_030033F4.field_00;
    int cur = gUnknown_030033F4.field_04;
    int base;

    if (flag)
        base = cur;
    else
        base = 0;
    return cur - ((0x10000 - *(volatile unsigned short *)(0x04000100 + 8)) << 6) + base;
}

extern "C" int sub_8008182(void)
{
    volatile unsigned int *tm = (volatile unsigned int *)0x04000100;
    int flag;
    int cur;
    int base;

    *(volatile unsigned short *)((char *)tm + 0xa) = 0;
    flag = gUnknown_030033F4.field_00;
    cur = gUnknown_030033F4.field_04;
    if (flag)
        base = cur;
    else
        base = 0;
    return cur - ((0x10000 - *(volatile unsigned short *)((char *)tm + 8)) << 6) + base;
}

extern "C" void sub_800802E(void *a0)
{
    void *vt;
    int *g;

    if (a0 == 0) {
        a0 = operator new(0x20);
        if (a0 == 0)
            return;
    }
    vt = &__VTABLE__384dword_803EEF0;
    g = &gUnknown_030033F4.field_00;
    *(void **)a0 = vt;
    *(short *)((char *)a0 + 4) = 0;
    *(short *)((char *)a0 + 6) = 0;
    *(int *)((char *)a0 + 8) = 0;
    *(int *)((char *)a0 + 0xc) = 0;
    *(int *)((char *)a0 + 0x10) = 0;
    *(int *)((char *)a0 + 0x14) = 0;
    *(int *)((char *)a0 + 0x18) = 0;
    *(int *)((char *)a0 + 0x1c) = 0;
    *g = 0;
}

/* sub_800812A is parked -- see notes/parked.md -- and stays in
 * asm/nonmatching/split_8008008/, which the splicer pulls in on its own
 * since it is not named here.
 */
