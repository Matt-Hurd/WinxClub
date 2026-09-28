/* sub_801DCFC of split_801DCFC; the rest of the unit is still assembly in
 * asm/nonmatching/split_801DCFC/.
 *
 * `a0` is a Default* (include/Default.hpp), but Default.hpp is a C++ class
 * header and this unit is a plain .c translation unit compiled by tcc, which
 * cannot parse `class`; it reaches Default's directionAndMore (0x7c) and
 * flags.unk00/unk08 (0x80/0x88) through include/GameObj.h instead.
 * GameObjUnknown's unk00/unk08 are `int` (winxclub.h), but every shift here
 * needs the unsigned/logical form the original mirror's `unsigned int`
 * fields gave it, so both reads go through an `unsigned int` cast.
 */

#include "GameObj.h"

extern void *gUnknown_03003454;
extern int rand(void);
extern void sub_8017884(void *a0, unsigned int a1, unsigned int a2, unsigned int a3, void *a4);

void sub_801DCFC(struct GameObj *a0)
{
    if ((((unsigned int)a0->flags.unk00 << 0x15) >> 0x18) != 0) {
        unsigned short arg1 = rand() % (int)(((unsigned int)a0->flags.unk00 << 0x15) >> 0x18) +
            (((unsigned int)a0->flags.unk08 << 0x16) >> 0x16);

        sub_8017884(gUnknown_03003454, arg1,
            (*(unsigned int *)&a0->directionAndMore << 8) >> 0x18, 1, a0);
    }
}
