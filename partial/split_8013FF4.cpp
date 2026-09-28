/* Four of split_8013FF4's candidates; the rest of the unit, including the
 * parked sub_80141B4 and sub_801404E (see notes/parked.md), is still
 * assembly in asm/nonmatching/split_8013FF4/. C++ evidence
 * (cpp_evidence.py): the unit's constructor (sub_8013FF8) calls
 * `__nw__FUi` (operator new), and the unit owns a vtable
 * (`__VTABLE__320dword_803E6A0`) -- proven C++, so this is .cpp. Neither of
 * the two is a vtable-slot label (Class__NN or a mangled name), so both are
 * written as free functions, not members.
 */
#include "generated/functions.h"
#include "dword_803E374.hpp"

extern "C" void sub_8013FF4(void)
{
}

/* sub_8014060 operates on dword_803E6A0's fields (see
 * include/dword_803E374.hpp) but 0x0e/0x18/0x1a fall inside the shared 0x58
 * -byte base layout it re-stamps in sub_8013FF8, so the base type proves the
 * header. */
extern "C" void sub_8014060(dword_803E374 *a0, int a1, int a2)
{
    a0->field_18 = (unsigned short)a1;
    a0->field_1a = (unsigned short)a2;
    a0->field_0e |= 2;
}

extern "C" void *sub_80134B8(void *a0);
extern "C" void sub_8013E2C(void *a0);
extern "C" int __VTABLE__320dword_803E6A0;

extern "C" void *sub_8013FF8(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x60);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_80134B8(a0);
    *(int *)a0 = (int)&__VTABLE__320dword_803E6A0;
    *(unsigned char *)((char *)a0 + 0xc) = 0;
    *(unsigned char *)((char *)a0 + 0x10) = 1;
    sub_8013E2C(a0);
    return a0;
}

extern "C" void sub_801352C(void *a0, int a1);

extern "C" void sub_801402C(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__320dword_803E6A0;
    sub_801352C(a0, 0);
    if (a1) {
        sub_803DA18(a0);
    }
}
