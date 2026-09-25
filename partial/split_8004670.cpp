/* Twelve of the fourteen assigned functions of split_8004670; the rest of
 * the unit, including the parked sub_80046B8 and sub_8004716 (see
 * notes/parked.md), is still assembly in asm/nonmatching/split_8004670/.
 * cpp_evidence.py proves the unit C++ via __nw__FUi (operator new); none of
 * these is a vtable slot, so they are written as plain free functions,
 * extern "C" to keep their working names.
 */
#include "generated/functions.h"

extern "C" void sub_8004670(void *a0, int a1) {
    *(int *)((char *)a0 + 4) = a1;
}

extern "C" int sub_8004674(void *a0) {
    return *(int *)((char *)a0 + 4);
}

extern "C" void *sub_8004678(void *a0, int a1) {
    unsigned short flags;

    if (a0 == 0) {
        a0 = operator new(0x10);
    }
    if (a0 != 0) {
        flags = (*(unsigned short *)a0 & ~3) | (a1 & 3);
        *(unsigned short *)((char *)a0 + 0xa) = 0;
        *(unsigned short *)((char *)a0 + 0xc) = 0;
        *(unsigned int *)((char *)a0 + 4) = 0;
        *(unsigned short *)((char *)a0 + 8) = 0;
        *(unsigned short *)a0 = flags & ~4;
    }
    return a0;
}

extern "C" void sub_80046AC(void *a0, int a1) {
    *(int *)((char *)a0 + 4) = a1;
    *(unsigned short *)a0 |= 4;
}

extern "C" int sub_80046D8(void *a0) {
    return *(int *)((char *)a0 + 4);
}

extern "C" void sub_80046DC(void *a0, void *a1) {
    *(unsigned short *)a0 = *(unsigned short *)((char *)a1 + 8);
}

extern "C" void *sub_80046F8(void *a0) {
    if (a0 == 0) {
        a0 = operator new(6);
    }
    if (a0 != 0) {
        *(unsigned short *)a0 = 0;
        *(unsigned short *)((char *)a0 + 2) = 0;
        *(unsigned short *)((char *)a0 + 4) = 0;
    }
    return a0;
}

extern "C" void sub_800475C(void *a0, unsigned int a1) {
    *(unsigned int *)a0 = (*(unsigned int *)a0 & ~0x04000000) | (a1 << 26);
}

extern "C" void sub_800476C(void *a0, unsigned int a1) {
    unsigned short masked = *(unsigned short *)a0 & ~0xc0;
    *(unsigned short *)a0 = masked | ((a1 & 3) << 6);
}

extern "C" void sub_80046EE(void *a0) {
    *(unsigned short *)a0 = 0;
    *(unsigned short *)((char *)a0 + 2) = 0;
    *(unsigned short *)((char *)a0 + 4) = 0;
}

extern "C" void sub_80046E2(void *a0, void *a1) {
    unsigned short *src = (unsigned short *)((char *)a1 + 0xa);
    *(unsigned short *)a0 = src[0];
    *(unsigned short *)((char *)a0 + 2) = src[1];
}

extern "C" int sub_800474E(void *a0) {
    return sub_803D66C((char *)a0 + 4);
}

