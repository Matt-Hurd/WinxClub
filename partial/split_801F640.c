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
