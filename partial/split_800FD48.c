/* Six functions of split_800FD48; the whole unit converts, so nothing of it
 * stays in asm/split/ once this lands (asm/nonmatching/split_800FD48/ still
 * holds the cut slices the splicer uses per function).
 *
 * The object these touch is `Obj` (include/Obj.h): a playing sound channel.
 * field_04 is a raw sample-data address, field_08 a small shift count
 * (channel/voice index), field_5c and field_64 plain state words. This unit
 * is where those four field names were first proven; the rest of Obj's
 * fields come from other units, see include/Obj.h's own comment.
 *
 * REG_DMA1 (0x040000bc) and REG_TM0CNT (0x04000100) are not 32-byte aligned,
 * so a flat cast would rebase (notes/quirks/mmio-constants-get-rebased-to-a-
 * 32-byte-boundary.md); holding one pointer and indexing off it, as
 * partial/split_8000210.c does for REG_DMA3, pools the address verbatim
 * instead. Two of these functions also fold the register's own base address
 * into a control-bit constant via a shift -- 0x040000bc >> 11 == 0x8000 (the
 * DMA enable bit) and 0x04000100 << 15 == 0x800000 (the timer enable bit,
 * once placed in the word's upper half) -- rather than loading a fresh
 * immediate, which is why the pointer value itself appears in a shift.
 */

#include "generated/functions.h"
#include "Obj.h"

extern void *gUnknown_03003EAC;
extern unsigned int gUnknown_03003E7C;

void sub_800FDCE(Obj *a0, unsigned int a1);

void nullsub_6(void)
{
}

void sub_800FD48(Obj *a0)
{
    volatile unsigned int *dma1 = (volatile unsigned int *)0x040000bc;
    unsigned short tmp;

    ((volatile unsigned short *)dma1)[5] &= ~(0x1d << 9);
    ((volatile unsigned short *)dma1)[5] &= ~((unsigned int)dma1 >> 11);
    tmp = ((volatile unsigned short *)dma1)[5];
    (void)tmp;

    *(volatile unsigned int *)0x04000100 = *(volatile unsigned int *)0x04000104 = 0;

    {
        volatile unsigned short *sc = (volatile unsigned short *)0x04000082;

        *sc &= ~(3 << 8);
        *sc &= 4;
        *sc &= ~(3 << 12);
        *sc &= ~8;
    }

    a0->field_5c = 8;
    sub_800B12C(gUnknown_03003EAC, 4, 0, 1);
}

unsigned int sub_800FDA4(void)
{
    volatile unsigned int *dma1 = (volatile unsigned int *)0x040000bc;
    unsigned int cnt;

    ((volatile unsigned short *)dma1)[5] &= ~(0x1d << 9);
    ((volatile unsigned short *)dma1)[5] &= ~((unsigned int)dma1 >> 11);
    (void)((volatile unsigned short *)dma1)[5];

    dma1[0] = *(unsigned int *)(gUnknown_03003E7C + 4);
    dma1[1] = 0x040000a0;
    dma1[2] = 0xb6400004;
    cnt = dma1[2];
    return cnt;
}

void sub_800FDCE(Obj *a0, unsigned int a1)
{
    unsigned int cnt;
    unsigned int tm1;
    unsigned int tm0;

    sub_800B12C(gUnknown_03003EAC, 4, (void *)sub_800FDA4, 1);

    {
        volatile unsigned int *dma1 = (volatile unsigned int *)0x040000bc;
        dma1[0] = a0->field_04;
        dma1[1] = 0x040000a0;
        dma1[2] = 0xb6400004;
        cnt = dma1[2];
        (void)cnt;
    }

    tm1 = (unsigned short)((0xb6400004u << 14) - (1u << a0->field_08));
    *(volatile unsigned int *)0x04000104 = (0x31 << 18) | tm1;

    tm0 = (unsigned short)((0xb6400004u << 14) - a1);
    *(volatile unsigned int *)0x04000100 = tm0 | (0x04000100u << 15);

    {
        volatile unsigned short *sndbias = (volatile unsigned short *)0x04000080;
        volatile unsigned short *sc;

        sndbias[2] = 0x80;
        sc = (volatile unsigned short *)((char *)sndbias + 2);
        *sc |= (0xb << 8);
        *sc |= 4;
    }

    a0->field_64 = 0;
}

void sub_800FE3A(Obj *a0, unsigned int a1)
{
    sub_800FDCE(a0, 0x1000000 / a1);
}

int sub_800FE56(Obj *a0)
{
    return *(volatile unsigned short *)0x04000104 - (0x10000 - (1 << a0->field_08));
}
