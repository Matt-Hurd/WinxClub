/* Four functions of split_80253A8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80253A8/.
 *
 * Npc__04 and Npc__08 are declared as plain calls to Default's slot bodies,
 * not as Npc::m04()/m08() calling a base -- Npc does not derive from Default,
 * so the qualified call would not compile. Same shape as Boss__10 in
 * partial/split_803490C.cpp.
 */
#include "Npc.hpp"

extern "C" void m04__7DefaultFv(void *a0);
extern "C" void m08__7DefaultFv(void *a0);
extern "C" void m10__7DefaultFv(void *a0);
extern "C" void sub_803FF24(void *a0, void *a1);

void Npc::m04()
{
    m04__7DefaultFv(this);
}

void Npc::m08()
{
    m08__7DefaultFv(this);
}

void Npc::m10()
{
    m10__7DefaultFv(this);
}

/* Npc__38 and Npc__3C are Npc's own slot bodies (not Default thunks): both
 * read raw offsets of `this` that line up with Default's x_pos/x_speed
 * fields (0x58/0x5c) and a pointer field at 0x2c, but Npc.hpp declares no
 * data members of its own, so they are spelled as byte-offset casts, same
 * as dword_803ED28::m1C() in partial/split_802DDDC.cpp. `this` is
 * Default-shaped (winx-qhyt.15), but this TU cannot include Default.hpp
 * either, for the same reason it cannot spell Npc::m04/m08/m10 as calls
 * through a Default base above: Default's own m04()/m08()/m10() mangle to
 * the exact m0X__7DefaultFv names this file already declares extern "C",
 * and the two declarations of one symbol conflict (tried; tcpp: "'was
 * previously declared without "C" linkage'"). See also
 * partial/split_801FE90.cpp.
 */
void Npc::m38()
{
    int a, mask, b;
    int local[2];

    a = *(int *)((char *)this + 0x58);
    mask = 1 << 20;
    b = *(int *)((char *)this + 0x5c) - mask;
    local[0] = a;
    local[1] = b;
    sub_803FF24(*(void **)((char *)this + 0x2c), local);
}

void Npc::m3C()
{
    int a, mask, b;
    int local[2];

    a = *(int *)((char *)this + 0x58);
    mask = 1 << 20;
    b = *(int *)((char *)this + 0x5c) - mask;
    local[0] = a;
    local[1] = b;
    sub_803FF24(*(void **)((char *)this + 0x2c), local);
    if (*(void **)((char *)this + 0x30) != 0) {
        sub_803FF24(*(void **)((char *)this + 0x30), (void *)((char *)this + 0x58));
    }
}
