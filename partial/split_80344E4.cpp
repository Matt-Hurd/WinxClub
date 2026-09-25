/* One function of split_80344E4; the rest of the unit is still assembly in
 * asm/nonmatching/split_80344E4/.
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
