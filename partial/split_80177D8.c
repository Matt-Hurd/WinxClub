/* Five functions of split_80177D8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80177D8/. sub_80177E8 was attempted and parked --
 * see notes/parked.md.
 */
#include "SlotManager.h"
#include "generated/functions.h"
#include "generated/globals.h"

extern void sub_803FBBC(void *a0);
extern void sub_803FB24(void *a0, void *a1, unsigned int a2, unsigned int a3);
extern void sub_803FAD4(void *a0);

/* Slot::field_10 as sub_80179BE/sub_8017A0A/sub_8017A56 write it: bits 0-5
 * (low) preserved, bits 6-15 (high) replaced. Writing this through
 * result->field_10 with a mask/shift, or through the field's address,
 * both move a byte from the ROM's own register allocation (the low/high
 * split is done via the compiler's own bitfield lowering here, not the
 * header's field) -- notes/quirks/register-allocation-is-the-stop-signal.md.
 */
struct PoolSlotField {
    unsigned short low : 6;
    unsigned short high : 10;
};

/* a1 is the caller's own object (residue, no header: see
 * docs/decisions/drafts/2026-09-27-object-types.md's "one large object"
 * entry), not a struct Slot -- its field_04 is a halfword index into
 * SlotManager.field_61c, unlike Slot.field_04's byte width. */
void sub_80177D8(struct SlotManager *a0, void *a1)
{
    a0->field_61c[*(unsigned short *)((char *)a1 + 4)] = a1;
}

void sub_8017862(struct SlotManager *a0, unsigned int a1)
{
    struct Slot *node = a0->field_298[a1];

    while (node != 0) {
        struct Slot *next = node->field_14;
        sub_803FBBC(node);
        node = next;
    }
}

void sub_80179BE(struct SlotManager *a0, void *a1, void *a2, unsigned int a3, unsigned int a4)
{
    unsigned int index = a4;
    struct Slot *result;

    if (index == 0xff)
        index = a0->field_14;

    result = sub_803F72C(gUnknown_03003E88, 0x1c, index);
    ((struct PoolSlotField *)((char *)result + 0x10))->high =
        *(unsigned short *)((char *)a2 + 2) + 0x1c;
    sub_803FB24(result, a2, a3, index);
    result->field_08 = (unsigned int)a1;
    sub_803FAD4(result);
}

void sub_8017A0A(struct SlotManager *a0, unsigned int a1, void *a2, unsigned int a3, unsigned int a4)
{
    unsigned int index = a4;
    struct Slot *result;

    if (index == 0xff)
        index = a0->field_14;

    result = sub_803F72C(gUnknown_03003E88, 0x1c, index);
    ((struct PoolSlotField *)((char *)result + 0x10))->high =
        *(unsigned short *)((char *)a2 + 2) + 0x1c;
    sub_803FB24(result, a2, a3, index);
    result->field_0c = a1;
    sub_803FAD4(result);
}

void sub_8017A56(struct SlotManager *a0, unsigned int a1, void *a2, unsigned int a3, unsigned int a4)
{
    unsigned int index = a4;
    struct Slot *result;

    if (index == 0xff)
        index = a0->field_14;

    result = sub_803F72C(gUnknown_03003E88, 0x1c, index);
    ((struct PoolSlotField *)((char *)result + 0x10))->high =
        *(unsigned short *)((char *)a2 + 2) + 0x1c;
    sub_803FB24(result, a2, a3, index);
    result->field_0e = a1;
    sub_803FAD4(result);
}
