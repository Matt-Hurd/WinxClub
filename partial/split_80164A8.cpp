/* Two functions of split_80164A8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80164A8/. cpp_evidence.py proves the unit C++ via
 * __da__FPv / __nw__FUi elsewhere in it (winx-78k.31); neither function here
 * is a vtable slot, so both stay free functions.
 */
#include "generated/functions.h"

extern "C" void *sub_803DA9C(unsigned int a0, void *a1, int a2, int a3);
extern "C" void *maybeGameObjFactory(unsigned short a0);

extern "C" void sub_801659C(unsigned char *a0)
{
    unsigned short *node;
    unsigned short i;
    void *obj, *cur;

    i = 0;
    node = *(unsigned short **)(a0 + 0xc);
    *(void **)(a0 + 0x14) =
        sub_803DA9C(*(unsigned char *)(a0 + 8) * 4, GetEWRAMStart(), 0, 0);
    goto test1;
next1:
    obj = maybeGameObjFactory(*node);
    (*(void ***)(a0 + 0x14))[i] = obj;
    *(unsigned short *)((char *)obj + 6) = i;
    i++;
    node = *(unsigned short **)((char *)node + 4);
test1:
    if (node != 0 && *(unsigned char *)(a0 + 8) > i)
        goto next1;

    node = *(unsigned short **)(a0 + 0xc);
    if (node == 0)
        return;
free1:
    cur = node;
    node = *(unsigned short **)((char *)node + 4);
    sub_803DA18(cur);
    if (node != 0)
        goto free1;
}

extern "C" int sub_8016690(void)
{
    return 1;
}
