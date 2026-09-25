/* Three functions of split_803108C; the rest of the unit (including
 * Critter__38, parked -- see notes/parked.md) is still assembly in
 * asm/nonmatching/split_803108C/. Critter__04 and Critter__08 are plain
 * calls to Default's slot bodies, not Critter::m04()/m08() calling a base --
 * Critter.hpp declares no base, same shape as Npc__04/08 in
 * partial/split_80253A8.cpp. Critter__40 is Critter's own slot body; it
 * reads/writes raw offsets of `this` that line up with Default's fields,
 * spelled as byte-offset casts for the same reason.
 */
#include "Critter.hpp"

extern "C" void m04__7DefaultFv(void *a0);
extern "C" void m08__7DefaultFv(void *a0);

void Critter::m04()
{
    m04__7DefaultFv(this);
}

void Critter::m08()
{
    m08__7DefaultFv(this);
}

void Critter::m40(int a1)
{
    if (a1 == 0x26) {
        *(short *)((char *)this + 0x0e) = 0xf1;
        *(short *)((char *)this + 0x0a) = 0xf1;
        *(short *)((char *)this + 0x0c) = 0xf1;
        *(short *)((char *)this + 0x08) = 0xf1;
        *(short *)((char *)this + 0x1e) = 0xf0;
        *(short *)((char *)this + 0x1a) = 0xf0;
        *(short *)((char *)this + 0x1c) = 0xf0;
        *(short *)((char *)this + 0x18) = 0xf0;
        *(int *)((char *)this + 0x70) = 1 << 15;
    }
}
