/* Four of split_8013B64's six candidates; the rest of the unit -- including
 * sub_8013B64 and sub_8013B9C, tried and parked, see notes/parked.md -- is
 * still assembly in asm/nonmatching/split_8013B64/. Proven C++
 * (cpp_evidence.py: __da__FPv, operator delete[]).
 */
#include "generated/functions.h"

extern "C" void sub_8041274(void *a0, void *a1, int a2, int a3);

extern "C" void sub_8013E64(void *a0, unsigned char a1)
{
    *((unsigned char *)a0 + 0x2d) = a1;
    *(unsigned short *)((char *)a0 + 0xe) |= 1;
}

/* Same shape as split_8040104.cpp's inner if: free/hand-off the object at
 * +0x48 depending on whether +0x50 is set, then two independent teardown
 * fields. */
extern "C" void sub_8013F6C(void *a0)
{
    void *p = *(void **)((char *)a0 + 0x48);
    if (p) {
        void *q = *(void **)((char *)a0 + 0x50);
        if (q) {
            sub_8041274(q, p, 0, 0);
        } else {
            operator delete[](p);
        }
        *(void **)((char *)a0 + 0x48) = 0;
    }
    if (*(void **)((char *)a0 + 0x14)) {
        operator delete[](*(void **)((char *)a0 + 0x14));
        *(void **)((char *)a0 + 0x14) = 0;
    }
    if (*(void **)((char *)a0 + 0x4c)) {
        sub_803DA18(*(void **)((char *)a0 + 0x4c));
        *(void **)((char *)a0 + 0x4c) = 0;
    }
}

extern "C" void sub_8013FBC(void)
{
}

extern "C" void sub_8013FC0(void)
{
}
