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
 *
 * ToggleObjectGroup does not derive from Default, and including Default.hpp
 * here would collide with the hand-mangled `m08__7DefaultFv` this file also
 * declares (Default's own m08 slot mangles to the identical name), so
 * sub_8035530 and ToggleObjectGroup::m08 reach Default::field_78 and
 * flags.CurrentAction (0x78 and 0x9c,
 * docs/decisions/drafts/2026-09-27-object-types.md) through include/GameObj.h
 * instead of the real class, the same convention split_801D9B0.c and
 * split_801F640.c use for .c units that cannot include it at all.
 * CurrentAction is `int`, not `enum EnemyAction`: the enum's values all fit
 * a byte, so tcpp sizes it as 1 byte, but this field is stored as a full
 * word (see include/winxclub.h).
 *
 * ToggleObjectGroup::m08 casts `this` inline at each use rather than naming
 * a `GameObj *self` local: naming one moves the `this`-to-r4 register copy
 * ahead of the `unsigned char b = ...` load and does not match.
 */
#include "winxclub.h"
#include "ToggleObjectGroup.hpp"
#include "GameObj.h"

extern "C" void sub_801DB90(void *a0);
extern "C" void m00__7DefaultFv(void *a0, int a1);
extern "C" int m08__7DefaultFv(void *a0, void *a1);
extern "C" void sub_803DA18(void *a0);
extern "C" int __VTABLE__324ToggleObjectGroup;

extern "C" void sub_8035530(void *a0)
{
    struct GameObj *self = (struct GameObj *)a0;

    sub_801DB90(a0);
    if (self->flags.CurrentAction == 0) {
        self->flags.CurrentAction = 0x13;
    }
}

int ToggleObjectGroup::m08(void *a1)
{
    unsigned char b = *(unsigned char *)*(void **)a1;

    switch (b) {
    case 0x1c:
        return ((struct GameObj *)this)->field_78 == 0 ? 1 : 0;
    case 0x1f:
        sub_801DB90(this);
        if (((struct GameObj *)this)->flags.CurrentAction == 0)
            ((struct GameObj *)this)->flags.CurrentAction = 0x13;
        return ((struct GameObj *)this)->field_78 == 0 ? 1 : 0;
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

