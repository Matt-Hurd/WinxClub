/* One of split_803FAB8's two assigned functions; the parked sub_803FAD4 (see
 * notes/parked.md) is still assembly in asm/nonmatching/split_803FAB8/.
 *
 * Written as one `&&` expression, not two early returns: the ROM branches from
 * both tests to a shared `return 0` and falls through to `return 1`, which is
 * what a short-circuit && returning a bool produces. Two `if (...) return 0;`
 * statements put the first `return 0` inline instead.
 */
#include "generated/globals.h"
#include "Default.hpp"

int sub_803FAB8(struct Default *a0)
{
    return (*(unsigned int *)&a0->directionAndMore >> 24 & 0xf) == 2
        && (a0->flags.unk00 & 4) != 0;
}
