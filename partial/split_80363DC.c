/* One function of split_80363DC; the rest of the unit is still assembly in
 * asm/nonmatching/split_80363DC/. WallObjectScriptGroup__10 is the vtable's
 * working label for this slot.
 *
 * The bit test has to be spelled `(*p << 21) >> 31` assigned to a plain
 * `unsigned int` local rather than tested inline: inline, tcc collapses it to
 * a single `LSL`/`BMI` (branch on the shifted sign bit), which the ROM does
 * not do -- it keeps the full `LSL`/`LSR`/`BNE` shape. Reading
 * gUnknown_03003EA0 into a local before the `if`, rather than inline at the
 * point sub_8000D5A is called, matches where the ROM loads it (unconditionally,
 * before it is known to be needed) and keeps `computed`'s -1 sentinel out of
 * the same register as the bit test, matching the ROM's register choice too.
 */

#include "Default.hpp"
#include "Sprite.h"
#include "Singleton_3EA0.hpp"

extern struct Singleton_3EA0_Data *sub_8000D5A(void *a0);
extern void m10__7DefaultFv(void *a0);

void WallObjectScriptGroup__10(void *a0v)
{
    struct Default *a0 = a0v;
    struct Sprite *target = a0->field_2c;
    unsigned int bit = (target->field_00 << 21) >> 31;

    if (bit == 0) {
        void *g = gUnknown_03003EA0;
        int computed = -1;

        if (target->field_44 != 0) {
            computed = target->field_44 - sub_8000D5A(g)->field_24;
        }

        {
            unsigned short cur = a0->sprite_1a;
            if ((unsigned short)computed != cur)
                a0->sprite_18 = cur;
        }
    }

    m10__7DefaultFv(a0);
}
