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

extern "C" void sub_8013FBE(void)
{
}

extern "C" void sub_8013FC2(void)
{
}

extern "C" void sub_8013F66(void *a0, unsigned char a1)
{
    *((unsigned char *)a0 + 0x2e) = a1;
}

extern "C" void sub_8013F1E(void *a0, unsigned short a1)
{
    *(unsigned short *)((char *)a0 + 0x22) = a1;
    *(unsigned short *)((char *)a0 + 0xe) |= 8;
}

extern "C" void sub_8013F5A(void *a0, unsigned char a1)
{
    *((unsigned char *)a0 + 0x10) = a1;
    *(unsigned short *)((char *)a0 + 0xe) |= 1;
}

extern "C" void sub_80139AC(void *a0, int a1);

extern "C" void sub_8013FAE(void *a0)
{
    sub_80139AC(a0, 0);
}

extern "C" void sub_8013E56(void *a0, unsigned short a1, unsigned short a2)
{
    *(unsigned short *)((char *)a0 + 0x18) = a1;
    *(unsigned short *)((char *)a0 + 0x1a) = a2;
    *(unsigned short *)((char *)a0 + 0xe) |= 2;
}

extern "C" void sub_8013B76(void *a0)
{
    if (*(void **)((char *)a0 + 0x4c)) {
        sub_803DA18(*(void **)((char *)a0 + 0x4c));
        *(void **)((char *)a0 + 0x4c) = 0;
    }
    *((unsigned char *)a0 + 0x2c) = 0;
    *(unsigned short *)((char *)a0 + 0x3a) = 0xffff;
    *(unsigned short *)((char *)a0 + 0xe) = 1;
}

extern "C" void sub_8013F2A(void *a0, void *a1)
{
    *(void **)((char *)a0 + 0x44) = a1;
    if (a1 == 0) {
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
    }
}

/* gUnknown_03003C40: struct of per-category list tails (+0) and heads (+0xc,
 * gUnknown_03003C4C); the ROM never loads the heads array's address as its
 * own pool word, only gUnknown_03003C40 plus a runtime +0xc, so the head
 * array has to be reached the same way here. Each node's field+4 points at
 * whatever displaced it as head, threading the bucket from oldest (tail) to
 * newest (head).
 *
 * sub_8013E2C (this struct's other user, and the reason for it) is parked
 * -- see notes/parked.md -- but this declaration is what let sub_8013FC4's
 * `tails[cat]` splice at all, so it stays. */
struct Buckets03003C40 {
    void *tails[3];
    void *heads[3];
};
extern struct Buckets03003C40 gUnknown_03003C40;

extern "C" void sub_8013FC4(void *a0, int a1)
{
    void *node;

    if (a1 != 0) {
        *(unsigned short *)((char *)a0 + 0xe) = 0;
        return;
    }

    node = gUnknown_03003C40.tails[*(unsigned char *)((char *)a0 + 0xc)];
    while (node) {
        if (*(unsigned char *)((char *)node + 0xc) == *(unsigned char *)((char *)a0 + 0xc)) {
            *(unsigned short *)((char *)node + 0xe) = 0;
        }
        node = *(void **)((char *)node + 4);
    }
}

/* Same self-relative function pointer as sub_8018160 (split_8018070.cpp),
 * offset 4 into the node's first word instead of offset 0: the value at
 * *(base+4) is an offset from base, added back to get the callable target.
 */
extern "C" void sub_8013DEA(unsigned char a0)
{
    unsigned char cat = 0;
    unsigned char limit = 3;

    if (a0 < 3) {
        cat = a0;
        limit = a0 + 1;
    }

    if (cat < limit) {
        do {
            void *node = gUnknown_03003C40.tails[cat];
            while (node) {
                void *base = *(void **)node;
                void *arg = node;
                int off = *(int *)((char *)base + 4);
                void (*fn)(void *) = (void (*)(void *))(off + (int)base);
                fn(arg);
                node = *(void **)((char *)node + 4);
            }
            cat = cat + 1;
        } while (cat < limit);
    }
}


