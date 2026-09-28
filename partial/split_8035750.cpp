/* One of split_8035750's two assigned functions; the rest of the unit
 * stays assembly in asm/nonmatching/split_8035750/. ToggleObjectGroup__48
 * is ToggleObjectGroup's own m48 vtable slot (config/vtables.yml), written
 * as a member the same way as partial/split_8035480.cpp and
 * partial/split_8035E7C.cpp.
 *
 * ToggleObjectGroup__48's single case (0x1f) is the same shape as
 * WallObject::m48's 0x1f case in partial/split_8035E7C.cpp, except the
 * second field it writes is a bitfield sharing a word at this+0xa8 (bits
 * 8-15), not a whole byte -- see notes/quirks/a-bitfield-clear-writes-mvn-
 * and-a-raw-mask-and-writes-bic.md and the storage-width quirk next to it.
 *
 * ToggleObjectGroup__10 is parked -- see notes/parked.md: it loads the
 * addresses of gUnknown_03003EA0 and gUnknown_0300345C, and this unit's
 * pool.s (the unit's shared end pool the splicer matches against) does not
 * hold either -- only ToggleObjectGroup__40's own trailing pool block does,
 * a neighbour's words that the docs say are not a by-value candidate for
 * another function's compiled loads.
 *
 * ToggleObjectGroup does not derive from Default, and including Default.hpp
 * here would collide with the hand-mangled `Dying__7DefaultFv` this file
 * also declares (Default's own Dying slot mangles to the identical name),
 * so `this+0x70`'s two bytes are reached through include/GameObj.h instead
 * of the real class -- the same convention split_801D9B0.c and
 * split_801F640.c use for .c units that cannot include it at all.
 * `this+0xa8`'s bitfield is past Default's own 0xa0 and only this derived
 * class has it (docs/decisions/drafts/2026-09-27-object-types.md), so it is
 * not a Default field either way and stays a raw offset cast.
 */
#include "winxclub.h"
#include "ToggleObjectGroup.hpp"
#include "GameObj.h"

extern "C" void Dying__7DefaultFv(void *a0, void *a1);

void ToggleObjectGroup::m48(void *a1)
{
    struct GameObj *self = (struct GameObj *)this;
    void *d = *(void **)a1;
    unsigned short type = *(unsigned short *)((char *)d + 8);

    if (type == 0x1f) {
        int v = (signed char)*(int *)((char *)d + 4);

        self->directionAndMore.struc.unk2 = (signed char)v;
        if (v < 0) {
            v = -v;
        }

        *(unsigned int *)((char *)self + 0xa8) =
            (*(unsigned int *)((char *)self + 0xa8) & ~0xff00)
            | (((unsigned int)v & 0xff) << 8);
        self->directionAndMore.struc.unk1 = 0;
    } else {
        Dying__7DefaultFv(this, a1);
    }
}
