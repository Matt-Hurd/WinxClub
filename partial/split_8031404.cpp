/* One function of split_8031404; Critter__10 is parked (notes/parked.md),
 * still assembly in asm/nonmatching/split_8031404/. Critter__20 is
 * Critter's own slot body, halfword-aligned like split_800F010.c -- see
 * notes/quirks/a-halfword-aligned-function-splices-like-any-other.md.
 *
 * Structs over casts (winx-qhyt.17): `node` is the sub_803DA80 record
 * (include/SpriteRecord.h, winx-qhyt.7), same pattern as
 * partial/split_801D9B0.c's sub_801DA46. `this` has no C++ base (Critter.hpp
 * declares vtable slots only), so its one in-scope field (0x28, Default's
 * field_28) goes through a `Default *self`. The old mangled-name extern "C"
 * declaration for m20__7DefaultFv now clashes with Default.hpp's own
 * Default::m20() once the header is included, so the call is spelled
 * self->Default::m20() -- same non-virtual dispatch, same symbol.
 *
 * Default.hpp's field_28 was `unsigned int`; it is now `struct SpriteRecord
 * *` (winx-qhyt.7's header proves the pointer, see the survey's 0x28 row),
 * with no other reader of Default::field_28 to disturb.
 */
#include "Critter.hpp"
#include "Default.hpp"
#include "SpriteRecord.h"

extern "C" void *GetEWRAMStart(void);
extern "C" void *sub_803DA80(unsigned int size, void *heap, int a2, int a3);
extern "C" void *memset(void *, int, unsigned int);

void Critter::m20()
{
    Default *self = (Default *)this;
    struct SpriteRecord *node;

    self->Default::m20();

    node = (struct SpriteRecord *)sub_803DA80(0x1c, GetEWRAMStart(), 0, 0);
    if (node != 0) {
        memset(node, 0, 0x1c);
    }

    node->field_00[0] = 0;
    node->field_00[1] = 0;
    node->field_00[2] = 0;
    node->field_00[3] = 0;
    node->field_08[0] = 0;
    node->field_08[1] = 0;
    node->field_08[2] = 0;
    node->field_08[3] = 0;
    node->field_10 = 0;
    node->field_12 = 0;
    node->field_14 = 3;
    node->field_18 = self->field_28;
    self->field_28 = node;
}
