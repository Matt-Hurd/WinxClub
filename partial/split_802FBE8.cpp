/* Two of split_802FBE8's four candidates; the rest of the unit stays assembly
 * in asm/nonmatching/split_802FBE8/ (Bird__Create, Bird__ctor, Bird__40,
 * Bird__44 -- and, parked, sub_802FBE8 and Bird__38: see notes/parked.md).
 * Bird__04 and Bird__08 are the vtable's working labels; the label pass
 * renames tcpp's mangled slot symbols back to them.
 */
#include "Bird.hpp"

extern "C" void m04__7DefaultFv(void *a0);
extern "C" void m08__7DefaultFv(void *a0);

void Bird::m04() { m04__7DefaultFv(this); }

void Bird::m08() { m08__7DefaultFv(this); }
