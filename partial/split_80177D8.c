/* Five functions of split_80177D8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80177D8/. sub_80177E8 was attempted and parked --
 * see notes/parked.md.
 */
#include "generated/functions.h"
#include "generated/globals.h"

extern void sub_803FBBC(void *a0);
extern void sub_803FB24(void *a0, void *a1, unsigned int a2, unsigned int a3);
extern void sub_803FAD4(void *a0);

struct PoolSlotField {
    unsigned short low : 6;
    unsigned short high : 10;
};

void sub_80177D8(void *a0, void *a1)
{
    char *cursor = (char *)a0 + (*(unsigned short *)((char *)a1 + 4) << 2) + 0x600;
    *(void **)(cursor + 0x1c) = a1;
}

void sub_8017862(void *a0, unsigned int a1)
{
    void *node = *(void **)((char *)a0 + (a1 << 2) + 0x280 + 0x18);

    while (node != 0) {
        void *next = *(void **)((char *)node + 0x14);
        sub_803FBBC(node);
        node = next;
    }
}

void sub_80179BE(void *a0, void *a1, void *a2, unsigned int a3, unsigned int a4)
{
    unsigned int index = a4;
    void *result;

    if (index == 0xff)
        index = *(unsigned char *)((char *)a0 + 0x14);

    result = sub_803F72C(gUnknown_03003E88, 0x1c, index);
    ((struct PoolSlotField *)((char *)result + 0x10))->high =
        *(unsigned short *)((char *)a2 + 2) + 0x1c;
    sub_803FB24(result, a2, a3, index);
    *(void **)((char *)result + 8) = a1;
    sub_803FAD4(result);
}

void sub_8017A0A(void *a0, unsigned int a1, void *a2, unsigned int a3, unsigned int a4)
{
    unsigned int index = a4;
    void *result;

    if (index == 0xff)
        index = *(unsigned char *)((char *)a0 + 0x14);

    result = sub_803F72C(gUnknown_03003E88, 0x1c, index);
    ((struct PoolSlotField *)((char *)result + 0x10))->high =
        *(unsigned short *)((char *)a2 + 2) + 0x1c;
    sub_803FB24(result, a2, a3, index);
    *(unsigned short *)((char *)result + 0xc) = a1;
    sub_803FAD4(result);
}

void sub_8017A56(void *a0, unsigned int a1, void *a2, unsigned int a3, unsigned int a4)
{
    unsigned int index = a4;
    void *result;

    if (index == 0xff)
        index = *(unsigned char *)((char *)a0 + 0x14);

    result = sub_803F72C(gUnknown_03003E88, 0x1c, index);
    ((struct PoolSlotField *)((char *)result + 0x10))->high =
        *(unsigned short *)((char *)a2 + 2) + 0x1c;
    sub_803FB24(result, a2, a3, index);
    *(unsigned short *)((char *)result + 0xe) = a1;
    sub_803FAD4(result);
}
