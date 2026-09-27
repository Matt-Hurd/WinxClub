/* Two functions of split_80327F4; the rest of the unit is still assembly in
 * asm/nonmatching/split_80327F4/. sub_80327F4 was tried and parked -- see
 * notes/parked.md -- so only sub_8032A58 and sub_8032A7E are spliced here;
 * sub_802E8B0 is declared locally since config/symbols.yml is out of scope
 * for this batch. sub_80328B0 (also in this batch) is parked too -- see
 * notes/parked.md -- for a register-allocation mismatch on one ADD.
 */
extern void sub_802E8B0(void *a0);

void sub_8032A58(void *a0)
{
    unsigned int v;

    sub_802E8B0(a0);
    v = *(unsigned int *)((char *)a0 + 0x34);
    v = (v & ~0x700) + 0x300;
    *(unsigned int *)((char *)a0 + 0x34) = v;
    *(unsigned int *)((char *)a0 + 0x4c) &= 0x7fffffff;
}

unsigned int sub_8032A7E(void *a0)
{
    unsigned int v = *(unsigned int *)((char *)a0 + 0x4c);

    return (v << 1) >> 27;
}
