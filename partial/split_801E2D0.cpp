/* Four functions of split_801E2D0; the rest of the unit is still assembly in
 * asm/nonmatching/split_801E2D0/. All four are Default's vtable slots; the
 * label pass maps the mangled names back to the working labels.
 */
#include "Default.hpp"

int Default::Attack()
{
    return 0;
}

void Default::DamagePlayer()
{
}

void Default::m40()
{
}

void Default::m38()
{
}

void Default::m44()
{
}

int Default::PlayerIframe()
{
    return 0;
}

void Default::TakeDamage()
{
    field_78 = 0;
}

/* Intersect's real signature returns int, not void -- see the comment on
 * slot 13 in Default.hpp.
 */
int Default::Intersect()
{
    *(unsigned int *)((char *)this + 0x7c) =
        (*(unsigned int *)((char *)this + 0x7c) << 1) >> 1;
    field_34 = 0;
    return 0;
}

extern "C" void sub_803FF24(void *a0, void *a1);

/* Same shape as the proven-matching Npc::m3C in partial/split_80253A8.cpp. */
void Default::m3C()
{
    sub_803FF24(*(void **)((char *)this + 0x2c), (void *)((char *)this + 0x58));
    if (*(void **)((char *)this + 0x30) != 0) {
        sub_803FF24(*(void **)((char *)this + 0x30), (void *)((char *)this + 0x58));
    }
}
