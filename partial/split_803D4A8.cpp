/* Nine functions of split_803D4A8; the rest of the unit is still assembly in
 * asm/nonmatching/split_803D4A8/. sub_80051D6 lives in split_8005044 and
 * stays assembly there.
 */

extern "C" void *gUnknown_030033E8;
extern "C" void *sub_80051D6(void *a0, void *a1, int a2, void *a3, void *a4);
extern "C" void sub_8005220(void *a0, void *a1, void *a2, void *a3);

/* gUnknown_030033E8+8 is the arena instance sub_8005220 (already matched in
 * partial/split_8005044.c as a two-argument free()) actually reads; a2/a3
 * ride along in r2/r3 unused by the callee, the same dead-argument shape as
 * split_8005044.c's sub_80050F4 reading the same global. */
extern "C" void sub_803D9A8(void *a0, void *a1, void *a2)
{
    sub_8005220(*(void **)((char *)&gUnknown_030033E8 + 8), a0, a1, a2);
}

/* operator new and sub_803D984 both forward to sub_80051D6 with the same
 * arena dereference as sub_803D9A8 above, and were parked on it (register-
 * allocation-is-the-stop-signal, see notes/parked.md): the inline-expression
 * form used above compiles the deref last, right before the call, where the
 * ROM does it right after the push, before the stack-argument spill and the
 * constant/copy moves. Naming the dereferenced pointer as its own local
 * (`void *arena = ...`, not folded into the call expression) is what moves
 * tcc's scheduler onto the ROM's order for both of these two -- the
 * remaining `str r2,[sp]` vs `str r2,[sp,#0]` line regtest.py's diff shows
 * is spelling only, not a byte difference (SP-relative STR with a 0 offset
 * assembles the same either way). */
void *operator new(unsigned int a0)
{
    void *arena = *(void **)((char *)&gUnknown_030033E8 + 8);
    return sub_80051D6(arena, (void *)a0, 1, 0, 0);
}

extern "C" void *sub_803D984(void *a0, void *a1, void *a2)
{
    void *arena = *(void **)((char *)&gUnknown_030033E8 + 8);
    return sub_80051D6(arena, a0, 3, a1, a2);
}

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
