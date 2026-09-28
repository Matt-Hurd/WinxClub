/* sub_801DCFC of split_801DCFC; the rest of the unit is still assembly in
 * asm/nonmatching/split_801DCFC/.
 *
 * `a0` is a Default* (include/Default.hpp), but Default.hpp is a C++ class
 * header and this unit is a plain .c translation unit compiled by tcc, which
 * cannot parse `class`; the struct below mirrors the fields this unit
 * reaches (Default's directionAndMore at 0x7c and flags.unk00/unk08 at
 * 0x80/0x88) instead of including it.
 */

struct GameObj {
    char gap_00[0x7c];
    unsigned int field_7c; /* Default::directionAndMore */
    unsigned int field_80; /* Default::flags.unk00 */
    char gap_84[4];
    unsigned int field_88; /* Default::flags.unk08 */
};

extern void *gUnknown_03003454;
extern int rand(void);
extern void sub_8017884(void *a0, unsigned int a1, unsigned int a2, unsigned int a3, void *a4);

void sub_801DCFC(struct GameObj *a0)
{
    if (((a0->field_80 << 0x15) >> 0x18) != 0) {
        unsigned short arg1 = rand() % (int)((a0->field_80 << 0x15) >> 0x18) +
            ((a0->field_88 << 0x16) >> 0x16);

        sub_8017884(gUnknown_03003454, arg1,
            (a0->field_7c << 8) >> 0x18, 1, a0);
    }
}
