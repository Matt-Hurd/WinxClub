/* Two functions of split_80327F4; the rest of the unit is still assembly in
 * asm/nonmatching/split_80327F4/. sub_80327F4 was tried and parked -- see
 * notes/parked.md -- so only sub_8032A58 and sub_8032A7E are spliced here;
 * sub_802E8B0 is declared locally since config/symbols.yml is out of scope
 * for this batch. sub_80328B0 (also in this batch) is parked too -- see
 * notes/parked.md -- for a register-allocation mismatch on one ADD.
 *
 * `a0` is a Default* (include/Default.hpp), but Default.hpp is a C++ class
 * header this .c translation unit's tcc cannot parse, so the struct below
 * mirrors the two fields this unit reaches instead of including it (same
 * reasoning as partial/split_8012468.c). At 0x4c, Default.hpp declares
 * `const char *name`, but both functions here read/write it as a plain
 * 32-bit flags word (a mask, then a right-shifted field) -- there is no
 * string here, so the mirror types the field to match what the code does,
 * as field_34 does at its own offset.
 */
struct GameObj {
    char gap_00[0x34];
    unsigned int field_34; /* Default::field_34 */
    char gap_38[0x4c - 0x38];
    unsigned int field_4c; /* Default::name, read here as flags bits */
};

extern void sub_802E8B0(void *a0);

void sub_8032A58(struct GameObj *a0)
{
    unsigned int v;

    sub_802E8B0(a0);
    v = a0->field_34;
    v = (v & ~0x700) + 0x300;
    a0->field_34 = v;
    a0->field_4c &= 0x7fffffff;
}

unsigned int sub_8032A7E(struct GameObj *a0)
{
    unsigned int v = a0->field_4c;

    return (v << 1) >> 27;
}
