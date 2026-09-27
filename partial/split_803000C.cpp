/* One of split_803000C's assigned functions (Bird__20); the rest of the
 * unit stays assembly in asm/nonmatching/split_803000C/, including
 * Bird__10 which is not in this batch. Bird__20 is Bird's own m20 vtable
 * slot, written as a member the same way as WallObject::m20 and
 * WallObject::m38 in partial/split_8035E7C.cpp: a freshly EWRAM-allocated
 * 0x1c-byte node zeroed with the inline MOV+STMIA shape, not a memclr
 * call -- see
 * notes/quirks/a-small-word-typed-memset-inlines-instead-of-calling-rt-memclr_w.md.
 */
#include "Bird.hpp"

extern "C" void m20__7DefaultFv(void *a0);
extern "C" void *GetEWRAMStart(void);
extern "C" void *sub_803DA80(unsigned int size, void *heap, int a2, int a3);
extern "C" void *memset(void *, int, unsigned int);

void Bird::m20()
{
    int *node;

    m20__7DefaultFv(this);
    node = (int *)sub_803DA80(0x1c, GetEWRAMStart(), 0, 0);

    if (node != 0) {
        memset(node, 0, 0x1c);
    }
    *(short *)((char *)node + 0) = 0;
    *(short *)((char *)node + 2) = 0;
    *(short *)((char *)node + 4) = 0;
    *(short *)((char *)node + 6) = 0;
    *(short *)((char *)node + 8) = 0;
    *(short *)((char *)node + 0xa) = 0;
    *(short *)((char *)node + 0xc) = 0;
    *(short *)((char *)node + 0xe) = 0;
    *(short *)((char *)node + 0x10) = 0;
    *(short *)((char *)node + 0x12) = 0;
    *(char *)((char *)node + 0x14) = 3;
    *(void **)((char *)node + 0x18) = *(void **)((char *)this + 0x28);
    *(void **)((char *)this + 0x28) = node;
}
