/* Two functions of split_803846C; the rest of the unit is still assembly
 * in asm/nonmatching/split_803846C/. sub_80384D8 (also in this batch) was
 * tried and parked -- see notes/parked.md -- for a register-allocation
 * mismatch on one ADD. sub_802E8B0 is declared locally since
 * config/symbols.yml is out of scope for this batch.
 */
extern void sub_802E8B0(void *a0);

/* Same "& ~0x700, add a flag" shape as sub_8032A58 (partial/split_80327F4.c). */
void sub_80384FA(void *a0)
{
    unsigned int v;

    sub_802E8B0(a0);
    v = *(unsigned int *)((char *)a0 + 0x34);
    v = (v & ~0x700) + (1 << 0xa);
    *(unsigned int *)((char *)a0 + 0x34) = v;
    *(unsigned char *)((char *)a0 + 0x40 + 6) = 0x3c;
}

unsigned char sub_803851E(void *a0)
{
    return *(unsigned char *)((char *)a0 + 0x40 + 4);
}
