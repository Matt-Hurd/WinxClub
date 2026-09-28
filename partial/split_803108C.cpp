/* Four functions of split_803108C; the rest of the unit (including
 * Critter__38, parked -- see notes/parked.md) is still assembly in
 * asm/nonmatching/split_803108C/. Critter__04 and Critter__08 are plain
 * calls to Default's slot bodies, not Critter::m04()/m08() calling a base --
 * Critter.hpp declares no base, same shape as Npc__04/08 in
 * partial/split_80253A8.cpp. Critter__40 is Critter's own slot body; it
 * reads/writes raw offsets of `this` that line up with Default's fields,
 * spelled as byte-offset casts for the same reason.
 *
 * Critter__ctor is not a vtable slot (no hex-offset working label), so it
 * stays a free function, same reasoning as Boss__ctor in
 * partial/split_80344E4.cpp. Critter has no C++ base here -- its ctor calls
 * Default's `m00__7DefaultFv` directly, same as HostileCreature__ctor does,
 * not a base-class ctor. Critter__Create parks -- see notes/parked.md -- on
 * the "Critter Script Group" name string: same tooling gap as
 * Boss__Create/WallObject__Create (merge_partial_c only renames a splice's
 * literal load onto a single pool word by value, not a multi-word run
 * spelling a string), even though the string is this unit's own pool.s.
 *
 * Structs over casts (winx-qhyt.17): Critter::m04/m08 now call
 * Default::m04()/m08() directly (through a cast to Default *, non-virtual,
 * same dispatch as the old mangled-name call) instead of declaring
 * m04__7DefaultFv/m08__7DefaultFv extern "C" -- with Default.hpp included,
 * that declaration clashes with the class's own member of the same mangled
 * name. Critter::m40's byte-offset casts are now Default's
 * sprite_xx/field_70 through a `Default *self` (Critter has no C++ base).
 * Critter__ctor's `*(void **)a0` is the compiler-managed vtable slot, not a
 * Default member, and stays a cast, same as split_80344E4.cpp's Boss__ctor.
 */
#include "Critter.hpp"
#include "Default.hpp"

void Critter::m04()
{
    ((Default *)this)->Default::m04();
}

void Critter::m08()
{
    ((Default *)this)->Default::m08();
}

void Critter::m40(int a1)
{
    Default *self = (Default *)this;

    if (a1 == 0x26) {
        self->sprite_0e = 0xf1;
        self->sprite_0a = 0xf1;
        self->sprite_0c = 0xf1;
        self->sprite_08 = 0xf1;
        self->sprite_1e = 0xf0;
        self->sprite_1a = 0xf0;
        self->sprite_1c = 0xf0;
        self->sprite_18 = 0xf0;
        self->field_70 = 1 << 15;
    }
}

extern "C" int __VTABLE__329Critter;
extern "C" void m00__7DefaultFv(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);

extern "C" void Critter__ctor(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__329Critter;
    m00__7DefaultFv(a0, 0);
    if (a1)
        sub_803DA18(a0);
}
