/* Twenty-three functions of split_800B464; the rest of the unit is still
 * assembly in asm/nonmatching/split_800B464/. cpp_evidence.py proves this
 * unit C++ (an __nw__FUi operator-new call elsewhere in it), so it is
 * spliced as .cpp even though none of these seven functions need a C++
 * construct themselves -- per tcc-and-tcpp-agree-unless-you-need-a-type.md
 * that makes no difference to the bytes, but the unit's proof still calls
 * for tcpp.
 *
 * The first seventeen are thin wrappers around asm functions of
 * split_80114B0/split_8011A80 that have no known signature in
 * config/symbols.yml (out of scope for this batch), so they are declared
 * locally as extern "C" -- plain functions, not vtable slots, so unmangled
 * -- same as partial/split_800B154.c's SoftReset.
 *
 * sub_800B4E0, sub_800B464 and sub_800B496 register/query a
 * dword_803EA8C's flags word (a bitfield at gUnknown_03003E94->8, cleared
 * bit-by-bit for cmd 0/1/2) with sub_80114B0(sub_800B496, sub_800B464) --
 * the same registration sub_800B4F0 and sub_800B590 do at the end of
 * (re)initialising the singleton. sub_800B554 and sub_800B4F0/sub_800B590
 * write the raw vtable pointer at offset 0 by hand -- both classes'
 * .cpp files (Singleton_3E94.cpp, dword_803EA8C.cpp) are one line each and
 * do not model this construct/destruct sequence in C++, so this follows
 * src/split_8040380.cpp's already-matched precedent (a hand-written
 * *(int*)obj = (int)&__VTABLE__... store, not a real ctor/dtor call) rather
 * than inventing a base class here. sub_803D9C4 has no decl either, so it
 * too is declared locally.
 */

#include "generated/functions.h"
#include "Singleton_3E94.hpp"

extern "C" void sub_80114B0(void *a0, void *a1);
extern "C" void *sub_803D9C4(int a0, int a1, int a2, int a3);
extern "C" int __VTABLE__14Singleton_3E94;
extern "C" int __VTABLE__335dword_803EA8C;

extern "C" void sub_801175C(void *a0);
extern "C" void sub_80115EC(void *a0);
extern "C" void sub_8011898(void *a0);
extern "C" void sub_80117B0(void *a0);
extern "C" void sub_8011D3C(void *a0);
extern "C" void sub_80116D4(void *a0);
extern "C" void sub_801197C(void *a0);
extern "C" void sub_8011562(void *a0);
extern "C" void sub_8011A80(void *a0);
extern "C" void sub_80117A4(void *a0);
extern "C" void sub_8011D56(void *a0);
extern "C" void sub_8011596(void *a0);
extern "C" void sub_801196A(void *a0);
extern "C" void sub_8011B22(void *a0);
extern "C" void sub_8011912(void *a0, void *a1, void *a2);
extern "C" void sub_8011AC2(void *a0);

extern "C" void sub_800B5EE(void *a0, void *a1, void *a2, void *a3)
{
    sub_8011912(a1, a2, a3);
}

extern "C" void sub_800B60E(void *a0, void *a1)
{
    sub_8011596(a1);
}

extern "C" void sub_800B62A(void *a0, void *a1)
{
    sub_801196A(a1);
}

extern "C" void sub_800B646(void *a0)
{
    sub_801197C(a0);
}

extern "C" void sub_800B652(void *a0)
{
    sub_8011562(a0);
}

extern "C" void sub_800B65E(void *a0)
{
    sub_8011A80(a0);
}

extern "C" void sub_800B66A(void *a0)
{
    sub_80117A4(a0);
}

extern "C" void sub_800B676(void *a0, void *a1)
{
    ((Singleton_3E94 *)a0)->field_0c = 0;
    sub_8011AC2(a1);
}

extern "C" void sub_800B68A(void *a0, void *a1)
{
    sub_8011B22(a1);
}

extern "C" void sub_800B6BE(void *a0)
{
    sub_8011D56(a0);
}

extern "C" void sub_800B548(void *a0)
{
    sub_801175C(a0);
}

extern "C" void sub_800B600(void *a0, void *a1)
{
    sub_80115EC(a1);
}

extern "C" void sub_800B61C(void *a0, void *a1)
{
    sub_8011898(a1);
}

