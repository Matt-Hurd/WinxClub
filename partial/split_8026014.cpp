/* Five functions of split_8026014; the rest of the unit is still assembly
 * in asm/nonmatching/split_8026014/, including GenericObject__04 and
 * GenericObject__Create (parked -- see notes/parked.md). GenericObject__08
 * is the vtable's working label for slot +0x08, so it is written as
 * __vftable_GenericObject::m08(); the slot returns a value the mangled name
 * does not encode, so include/__vftable_GenericObject.hpp gained that --
 * the vtable itself is unchanged.
 *
 * GenericObject__ctor is not a vtable slot (no hex offset in the working
 * label), so it stays a free function, same as HostileCreature__ctor in
 * notes/parked.md's winx-iez.9 entry: __VTABLE__333__vftable_GenericObject
 * lives in this unit's own pool.s, so the splice succeeds where Static2's
 * vtable store did not.
 *
 * sub_80260AE is GenericObject__04's case 0x1f body factored into its own
 * function -- same sub_801DB90 call and the same this+0x80+0x1c field
 * check/set.
 *
 * a0/this is Default-shaped throughout (winx-qhyt.15), but this TU cannot
 * include Default.hpp: it declares m08__7DefaultFv and m00__7DefaultFv
 * extern "C", the exact mangled names of Default::m08()/m00(), and the two
 * declarations of one symbol conflict (see partial/split_801FE90.cpp for
 * the same wall hit first). Every a0/this offset here stays a byte cast for
 * that reason, including this+0x80+0x1c (CurrentAction) -- which would not
 * safely go through the struct anyway, see
 * notes/quirks/ads-sizes-an-unqualified-enum-to-its-values-not-to-int.md.
 */
#include "__vftable_GenericObject.hpp"

extern "C" void SetNextGlobalFunction(int a0);
extern "C" void sub_80007A0(void *a0, unsigned int a1, int a2);
extern "C" void sub_801DB90(void *a0);
extern "C" int m08__7DefaultFv(void *a0);
extern "C" void m00__7DefaultFv(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);
extern "C" int __VTABLE__333__vftable_GenericObject;

extern "C" void MaybeHandleTransitionToArea(void)
{
    SetNextGlobalFunction(0x10);
}

extern "C" void sub_80261C8(void *a0, void **a1)
{
    unsigned short v = *(unsigned short *)((char *)*a1 + 4);
    unsigned int field = *(unsigned int *)((char *)a0 + 0x7c);

    field = (field & ~0x0F000000) | ((v & 0xf) << 24);
    *(unsigned int *)((char *)a0 + 0x7c) = field;

    unsigned int idx = (field >> 24) & 0xf;
    unsigned short w = *(unsigned short *)((char *)a0 + idx * 2 + 8);
    sub_80007A0(*(void **)((char *)a0 + 0x2c), w, 0);
}

int __vftable_GenericObject::m08(void *a1)
{
    unsigned char b = *(unsigned char *)*(void **)a1;

    switch (b) {
    case 0x1c:
        return *(int *)((char *)this + 0x78) == 0 ? 1 : 0;
    case 0x1f:
        sub_801DB90(this);
        if (*(int *)((char *)this + 0x80 + 0x1c) == 0)
            *(int *)((char *)this + 0x80 + 0x1c) = 0x13;
        return *(int *)((char *)this + 0x78) == 0 ? 1 : 0;
    case 0x26:
        return 1;
    default:
        return m08__7DefaultFv(this);
    }
}

extern "C" void sub_80260AE(void *a0)
{
    sub_801DB90(a0);
    if (*(int *)((char *)a0 + 0x80 + 0x1c) == 0)
        *(int *)((char *)a0 + 0x80 + 0x1c) = 0x13;
}

extern "C" void GenericObject__ctor(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__333__vftable_GenericObject;
    m00__7DefaultFv(a0, 0);
    if (a1)
        sub_803DA18(a0);
}

