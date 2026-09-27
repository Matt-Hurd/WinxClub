/* Four functions of split_801099C; the rest of the unit is still assembly in
 * asm/nonmatching/split_801099C/, including sub_8010AB4 and sub_8010A0A,
 * both parked (see notes/parked.md). sub_8010B6C's division reaches
 * __16__rt_sdiv
 * (notes/quirks/a-thumb-bl-to-__rt_memclr_w-lands-on-__16__rt_memclr_w.md).
 */

extern void *gUnknown_03003E84;
extern void *sub_800529A(void *a0, void *a1, int a2, void *a3);

int sub_80109DE(void *a0)
{
    return (unsigned short)(*(int *)((char *)a0 + 0x10)) - *(int *)((char *)a0 + 0x5c) - 1;
}

int sub_801099C(void *a0, unsigned int a1)
{
    void *cur;
    void *next;
    void *g;
    unsigned int w0, w4;
    unsigned int i;
    int sum;

    sum = 0;
    cur = *(void **)((char *)a0 + 4);
    for (i = 0; i < a1; i++) {
        g = sub_800529A(gUnknown_03003E84, cur, 8, 0);
        w0 = *(unsigned int *)g;
        w4 = *(unsigned int *)((char *)g + 4);
        sum += w0 >> 16;
        next = (char *)cur + 8;
        next = (char *)next + ((w4 << 19) >> 17);
        cur = (char *)next + ((w4 >> 13) << 2);
    }
    return sum;
}

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

void sub_8010B3E(void *a0, int a1)
{
    int prod;

    prod = *(int *)((char *)a0 + 0x58) * a1;
    *(int *)((char *)a0 + 0x7c) = (*(int *)((char *)a0 + 0x7c) + prod) & *(int *)((char *)a0 + 0x80);
    *(int *)((char *)a0 + 0x6fc) += prod;
    *(int *)((char *)a0 + 0x60) -= a1;
    *(int *)((char *)a0 + 0x64) += a1;
}
