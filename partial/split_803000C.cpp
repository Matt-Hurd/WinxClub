/* One of split_803000C's assigned functions (Bird__20); the rest of the
 * unit stays assembly in asm/nonmatching/split_803000C/, including
 * Bird__10 which is not in this batch. Bird__20 is Bird's own m20 vtable
 * slot, written as a member the same way as WallObject::m20 and
 * WallObject::m38 in partial/split_8035E7C.cpp: a freshly EWRAM-allocated
 * 0x1c-byte node zeroed with the inline MOV+STMIA shape, not a memclr
 * call -- see
 * notes/quirks/a-small-word-typed-memset-inlines-instead-of-calling-rt-memclr_w.md.
 */
#include "Bird.hpp"
#include "SpriteRecord.h"

extern "C" void m20__7DefaultFv(void *a0);
extern "C" void *GetEWRAMStart(void);
extern "C" void *sub_803DA80(unsigned int size, void *heap, int a2, int a3);
extern "C" void *memset(void *, int, unsigned int);

/* m20__7DefaultFv above is Default's own vtable-slot working label, so this
 * TU cannot include Default.hpp's C++ class -- tcpp reads a same-named
 * member declaration as redeclaring that extern with a mismatched linkage.
 * This mirrors just the field Bird::m20 touches, same offset as
 * include/Default.hpp's field_28 -- read here as a pointer, not the header's
 * unsigned int (docs/decisions/drafts/2026-09-27-object-types.md notes the
 * conflict). */
struct Default {
    char gap_00[0x28];
    void *field_28;
};

void Bird::m20()
{
    struct Default *self = (struct Default *)this;
    struct SpriteRecord *node;

    m20__7DefaultFv(this);
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