extern "C" void sub_800B638(void *a0, void *a1)
{
    sub_80117B0(a1);
}

extern "C" void sub_800B698(void *a0, void *a1)
{
    ((Singleton_3E94 *)a0)->field_0c = a1;
    sub_8011D3C(a1);
}

extern "C" void *sub_800B6A8(void *a0)
{
    return ((Singleton_3E94 *)a0)->field_0c;
}

extern "C" void sub_800B6AC(void *a0)
{
    sub_80116D4(a0);
    ((Singleton_3E94 *)a0)->field_0c = 0;
}

extern "C" void sub_800B464(unsigned int cmd);
extern "C" void *sub_800B496(unsigned int cmd);

extern "C" void sub_800B4E0(void)
{
    sub_80114B0((void *)sub_800B496, (void *)sub_800B464);
}

extern "C" void sub_800B464(unsigned int a0)
{
    unsigned int cmd = a0;
    unsigned int *flags = &gUnknown_03003E94->field_08;

    switch (cmd)
    {
    case 0:
        *flags = *flags >> 1 << 1;
        break;
    case 1:
        *flags &= ~4;
        break;
    case 2:
        *flags &= ~2;
        break;
    }
}

extern "C" void *sub_800B496(unsigned int a0)
{
    unsigned int cmd = a0;
    Singleton_3E94 *inst = gUnknown_03003E94;
    unsigned int *flags = &inst->field_08;

    switch (cmd)
    {
    case 0:
        *flags |= 1;
        return inst->field_04;
    case 1:
        *flags |= 4;
        return (char *)inst->field_04 + 0x700;
    case 2:
        *flags |= 2;
        return (char *)inst->field_04 + 0xa20;
    default:
        return 0;
    }
}

extern "C" void sub_800B554(void *a0, int a1)
{
    Singleton_3E94 *self = (Singleton_3E94 *)a0;

    *(int *)a0 = (int)&__VTABLE__335dword_803EA8C;
    sub_801175C((void *)&__VTABLE__335dword_803EA8C);

    if (!((int)(self->field_08 << 0x1c) < 0))
    {
        sub_803D9A8(self->field_04, 0, 0);
        self->field_04 = 0;
    }

    *(int *)a0 = (int)&__VTABLE__14Singleton_3E94;
    gUnknown_03003E94 = 0;
    if (a1)
        sub_803DA18(a0);
}

extern "C" void *sub_800B4F0(void *a0)
{
    Singleton_3E94 *self;

    if (a0 == 0)
    {
        a0 = operator new(0x14);
        if (a0 == 0)
            return a0;
    }
    self = (Singleton_3E94 *)a0;

    *(int *)a0 = (int)&__VTABLE__14Singleton_3E94;
    gUnknown_03003E94 = self;
    *(int *)a0 = (int)&__VTABLE__335dword_803EA8C;

    self->field_04 = sub_803D9C4(1, 0xc20, 0, 0);

    self->field_08 = self->field_08 >> 1 << 1;
    self->field_08 &= ~2;
    self->field_08 &= ~4;
    self->field_08 &= ~8;
    self->field_08 &= ~0x10;

    sub_80114B0((void *)sub_800B496, (void *)sub_800B464);

    return a0;
}

extern "C" void sub_800B590(void *a0, void *a1)
{
    sub_801175C(a0);

    if (!((int)(((Singleton_3E94 *)a0)->field_08 << 0x1c) < 0))
        sub_803D9A8(((Singleton_3E94 *)a0)->field_04, 0, 0);

    if (a1 == 0)
    {
        ((Singleton_3E94 *)a0)->field_04 = sub_803D9C4(1, 0xc20, 0, 0);
        ((Singleton_3E94 *)a0)->field_08 &= ~8;
    }
    else
    {
        ((Singleton_3E94 *)a0)->field_04 = a1;
        ((Singleton_3E94 *)a0)->field_08 |= 8;
    }

    ((Singleton_3E94 *)a0)->field_08 = ((Singleton_3E94 *)a0)->field_08 >> 1 << 1;
    ((Singleton_3E94 *)a0)->field_08 &= ~2;
    ((Singleton_3E94 *)a0)->field_08 &= ~4;

    sub_80114B0((void *)sub_800B496, (void *)sub_800B464);
}
