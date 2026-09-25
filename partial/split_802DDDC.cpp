/* Two functions of split_802DDDC; the rest of the unit is still assembly in
 * asm/nonmatching/split_802DDDC/. Both are slots of the class labelled
 * dword_803ED28: sub_802DFE4 at +0x1C, sub_802DFD8 at +0x20.
 *
 * sub_802E8B0 is the +0x20 body most of this vtable family shares; it stays
 * assembly and is declared as a plain function here, since the stub headers
 * carry no inheritance yet.
 */
#include "dword_803ED28.hpp"

extern "C" void sub_802E8B0(void *a0);

void dword_803ED28::m20()
{
    sub_802E8B0(this);
}

unsigned int dword_803ED28::m1C()
{
    return (*(unsigned int *)((char *)this + 0x48) >> 10) & 0x1f;
}
