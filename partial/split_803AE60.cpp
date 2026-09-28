/* Three functions of split_803AE60; the rest of the unit (including
 * sub_803AEB4) is still assembly in asm/nonmatching/split_803AE60/.
 * sub_803AE60 is slot +0x1C of the class labelled dword_803ED4C.
 *
 * sub_803AE92 and sub_803AE68 are free functions, not vtable slots (no
 * hex-offset working label): sub_803AE92 is the base-construction shape
 * already proven for sibling classes (HostileCreature__ctor and friends,
 * notes/parked.md) -- set the vtable, call the base's own m00
 * (sub_802E4AA, per partial/split_802E418.cpp's slot comment), then
 * conditionally delete. sub_803AE68 is the allocate-if-null constructor
 * around it: if not given storage, `operator new`s it, calls the base
 * ctor (sub_802E418, parked in asm -- see partial/split_802E418.cpp), sets
 * the vtable, and zeroes one field of its own.
 */
#include "dword_803ED4C.hpp"

unsigned char dword_803ED4C::m1C()
{
    return field_3c;
}

extern "C" int __VTABLE__377dword_803EDC4;
extern "C" void sub_802E4AA(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);

extern "C" void sub_803AE92(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__377dword_803EDC4;
    sub_802E4AA(a0, 0);
    if (a1)
        sub_803DA18(a0);
}

extern "C" void sub_802E418(void *a0);

extern "C" void *sub_803AE68(void *a0)
{
    if (!a0) {
        a0 = operator new(0x44);
        if (!a0)
            return a0;
    }
    sub_802E418(a0);
    *(void **)a0 = &__VTABLE__377dword_803EDC4;
    *(int *)((char *)a0 + 0x3c) = 0;
    return a0;
}
