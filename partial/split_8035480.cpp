/* Three functions of split_8035480; the rest of the unit is still assembly
 * in asm/nonmatching/split_8035480/. ToggleObjectGroup__04,
 * ToggleObjectGroup__38 and ToggleObject__Create (also candidates in this
 * unit) are parked -- see notes/parked.md.
 *
 * sub_8035530 has no vtable slot and is not called from anywhere else in this
 * unit -- it is written as a plain function, not a ToggleObjectGroup member,
 * same as Monster__10 in partial/split_803490C.cpp.
 *
 * ToggleObjectGroup__08 is the vtable's working label for slot +0x08, so it
 * is written as ToggleObjectGroup::m08(), same as GenericObject__08 in
 * partial/split_8026014.cpp; include/ToggleObjectGroup.hpp gained the real
 * two-argument/int-return signature.
 *
 * Toggle__ctor is not a vtable slot (no hex offset in the working label), so
 * it stays a free function, same as GenericObject__ctor in
 * partial/split_8026014.cpp -- it sets ToggleObjectGroup's own vtable.
 */
#include "ToggleObjectGroup.hpp"

extern "C" void sub_801DB90(void *a0);
extern "C" void m00__7DefaultFv(void *a0, int a1);
extern "C" int m08__7DefaultFv(void *a0, void *a1);
extern "C" void sub_803DA18(void *a0);
extern "C" int __VTABLE__324ToggleObjectGroup;

extern "C" void sub_8035530(void *a0)
{
    sub_801DB90(a0);
    if (*(int *)((char *)a0 + 0x9c) == 0) {
        *(int *)((char *)a0 + 0x9c) = 0x13;
    }
}

int ToggleObjectGroup::m08(void *a1)
{
    unsigned char b = *(unsigned char *)*(void **)a1;

    switch (b) {
    case 0x1c:
        return *(int *)((char *)this + 0x78) == 0 ? 1 : 0;
    case 0x1f:
        sub_801DB90(this);
        if (*(int *)((char *)this + 0x9c) == 0)
            *(int *)((char *)this + 0x9c) = 0x13;
        return *(int *)((char *)this + 0x78) == 0 ? 1 : 0;
    default:
        return m08__7DefaultFv(this, a1);
    }
}

extern "C" void Toggle__ctor(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__324ToggleObjectGroup;
    m00__7DefaultFv(a0, 0);
    if (a1)
        sub_803DA18(a0);
}

