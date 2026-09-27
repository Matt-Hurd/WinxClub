/* One function of split_803490C; the rest of the unit is still assembly in
 * asm/nonmatching/split_803490C/. Boss__10 is the vtable's working label for
 * this slot; the label pass renames tcpp's m10__4BossFv to it.
 *
 * Monster__10 is declared as a plain function, not called as Monster::m10():
 * Boss and Monster both construct through HostileCreature__ctor, so neither is
 * a base of the other and the qualified call would not compile. A slot-0x10
 * body that both classes share is more likely a HostileCreature method or a
 * free function than a Monster member; the label is the owner's to revisit.
 */
#include "Boss.hpp"

extern "C" void Monster__10(void *a0);

void Boss::m10()
{
    Monster__10(this);
}

