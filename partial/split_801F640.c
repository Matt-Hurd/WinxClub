/* One function of split_801F640; the rest of the unit is still assembly in
 * asm/nonmatching/split_801F640/.
 *
 * `p == 0` and `(*p >> 10) & 1` are two separate early `return`s, not one
 * `&&`: the function is void, so both already share the same fall-through
 * exit and there is nothing for a-boolean-and-shares-one-exit to disambiguate
 * here. `(*p >> 10) & 1` written as `*p & 0x400` compiles a single-instruction
 * bit test (`LSL`/`BPL`) instead of the ROM's `LSL #0x15`/`LSR #0x1f` pair --
 * the shift-then-mask shape from offset-split-tells-you-where-the-field-
 * boundary-is.md, applied with the shift written explicitly rather than as
 * `>> 10 & 1`, which tcc folds into the same single-instruction test.
 */

void sub_801F640(void *a0, unsigned int a1)
{
    unsigned int *p = *(unsigned int **)((char *)a0 + 0x2c);
    unsigned int bit;

    if (p == 0)
        return;
    bit = (*p << 21) >> 31;
    if (bit == 0)
        return;
    *p = (*p & ~0x800) | (a1 << 11);
}

extern void sub_80401E4(void *a0, unsigned int a1);
extern void sub_8017862(void *a0, unsigned int a1);
extern void *gUnknown_03003454;

/* Each pending-object slot's first word is a vtable pointer whose own first
 * word is a PIC-style offset from itself to the callback, the same shape as
 * split_801CB18.c's `vtbl + *(int*)(vtbl+off)` calls but at offset 0. */
void sub_801F65C(void *a0)
{
    unsigned int i;

    for (i = 0; i < 5; i++) {
        void *obj = *(void **)((char *)a0 + i * 4 + 0x38);
        if (obj != 0) {
            int *vtbl = *(int **)obj;
            ((void (*)(void *, int))((char *)vtbl + *vtbl))(obj, 1);
            *(void **)((char *)a0 + i * 4 + 0x38) = 0;
        }
    }

    if ((int)(*(unsigned int *)(*(void **)((char *)a0 + 0x30)) << 31) != 0)
        sub_80401E4(*(void **)((char *)a0 + 0x30), 0);
    if ((int)(*(unsigned int *)(*(void **)((char *)a0 + 0x2c)) << 31) == 0)
        sub_80401E4(*(void **)((char *)a0 + 0x2c), 1);

    {
        void *g454 = gUnknown_03003454;
        unsigned char idx = (unsigned char)(*(unsigned int *)((char *)a0 + 0x7c) >> 16);

        *(unsigned short *)((char *)g454 + idx * 2 + 0x598) &= ~1;
        sub_8017862(g454, idx);
        *(unsigned int *)((char *)g454 + idx * 4 + 0x498) = 0;
        *(unsigned int *)((char *)a0 + 0x7c) &= ~0xff0000;
    }
}
