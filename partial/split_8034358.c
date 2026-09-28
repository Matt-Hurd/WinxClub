/* One of split_8034358's three assigned functions; sub_803442C and
 * sub_8034358 are not part of this conversion and stay assembly in
 * asm/nonmatching/split_8034358/ (both are parked, see notes/parked.md).
 * cpp_evidence.py cannot prove this unit either way, so it is written as
 * plain C (tcc and tcpp agree unless a type is needed).
 *
 * sub_8034408 is the release-one-owned-resource shape already proven for
 * sibling classes (sub_802DDDC, a different unit, same idiom): call the
 * base's own teardown (sub_802E47A), then free the owned pointer at +0x3c
 * through sub_8000DE6(gUnknown_03003EB8, ...) if it is set, and null it.
 *
 * `a0` is a Default* (include/Default.hpp); Default.hpp is a C++ class
 * header this .c unit cannot include (tcc, not tcpp), so it reaches the
 * field through include/GameObj.h instead: +0x3c is field_38[1], the
 * vtable-pointer array's second slot
 * (docs/decisions/drafts/2026-09-27-object-types.md).
 */

#include "GameObj.h"

extern void sub_802E47A(void *a0);
extern void sub_8000DE6(void *a0, void *a1);
extern void *gUnknown_03003EB8;

void sub_8034408(void *a0)
{
    struct GameObj *self = (struct GameObj *)a0;

    sub_802E47A(a0);
    if (self->field_38[1] != 0) {
        sub_8000DE6(gUnknown_03003EB8, &self->field_38[1]);
        self->field_38[1] = 0;
    }
}
