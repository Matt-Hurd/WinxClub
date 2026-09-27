/* One function of split_80363DC; the rest of the unit is still assembly in
 * asm/nonmatching/split_80363DC/. WallObjectScriptGroup__10 is the vtable's
 * working label for this slot.
 *
 * The bit test has to be spelled `(*p << 21) >> 31` assigned to a plain
 * `unsigned int` local rather than tested inline: inline, tcc collapses it to
 * a single `LSL`/`BMI` (branch on the shifted sign bit), which the ROM does
 * not do -- it keeps the full `LSL`/`LSR`/`BNE` shape. Reading
 * gUnknown_03003EA0 into a local before the `if`, rather than inline at the
 * point sub_8000D5A is called, matches where the ROM loads it (unconditionally,
 * before it is known to be needed) and keeps `computed`'s -1 sentinel out of
 * the same register as the bit test, matching the ROM's register choice too.
 */

extern void *gUnknown_03003EA0;
extern void *sub_8000D5A(void *a0);
extern void m10__7DefaultFv(void *a0);

void WallObjectScriptGroup__10(void *a0)
{
    void *target = *(void **)((char *)a0 + 0x2c);
    unsigned int bit = (*(unsigned int *)target << 21) >> 31;

    if (bit == 0) {
        void *g = gUnknown_03003EA0;
        int computed = -1;

        if (*(int *)((char *)target + 0x44) != 0) {
            computed = (*(int *)((char *)target + 0x44) -
                        *(int *)((char *)sub_8000D5A(g) + 0x24)) >> 3;
        }

        {
            unsigned short cur = *(unsigned short *)((char *)a0 + 0x1a);
            if ((unsigned short)computed != cur)
                *(unsigned short *)((char *)a0 + 0x18) = cur;
        }
    }

    m10__7DefaultFv(a0);
}
