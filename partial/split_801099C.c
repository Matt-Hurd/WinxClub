/* Two functions of split_801099C; the rest of the unit is still assembly in
 * asm/nonmatching/split_801099C/, including sub_8010AB4, parked (see
 * notes/parked.md). sub_8010B6C's division reaches __16__rt_sdiv
 * (notes/quirks/a-thumb-bl-to-__rt_memclr_w-lands-on-__16__rt_memclr_w.md).
 */

int sub_80109EC(void *a0)
{
    unsigned int idx;
    char *entry;
    unsigned int val;

    idx = *(unsigned char *)((char *)a0 + 0x54);
    entry = (char *)a0 + idx * 12 + 0x640;
    val = *(unsigned int *)(entry + 0x10);
    return (val >> 16) - *(unsigned int *)((char *)a0 + 0x60) - 1;
}

int sub_8010B6C(void *a0)
{
    return (*(int *)((char *)a0 + 0x64) - *(int *)((char *)a0 + 0x68)) * 1000
        / (int)((*(unsigned int *)((char *)a0 + 0xc) >> 4) & 0xff);
}
