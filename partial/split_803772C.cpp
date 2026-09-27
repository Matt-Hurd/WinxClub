/* Two functions of split_803772C; the rest of the unit, including
 * sub_803778E, is still assembly in asm/nonmatching/split_803772C/.
 * cpp_evidence.py proves the unit C++ via __nw__FUi (operator new).
 *
 * sub_803772C is dword_803EB10's constructor and sub_8037756 its deleting
 * destructor slot (dword_803EB10::m1C is defined in split_8037CC0.cpp, so
 * the class's other slots are already partly split across units); neither
 * working label is a slot name or a mangled name, so both stay plain
 * functions, extern "C", the same shape as sub_802BA4C and sub_802BA72
 * (partial/split_802BA20.cpp) for the sibling class dword_803E32C:
 * allocate-if-null (operator new(0x44)) with its own early return on
 * failure, install the vtable, zero the owned field at +0x3c. The
 * destructor resets the vtable, releases +0x3c through sub_8000DE6 if set,
 * then defers to the base class's own m00 (sub_802E4AA, dword_803E2A0::m00
 * in split_802E418.cpp) before optionally deleting.
 */
#include "Singleton_3EB8.hpp"

extern "C" void *sub_802E418(void *a0);
extern "C" void sub_8000DE6(void *a0, void *a1);
extern "C" void sub_802E4AA(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);
extern "C" int __VTABLE__338dword_803EB10;

extern "C" void *sub_803772C(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x44);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_802E418(a0);
    *(int *)a0 = (int)&__VTABLE__338dword_803EB10;
    *(int *)((char *)a0 + 0x3c) = 0;
    return a0;
}

extern "C" void sub_8037756(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__338dword_803EB10;
    if (*(int *)((char *)a0 + 0x3c) != 0) {
        sub_8000DE6(gUnknown_03003EB8, (char *)a0 + 0x3c);
        *(int *)((char *)a0 + 0x3c) = 0;
    }
    sub_802E4AA(a0, 0);
    if (a1) {
        sub_803DA18(a0);
    }
}
