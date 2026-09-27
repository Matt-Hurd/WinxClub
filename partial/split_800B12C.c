#include "generated/globals.h"

extern void sub_800B154(void *a0, int a1, int a2);

void sub_800B12C(void *a0, int a1, void *a2, int a3)
{
    int a4;

    gUnknown_030033FC[a1] = a2;
    a4 = 0;
    if (a2 != 0) {
        a4 = a3;
    }
    sub_800B154(a0, a1, a4);
}

void *sub_800B148(void *a0, int a1)
{
    return gUnknown_030033FC[a1];
}
