/* Two functions of split_80344E4; the rest of the unit is still assembly
 * in asm/nonmatching/split_80344E4/.
 *
 * sub_8034558 and Boss__04 park -- see notes/parked.md -- but their signatures
 * are trusted: both got everything but one commutative ADD's operand order to
 * match (notes/quirks/add-operand-order-follows-evaluation-not-source.md),
 * which is why Boss.hpp's m04() stub is left widened to `m04(void *a1)` even
 * though m04's body stays assembly here.
 *
 * Boss__08 takes a real parameter and returns a value; HostileCreature__08 is
 * still assembly elsewhere (split_8029070.s) and is called as (this, a1) with
 * no register shuffling at all -- the ROM never moves `this` out of r0 or a1
 * out of r1 before the `bl`.
 *
 * Boss__ctor is not a vtable slot (no hex-offset working label), so it stays
 * a free function, same as HostileCreature__ctor in notes/parked.md's
 * winx-iez.9 entry (`*a0 = &vtable; HostileCreature__ctor(a0, 0); if (a1)
 * sub_803DA18(a0);`). Boss__Create is the same allocate-if-null +
 * HostileCreature__Create + vtable/field-write shape, but parks -- see
 * notes/parked.md -- on the "Boss Script Group" name string: it ADRs into
 * this unit's own pool.s (unlike Monster__Create/Static2__Create's refusal
 * onto another function's interior pool), but merge_partial_c can still only
 * rename a splice's literal load onto a *single* pool word by value, not a
 * multi-word run spelling a string, same tooling gap as WallObject__Create's
 * winx-iez.31 entry.
 */
#include "Boss.hpp"

extern "C" int HostileCreature__08(void *a0, void *a1);

int Boss::m08(void *a1)
{
    void *p = *(void **)a1;

    if (*(unsigned char *)p == 0x28)
        return 1;
    return HostileCreature__08(this, a1);
}

extern "C" int __VTABLE__308Boss;
extern "C" void HostileCreature__ctor(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);

extern "C" void Boss__ctor(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__308Boss;
    HostileCreature__ctor(a0, 0);
    if (a1)
        sub_803DA18(a0);
}
