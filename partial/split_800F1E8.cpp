/* Four functions of split_800F1E8; the rest of the unit is still assembly in
 * asm/nonmatching/split_800F1E8/. sub_800F408 is parked -- see notes/parked.md.
 */
#include "generated/functions.h"

extern "C" void *memset(void *, int, unsigned int);

extern "C" void sub_800F1E8(int *a0)
{
    unsigned int i;

    a0[0] = 0x8800;
    for (i = 0; i < 1; i++) {
        *(int *)((char *)a0 + i * 4 + 0x18) = 0;
        *(int *)((char *)a0 + i * 4 + 4) = 1;
    }
    for (i = 0; i < 2; i++) {
        *(int *)((char *)a0 + i * 4 + 0x10) = 0;
        *(int *)((char *)a0 + i * 4 + 8) = 1;
        *((unsigned char *)a0 + i + 0x7c) = 0;
    }
    *(int *)((char *)a0 + 0x34) = 0;
}

extern "C" void sub_800F220(int *a0)
{
    unsigned int i;

    memset(a0, 0, 0x80);
    a0[0] = 0x8800;
    for (i = 0; i < 1; i++) {
        *(int *)((char *)a0 + i * 4 + 0x18) = 0;
        *(int *)((char *)a0 + i * 4 + 4) = 1;
    }
    for (i = 0; i < 2; i++) {
        *(int *)((char *)a0 + i * 4 + 0x10) = 0;
        *(int *)((char *)a0 + i * 4 + 8) = 1;
        *((unsigned char *)a0 + i + 0x7c) = 0;
    }
    *(int *)((char *)a0 + 0x34) = 0;
}

extern "C" int sub_800F2B4(void)
{
    return 0x98;
}

extern "C" void sub_800F2B8(void *a0, int a1)
{
    *(int *)((char *)a0 + 0x70) = a1;
}
