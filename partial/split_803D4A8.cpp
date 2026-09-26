/* Seven functions of split_803D4A8; the rest of the unit is still assembly in
 * asm/nonmatching/split_803D4A8/. sub_80051D6 lives in split_8005044 and
 * stays assembly there.
 */

extern "C" void *sub_80051D6(void *a0, void *a1, int a2, void *a3, void *a4);

/* REG_BLDCNT, REG_BLDALPHA, REG_BLDY from a0[0..2]. The ROM pools REG_WIN0H
 * (0x04000040) and reaches them at #0x10/#0x12/#0x14: the 32-byte rebase of
 * notes/quirks/mmio-constants-get-rebased-to-a-32-byte-boundary.md, so the
 * flat casts are what reproduce it. */
extern "C" void sub_803D66C(unsigned short *a0)
{
    *(volatile unsigned short *)0x04000050 = a0[0];
    *(volatile unsigned short *)0x04000052 = a0[1];
    *(volatile unsigned short *)0x04000054 = a0[2];
}

extern "C" int sub_803D97C(void *a0)
{
    return (*(unsigned int *)a0 << 6) >> 31;
}

extern "C" void *sub_803DA80(void *a0, void *a1, void *a2, void *a3)
{
    return sub_80051D6(a1, a0, 1, a2, a3);
}

extern "C" void *sub_803DA9C(void *a0, void *a1, void *a2, void *a3)
{
    return sub_80051D6(a1, a0, 2, a2, a3);
}

extern "C" void nullsub_5(void)
{
}

extern "C" void *sub_803DABC(void *a0, void *a1, void *a2)
{
    return a2;
}

extern "C" void *sub_803DAC0(void *a0, void *a1)
{
    return a1;
}
