/* Two of the three assigned functions of split_8001A60; the rest of the unit,
 * including the parked sub_8001BB4 (see notes/parked.md), is still assembly
 * in asm/nonmatching/split_8001A60/. cpp_evidence.py proves the unit C++ via
 * __nw__FUi (operator new) and __vecmap1c__ (used elsewhere in the unit);
 * neither of these is a vtable slot, so they are plain free functions.
 *
 * sub_8001B80 indexes an object with a count at +8 and an array of pointers
 * at +0x20, each element's first word carrying a small type tag in its low
 * 4 bits. sub_8001A60 zero-inits an unrelated, smaller object -- the two
 * share a unit only by address proximity. Neither object is surveyed
 * elsewhere, so both structs below are local to this unit, not shared
 * headers. The tagged element pointed to by TaggedTable8001B80's array is a
 * third, unsurveyed object -- no header for it either, so its one field
 * access keeps its cast.
 */

typedef struct {
    int field_00;
    int field_04;
    int field_08;
    int field_0c;
    unsigned char field_10;
    char gap_11[3];
    int field_14;
    unsigned char field_18;
    char gap_19[3];
    int field_1c;
    unsigned char field_20;
    char gap_21[3];
    int field_24;
    int field_28;
} ZeroRecord8001A60;

typedef struct {
    char gap_00[8];
    unsigned int count; /* 0x08 */
    char gap_0c[0x20 - 0xc];
    void **items; /* 0x20 -- each element's first word carries a type tag in its low 4 bits */
} TaggedTable8001B80;

extern "C" void *sub_8001A60(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(sizeof(ZeroRecord8001A60));
    }
    if (a0 != 0) {
        ZeroRecord8001A60 *rec = (ZeroRecord8001A60 *)a0;
        rec->field_00 = 0;
        rec->field_04 = 0;
        rec->field_08 = 0;
        rec->field_0c = 0;
        rec->field_10 = 0;
        rec->field_14 = 0;
        rec->field_18 = 0;
        rec->field_1c = 0;
        rec->field_20 = 0;
        rec->field_24 = 0;
        rec->field_28 = 0;
    }
    return a0;
}

extern "C" void *sub_8001B80(void *a0, int a1, int a2)
{
    unsigned int count = ((TaggedTable8001B80 *)a0)->count;
    unsigned int matched = 0;
    unsigned int i = 0;

    if (i < count) {
        a0 = ((TaggedTable8001B80 *)a0)->items;
        do {
            if ((*(int *)((void **)a0)[i] & 0xf) == a2) {
                if (matched == (unsigned int)a1)
                    return ((void **)a0)[i];
                matched++;
            }
            i++;
        } while (count > i);
    }
    return 0;
}
