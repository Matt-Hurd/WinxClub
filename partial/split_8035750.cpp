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
 */
#include "ToggleObjectGroup.hpp"

extern "C" void Dying__7DefaultFv(void *a0, void *a1);

void ToggleObjectGroup::m48(void *a1)
{
    void *d = *(void **)a1;
    unsigned short type = *(unsigned short *)((char *)d + 8);

    if (type == 0x1f) {
        int v = (signed char)*(int *)((char *)d + 4);
        char *p70 = (char *)this + 0x70;
        char *p80;

        p70[0xd] = (signed char)v;
        if (v < 0) {
            v = -v;
        }

        p80 = (char *)this + 0x80;
        *(unsigned int *)(p80 + 0x28) = (*(unsigned int *)(p80 + 0x28) & ~0xff00)
            | (((unsigned int)v & 0xff) << 8);
        p70[0xc] = 0;
    } else {
        Dying__7DefaultFv(this, a1);
    }
}
