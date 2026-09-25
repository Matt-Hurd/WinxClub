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
