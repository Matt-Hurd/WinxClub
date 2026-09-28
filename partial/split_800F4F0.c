/* Two functions of split_800F4F0; the rest of the unit is still assembly in
 * asm/nonmatching/split_800F4F0/.
 */
#include "Obj.h"

extern void sub_800F220(void *a0);

void sub_800F4F0(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    struct ObjBank *ptr;

    ptr = a0->field_70;
    ptr->field_8c = 0;

    ptr = a0->field_70;
    ptr->field_90 = ptr->field_94;

    ptr = a0->field_70;
    sub_800F220(ptr);

    ptr = a0->field_70;
    {
        /* the intermediate `region` pointer is load-bearing: tcc computes it
         * once (ADD r0,#0x1c) and stores through it at small offsets; six
         * direct field stores at their real offsets compile one instruction
         * shorter and move a byte. Keep the cast. */
        char *region = (char *)ptr + 0x1c;
        *(unsigned int *)(region + 0x14) = 0;
        *(unsigned int *)(region + 0) = 0;
        *(unsigned int *)(region + 8) = 0;
        *(unsigned int *)(region + 0x10) = 0;
        *(unsigned int *)(region + 4) = 0;
        *(unsigned int *)(region + 0xc) = 0;
    }

    ptr = a0->field_70;
    a0->field_74 = ptr->field_88;
}

/* v>>10 & 0xffff and v>>6 & 0xf are the offset-split shapes of the ROM's
 * lsl/lsr pairs; the shared `return 0` for both tests is a short-circuit &&,
 * see a-boolean-and-shares-one-exit-for-both-tests.md. */
int sub_800F700(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    return ((a0->field_18 >> 10) & 0xffff) != 0
        && ((a0->field_18 >> 6) & 0xf) != 0;
}
