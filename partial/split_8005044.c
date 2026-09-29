/* Ten of split_8005044's eleven candidates. sub_8005044,
 * SomehowInitEWRAMLinkedList, sub_8005170 and sub_80051D6 are
 * parked -- see notes/parked.md -- and stay asm in
 * asm/nonmatching/split_8005044/.
 *
 * The header/node struct these operate on is 0x10 bytes: a next-free-node
 * pointer @0x0, another link @0x4, a packed state|size word @0x8 (low byte
 * a small state code whose bit 0 doubles as an in-use flag, high 24 bits a
 * size), and a min-size @0xc.
 *
 * GetEWRAMStart and sub_80050FA both work on gUnknown_030033E8, the same
 * three-pointer block sub_80050F4 already reads (@0x4 the free-list head,
 * @0x8 the cached EWRAM start): GetEWRAMStart returns the cache, and
 * sub_80050FA sets it -- falling back to the free-list head@0x4 for a NULL
 * argument. */

#include "generated/globals.h"

int sub_800510C(unsigned char *a0, unsigned char *a1)
{
    return (unsigned int)*(unsigned char **)a0 <= (unsigned int)a1
        && (unsigned int)*(unsigned char **)(a0 + 4) > (unsigned int)a1;
}

void sub_80050AC(unsigned char *a0)
{
    unsigned int flags;

    *(unsigned int *)(a0 + 4) = 0;
    *(unsigned int *)a0 = 0;
    flags = *(unsigned int *)(a0 + 8);
    flags |= 1;
    flags &= 1;
    *(unsigned int *)(a0 + 0xc) = 0;
    *(unsigned int *)(a0 + 8) = flags;
}

void *sub_8005120(unsigned char *a0)
{
    a0 -= 0xc;

    if ((*(unsigned int *)(a0 + 8) >> 8) == 0)
        goto L5;
L4:
    a0 = *(unsigned char **)(a0 + 4);
    if ((*(unsigned int *)(a0 + 8) >> 8) != 0)
        goto L4;
L5:
    return *(unsigned char **)(a0 + 4);
}

void sub_8005134(unsigned char *a0, unsigned int a1)
{
    unsigned int flags = *(unsigned int *)(a0 + 8);

    if ((flags & 1) == a1)
        return;

    flags = ((flags >> 1) << 1) | a1;
    *(unsigned int *)(a0 + 8) = flags;

    if (a1 != 0)
        return;

    *(unsigned int *)a0 = 0;
    flags = flags << 0x1f;
    *(unsigned int *)(a0 + 4) = 0;
    flags = flags >> 0x1f;
    *(unsigned int *)(a0 + 8) = flags;
    *(unsigned int *)(a0 + 0xc) = 0;
}

unsigned int sub_8005158(unsigned char *a0)
{
    return (*(unsigned int *)(a0 + 8) << 0x1f) >> 0x1f;
}

unsigned int sub_8005160(unsigned char *a0)
{
    return *(unsigned int *)(a0 + 0xc);
}

/* Free-space calculation: (field4 - field0) - fieldC. Written as one
 * expression rather than through locals -- with locals tcc combines the
 * field0/field4 reads into an LDMIA regardless of read order (see
 * notes/parked.md); this shape keeps them as two separate ldrs. */
unsigned int sub_8005164(unsigned char *a0)
{
    return (*(unsigned int *)(a0 + 4) - *(unsigned int *)a0) - *(unsigned int *)(a0 + 0xc);
}

void sub_8005220(unsigned char *a0, unsigned char *a1)
{
    unsigned char *r1 = a1;
    unsigned char *node0;
    unsigned char *node4;
    unsigned int r2;
    unsigned int r3;

    if (!(*(unsigned int *)(a0 + 8) & 1))
        return;

    r1 -= 0xc;
    r2 = *(unsigned int *)(r1 + 8) >> 8;
    r3 = *(unsigned int *)(a0 + 0xc);
    r2 = ((r2 + 7) >> 3) << 3;
    r2 = r3 - (r2 + 0xc);
    *(unsigned int *)(a0 + 0xc) = r2;

    node0 = *(unsigned char **)r1;
    node4 = *(unsigned char **)(r1 + 4);
    *(unsigned char **)node4 = node0;

    node4 = *(unsigned char **)(r1 + 4);
    node0 = *(unsigned char **)r1;
    *(unsigned char **)(node0 + 4) = node4;

    r2 = *(unsigned int *)(a0 + 8);
    r3 = r2 & 1;
    r2 = r2 - 2;
    r2 = ((r2 >> 1) << 1) | r3;
    *(unsigned int *)(a0 + 8) = r2;
}

void *sub_80050F4(void)
{
    return *(void **)((unsigned char *)&gUnknown_030033E8 + 4);
}

void *GetEWRAMStart(void)
{
    return *(void **)((unsigned char *)&gUnknown_030033E8 + 8);
}

void sub_80050FA(void *a0)
{
    unsigned char *base = (unsigned char *)&gUnknown_030033E8;

    if (a0 == 0)
        a0 = *(void **)(base + 4);
    *(void **)(base + 8) = a0;
}
