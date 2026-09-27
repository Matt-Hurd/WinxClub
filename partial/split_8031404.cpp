/* One function of split_8031404; Critter__10 is parked (notes/parked.md),
 * still assembly in asm/nonmatching/split_8031404/. Critter__20 is
 * Critter's own slot body, halfword-aligned like split_800F010.c -- see
 * notes/quirks/a-halfword-aligned-function-splices-like-any-other.md.
 */
#include "Critter.hpp"

extern "C" void m20__7DefaultFv(void *a0);
extern "C" void *GetEWRAMStart(void);
extern "C" void *sub_803DA80(unsigned int size, void *heap, int a2, int a3);
extern "C" void *memset(void *, int, unsigned int);

void Critter::m20()
{
    int *node;

    m20__7DefaultFv(this);

    node = (int *)sub_803DA80(0x1c, GetEWRAMStart(), 0, 0);
    if (node != 0) {
        memset(node, 0, 0x1c);
    }

    *(unsigned short *)((char *)node + 0x0) = 0;
    *(unsigned short *)((char *)node + 0x2) = 0;
    *(unsigned short *)((char *)node + 0x4) = 0;
    *(unsigned short *)((char *)node + 0x6) = 0;
    *(unsigned short *)((char *)node + 0x8) = 0;
    *(unsigned short *)((char *)node + 0xa) = 0;
    *(unsigned short *)((char *)node + 0xc) = 0;
    *(unsigned short *)((char *)node + 0xe) = 0;
    *(unsigned short *)((char *)node + 0x10) = 0;
    *(unsigned short *)((char *)node + 0x12) = 0;
    *(unsigned char *)((char *)node + 0x14) = 3;
    *(void **)((char *)node + 0x18) = *(void **)((char *)this + 0x28);
    *(void **)((char *)this + 0x28) = node;
}
