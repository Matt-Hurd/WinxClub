/* Two functions of split_801343C; the rest of the unit is still assembly in
 * asm/nonmatching/split_801343C/. Proven C++ (cpp_evidence.py: __da__FPv,
 * __nw__FUi).
 *
 * dword_803ECB4 derives from Singleton_3EBC: sub_801343C is the allocating
 * constructor idiom already used for Singleton_3E84/dword_803E680 in
 * partial/split_800525C.c -- base vtable + gUnknown_03003EBC assignment
 * first, then the derived vtable and dword_803ECB4's own fields, written as
 * plain stores rather than a real C++ constructor call to match that
 * precedent. sub_8013480 is the mirror teardown: derived vtable, delete[]
 * the +4 buffer, then Singleton_3EBC's own destructor body inlined (base
 * vtable, clear the singleton pointer), then the optional operator delete.
 */
#include "generated/functions.h"

extern int __VTABLE__14Singleton_3EBC;
extern int __VTABLE__353dword_803ECB4;
extern void *gUnknown_03003EBC;

extern "C" void *sub_801343C(void *a0, unsigned char a1)
{
    if (a0 == 0) {
        a0 = operator new(0xc);
        if (a0 == 0)
            return a0;
    }
    *(int *)a0 = (int)&__VTABLE__14Singleton_3EBC;
    gUnknown_03003EBC = a0;
    *(int *)a0 = (int)&__VTABLE__353dword_803ECB4;
    *((unsigned char *)a0 + 9) = 0;
    *((unsigned char *)a0 + 8) = a1;
    *(void **)((char *)a0 + 4) = sub_803DA9C(a1 << 4, GetEWRAMStart(), 0, 0);
    return a0;
}

extern "C" void sub_8013480(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__353dword_803ECB4;
    operator delete[](*(void **)((char *)a0 + 4));
    *(int *)a0 = (int)&__VTABLE__14Singleton_3EBC;
    gUnknown_03003EBC = 0;
    if (a1) {
        sub_803DA18(a0);
    }
}
