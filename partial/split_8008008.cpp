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
 *
 * sub_8008008 and sub_80081B6 build a small, vtable-less record (0x18
 * bytes, matching the operator new(0x18) here); sub_800802E, sub_8008072,
 * sub_8008100 and sub_800805E build a different, larger vtable-bearing
 * record (0x20 bytes) -- the two share this unit only by address
 * proximity, same as sub_8001A60/sub_8001B80 in partial/split_8001A60.cpp.
 * sub_8008008 writes its offset 0xc as one byte; sub_800802E's record has
 * an int at that offset instead, which is consistent with them being two
 * different objects, not one shape written two ways.
 */
#include "generated/functions.h"

extern "C" int __VTABLE__384dword_803EEF0;

struct Unknown_030033F4 {
    int field_00;
    int field_04;
};
extern "C" struct Unknown_030033F4 gUnknown_030033F4;

struct Struct8008008 {
    int field_00;
    int field_04;
    int field_08;
    unsigned char field_0c;
    int field_10;
    int field_14;
};

struct Struct800802E {
    void *vtable;
    unsigned short field_04;
    unsigned short field_06;
    int field_08;
    int field_0c;
    int field_10;
    int field_14;
    int field_18;
    int field_1c;
};

extern "C" void *sub_8008008(void *a0)
{
    struct Struct8008008 *p;

    if (a0 == 0) {
        a0 = operator new(0x18);
        if (a0 == 0) {
            return a0;
        }
    }
    p = (struct Struct8008008 *)a0;
    p->field_00 = 0;
    p->field_04 = 0;
    p->field_08 = 0;
    p->field_0c = 1;
    p->field_10 = 0;
    p->field_14 = 0;
    return a0;
}

extern "C" int sub_80080FC(void)
{
    return 0;
}

extern "C" int sub_8008100(void *a0)
{
    return ((struct Struct800802E *)a0)->field_18 == 0;
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
    struct Struct8008008 *p = (struct Struct8008008 *)a0;

    p->field_00 = 0;
    p->field_04 = 0;
    p->field_08 = a1;
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
    return ((struct Struct800802E *)a0)->field_06;
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
    ((struct Struct800802E *)a0)->vtable = &__VTABLE__384dword_803EEF0;
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
    /* REG_TM0CNT, not gUnknown_030033F4 or either a0 record -- kept as a
     * flat cast, see the mmio-constants-get-rebased quirk noted above. */
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
    struct Struct800802E *p;

    if (a0 == 0) {
        a0 = operator new(0x20);
        if (a0 == 0)
            return;
    }
    vt = &__VTABLE__384dword_803EEF0;
    g = &gUnknown_030033F4.field_00;
    p = (struct Struct800802E *)a0;
    p->vtable = vt;
    p->field_04 = 0;
    p->field_06 = 0;
    p->field_08 = 0;
    p->field_0c = 0;
    p->field_10 = 0;
    p->field_14 = 0;
    p->field_18 = 0;
    p->field_1c = 0;
    *g = 0;
}

/* sub_800812A is parked -- see notes/parked.md -- and stays in
 * asm/nonmatching/split_8008008/, which the splicer pulls in on its own
 * since it is not named here.
 */
