/* Ten functions of split_800AFD4; the rest of the unit is still assembly in
 * asm/nonmatching/split_800AFD4/. cpp_evidence.py proves this unit C++ (an
 * __nw__FUi operator-new call elsewhere in it), so it is spliced as .cpp
 * even though none of these five need a C++ construct themselves.
 *
 * All five poke REG_DISPCNT (0x4000000) or REG_VCOUNT (0x4000006) directly;
 * the addresses are round powers of two so tcc materialises them the same
 * way the ROM does (mov #imm, lsl #imm), no literal pool involved -- see
 * mmio-constants-get-rebased-to-a-32-byte-boundary.md for the case where
 * that is *not* true.
 */
#include "Singleton_3E98.hpp"

extern "C" void VBlankIntrWait(void);

extern "C" void sub_800B08E(void)
{
    VBlankIntrWait();
}

extern "C" int sub_800B082(void)
{
    return *(volatile unsigned short *)0x4000000 & 7;
}

extern "C" void sub_800B034(void *a0, int a1)
{
    if (a1) {
        *(volatile unsigned short *)0x4000000 |= 0x1000;
    } else {
        *(volatile unsigned short *)0x4000000 &= ~0x1000;
    }
}

extern "C" int sub_800B04C(void)
{
    return (*(volatile unsigned short *)0x4000000 >> 12) & 1;
}

extern "C" void sub_800B058(void *a0, unsigned int a1)
{
    volatile unsigned short *dispcnt = (volatile unsigned short *)0x4000000;
    *dispcnt = (unsigned short)((*dispcnt >> 3) << 3);
    *dispcnt = (unsigned short)(*dispcnt | a1);
    if (a1 > 2) {
        *dispcnt = (unsigned short)(*dispcnt & ~0xF00);
        *dispcnt = (unsigned short)(*dispcnt | 0x400);
    }
}

extern "C" void sub_800B0A0(void *a0, int a1, unsigned int a2)
{
    unsigned short color = (unsigned short)(((a2 >> 19) & 0x1F) |
                                             (((a2 >> 11) & 0x1F) << 5) |
                                             (((a2 >> 3) & 0x1F) << 10));
    *(volatile unsigned short *)(0x05000000 + a1 * 2) = color;
}

extern "C" unsigned short sub_800B0C0(void)
{
    return *(volatile unsigned short *)0x4000006;
}

extern "C" void *sub_800B09A(void)
{
    return (void *)0x06000000;
}

extern "C" void sub_803DA18(void *a0);
extern "C" int __VTABLE__14Singleton_3E98;

extern "C" void sub_800B01A(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__14Singleton_3E98;
    gUnknown_03003E98 = 0;
    if (a1) {
        sub_803DA18(a0);
    }
}

extern "C" int __VTABLE__339dword_803EB34;

extern "C" void *sub_800AFD4(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0xc);
    }
    if (a0 != 0) {
        Singleton_3E98 *self = (Singleton_3E98 *)a0;
        *(int *)a0 = (int)&__VTABLE__14Singleton_3E98;
        gUnknown_03003E98 = self;
        *(int *)a0 = (int)&__VTABLE__339dword_803EB34;

        *(volatile unsigned short *)0x04000000 |= 0x40;
        *(volatile unsigned short *)0x04000000 &= ~0x80;
        *(volatile unsigned short *)0x05000000 = 0x7fff;

        self->field_04 = 0x100;
        self->field_08 = 0;
    }
    return a0;
}
