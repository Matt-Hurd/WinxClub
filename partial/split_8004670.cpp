/* Fourteen of split_8004670's sixteen assigned functions; the rest of
 * the unit, including the parked sub_80046B8 and sub_8004716 (see
 * notes/parked.md), is still assembly in asm/nonmatching/split_8004670/.
 * cpp_evidence.py proves the unit C++ via __nw__FUi (operator new); none of
 * these is a vtable slot, so they are written as plain free functions,
 * extern "C" to keep their working names.
 *
 * Two local records, both scoped to this unit only -- see
 * docs/decisions/drafts/2026-09-27-object-types-residue.md, family C. They
 * do not share a header with split_8004780.cpp's own note record (its own
 * offset 0xc disagrees with this unit's) and are not the same shape as
 * each other either: `NoteEvent670` is the 0x10-byte record most of this
 * file's functions read and write (`operator new(0x10)` in sub_8004678);
 * `PanPair670` is a separate, smaller 6-byte record
 * (`operator new(6)` in sub_80046F8) that sub_80046DC/sub_80046E2 fill in
 * from a NoteEvent670's own field_08/field_0a/field_0c. Working names only;
 * propose better ones once a caller ties either to something more specific.
 */
#include "generated/functions.h"

typedef struct {
    unsigned short field_00;
    char pad_02[2];
    int field_04;
    unsigned short field_08;
    unsigned short field_0a;
    unsigned short field_0c;
    char pad_0e[2];
} NoteEvent670;

typedef struct {
    unsigned short field_00;
    unsigned short field_02;
    unsigned short field_04;
} PanPair670;

extern "C" void *sub_8004742(NoteEvent670 *a0) {
    return (void *)&a0->field_04;
}

extern "C" int sub_8004746(void *a0) {
    return *(int *)a0 & 7;
}

extern "C" void sub_8004670(NoteEvent670 *a0, int a1) {
    a0->field_04 = a1;
}

extern "C" int sub_8004674(NoteEvent670 *a0) {
    return a0->field_04;
}

extern "C" void *sub_8004678(NoteEvent670 *a0, int a1) {
    unsigned short flags;

    if (a0 == 0) {
        a0 = (NoteEvent670 *)operator new(0x10);
    }
    if (a0 != 0) {
        flags = (a0->field_00 & ~3) | (a1 & 3);
        a0->field_0a = 0;
        a0->field_0c = 0;
        a0->field_04 = 0;
        a0->field_08 = 0;
        a0->field_00 = flags & ~4;
    }
    return a0;
}

extern "C" void sub_80046AC(NoteEvent670 *a0, int a1) {
    a0->field_04 = a1;
    a0->field_00 |= 4;
}

extern "C" int sub_80046D8(NoteEvent670 *a0) {
    return a0->field_04;
}

extern "C" void sub_80046DC(void *a0, NoteEvent670 *a1) {
    *(unsigned short *)a0 = a1->field_08;
}

extern "C" void *sub_80046F8(PanPair670 *a0) {
    if (a0 == 0) {
        a0 = (PanPair670 *)operator new(6);
    }
    if (a0 != 0) {
        a0->field_00 = 0;
        a0->field_02 = 0;
        a0->field_04 = 0;
    }
    return a0;
}

extern "C" void sub_800475C(void *a0, unsigned int a1) {
    *(unsigned int *)a0 = (*(unsigned int *)a0 & ~0x04000000) | (a1 << 26);
}

extern "C" void sub_800476C(void *a0, unsigned int a1) {
    unsigned short masked = *(unsigned short *)a0 & ~0xc0;
    *(unsigned short *)a0 = masked | ((a1 & 3) << 6);
}

extern "C" void sub_80046EE(PanPair670 *a0) {
    a0->field_00 = 0;
    a0->field_02 = 0;
    a0->field_04 = 0;
}

extern "C" void sub_80046E2(PanPair670 *a0, NoteEvent670 *a1) {
    unsigned short *src = &a1->field_0a;
    a0->field_00 = src[0];
    a0->field_02 = src[1];
}

extern "C" int sub_800474E(NoteEvent670 *a0) {
    return sub_803D66C(&a0->field_04);
}
