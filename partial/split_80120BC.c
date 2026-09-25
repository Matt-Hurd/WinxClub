/* Two functions of split_80120BC; the rest of the unit is still assembly in
 * asm/nonmatching/split_80120BC/. config/symbols.yml is out of scope for this
 * batch, so sub_80123B4 is declared locally rather than via generated/functions.h.
 * sub_80123B4 lives in split_8012334, a different unit, so this one still
 * needs its IMPORT -- which the original disassembly's header.s already has.
 *
 * sub_80122F0 sets bit 2 of the found entry's field 4 (and mirrors it back to
 * *a0), sub_801230C clears the same bit; same shape as sub_8012334 in the
 * other unit of this batch, just OR instead of a plain store, and AND-NOT.
 */
extern void *sub_80123B4(void *a0);

void sub_80122F0(void *a0)
{
    void *entry = sub_80123B4(a0);

    if (entry != 0) {
        int flags = *(int *)((char *)entry + 4) | 2;
        *(int *)((char *)entry + 4) = flags;
        *(int *)a0 = flags;
    }
}

void sub_801230C(void *a0)
{
    void *entry = sub_80123B4(a0);

    if (entry != 0) {
        int flags = *(int *)((char *)entry + 4) & ~2;
        *(int *)((char *)entry + 4) = flags;
        *(int *)a0 = flags;
    }
}
