/* All three functions of split_800CD04. `a0` in every one of them is the
 * camera singleton's data portion, struct Singleton_3EA0_Data
 * (include/Singleton_3EA0.hpp) -- not the level-state object at
 * gUnknown_03003448 winx-qhyt.25 named this unit for; that survey
 * attribution was superseded once winx-qhyt.13 wrote
 * include/Unknown_03003448.h, whose header comment says so explicitly and
 * lists these three functions by name. `a1` is a separate, unidentified
 * object and stays raw offset arithmetic.
 */
#include "Singleton_3EA0.hpp"

void sub_800CD04(struct Singleton_3EA0_Data *a0, unsigned int *a1, unsigned int a2)
{
    *(unsigned short *)((char *)&a0->field_3a0 + a2 * 2) = 0xfff;
    *a1 = (*a1 & ~0x1f00) | ((a2 & 0x1f) << 8);
}

void sub_800CD28(struct Singleton_3EA0_Data *a0, void *a1)
{
    unsigned int val = *(unsigned int *)(*(char **)((char *)a1 + 0x14));
    unsigned int index = (val >> 13) & 0xff;
    unsigned short *p = (unsigned short *)((char *)&a0->field_1318 + index * 10);

    *p = (*p & ~0x300) | 0x200;
    a0->field_1818 = 1;
}

void sub_800CD58(struct Singleton_3EA0_Data *a0, void *a1)
{
    unsigned int flag = (*(unsigned short *)((char *)a1 + 0x26) >> 8) & 3;
    unsigned int val = *(unsigned int *)(*(char **)((char *)a1 + 0x14));
    unsigned int index = (val >> 13) & 0xff;
    unsigned short *p = (unsigned short *)((char *)&a0->field_1318 + index * 10);

    *p = (*p & ~0x300) | (flag << 8);
    a0->field_1818 = 1;
}
