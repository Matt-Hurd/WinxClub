/* One of split_8030668's four assigned functions; the rest of the unit --
 * Monster__ctor, Monster__Create (splice refusals, see notes/parked.md) and
 * Monster__40 (1004 lines, own pool: interior, out of this batch's scope) --
 * is still assembly in asm/nonmatching/split_8030668/.
 *
 * NonBossHostileScriptGroup__04 is a vtable slot shared verbatim between
 * Monster and Scanner (config/vtables.yml lists the same working label at
 * slot +0x04 in both), so it is a plain free function, not a Monster member
 * -- same reasoning as Monster__10 in partial/split_803490C.cpp.
 */
#include "generated/functions.h"

extern "C" void sub_8029290(void *a0, void *a1);
extern "C" void sub_80294EE(void *a0, void *a1);

extern "C" void NonBossHostileScriptGroup__04(void *a0, void *a1)
{
    if (*(unsigned char *)*(void **)a1 == 0x21) {
        sub_80294EE(a0, a1);
    } else {
        sub_8029290(a0, a1);
    }
}
