/* One function of split_80401C0; the rest of the unit is still assembly in
 * asm/nonmatching/split_80401C0/.
 *
 * a1 has to be wider than a byte even though only its low byte is used: declared
 * `unsigned char` tcc trusts the caller to have narrowed it, drops the mask, and
 * then needs r4 for the field -- push/pop {r4} the ROM does not have. And the
 * field has to be spelled `(a1 >> 6) & 3` rather than `(unsigned char)a1 >> 6`;
 * the cast makes tcc narrow a1 in place first (`lsl #24` / `lsr #24` into r1)
 * where the ROM fuses mask and shift into one `lsl #24` / `lsr #30` pair in r3.
 */

void sub_80401C0(void *a0, unsigned int a1)
{
    unsigned int flags;

    *(unsigned short *)((char *)a0 + 0x2a) =
        (*(unsigned short *)((char *)a0 + 0x2a) & ~0xc00)
        | (((a1 >> 6) & 3) << 10);
    *((unsigned char *)a0 + 5) = a1;
    flags = *(unsigned int *)a0;
    if (!(flags & 0x200))
        *(unsigned int *)a0 = flags | 0x80;
}
