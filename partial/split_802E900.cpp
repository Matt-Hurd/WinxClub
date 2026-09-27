/* One function of split_802E900; the rest of the unit (including
 * ObjectScriptGroup__08 and ObjectScriptGroup__20, parked -- see
 * notes/parked.md) is still assembly in asm/nonmatching/split_802E900/.
 * ObjectScriptGroup__NN is the working label for slot +0xNN of the class
 * labelled Object (same class as ObjectScriptGroup__10 in
 * partial/split_802EC90.cpp, whose comment first noted the mismatch
 * between the working label and Object__Create/Object__ctor in this same
 * unit).
 *
 * m04 dispatches on a byte read through a1 (the caller's script-node
 * pointer), falling back to Default's slot body when neither of the two
 * known values matches -- same shape as Npc__04/08 in
 * partial/split_80253A8.cpp, just with the extra dispatch in front.
 * Written as a `switch`, not an if/else-if chain: the ROM puts the first
 * case's body out of line (`beq` away) and the default's body out of line
 * too (reached by the final `bne`), with only the middle case falling
 * straight through -- the exact layout `switch` gets and an if/else-if
 * chain does not, per quirks/a-switch-puts-its-case-bodies-out-of-line.md.
 *
 * Object__ctor, Object__Create, sub_802EA80 and ObjectScriptGroup__38 --
 * this unit's four other winx-iez.41 functions -- are parked, see
 * notes/parked.md: each loads a value that lives only inside
 * ObjectScriptGroup__44's own trailing pool block, and pool.s (the general
 * unit pool the splicer's by-value search reads) is empty for this unit --
 * `scripts/splice_unit.py`'s `unit_pool()` builds its lookup from pool.s
 * alone, never from another function's own-pool block. ObjectScriptGroup__44
 * itself is parked too (see notes/parked.md): it is the pool's owner, so it
 * splices by the different own-pool-by-position path, but its control flow
 * (a double vtable dispatch through this+0x2c's target, a packed-field
 * extract, a two-word local struct built for sub_802FA92) is past what
 * this pass could translate with confidence in three cycles.
 */
#include "Object.hpp"

extern "C" void m04__7DefaultFv(void *a0);
extern "C" void sub_801DA2A(void *a0);
extern "C" void sub_802EA80(void *a0, void *a1);

void Object::m04(void *a1)
{
    unsigned char b = *(unsigned char *)*(void **)a1;

    switch (b) {
    case 0x28:
        sub_802EA80(this, a1);
        break;
    case 0x2c:
        sub_801DA2A(this);
        break;
    default:
        m04__7DefaultFv(this);
        break;
    }
}
