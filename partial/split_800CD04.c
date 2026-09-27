/* All three functions of split_800CD04. No IMPORTs in the unit's header, so
 * nothing to declare locally beyond the pool-backed literals the splicer
 * places.
 */

void sub_800CD04(void *a0, unsigned int *a1, unsigned int a2)
{
    *(unsigned short *)((char *)a0 + a2 * 2 + 0x3a0) = 0xfff;
    *a1 = (*a1 & ~0x1f00) | ((a2 & 0x1f) << 8);
}

void sub_800CD28(void *a0, void *a1)
{
    unsigned int val = *(unsigned int *)(*(char **)((char *)a1 + 0x14));
    unsigned int index = (val >> 13) & 0xff;
    unsigned short *p = (unsigned short *)((char *)a0 + index * 10 + 0x1318);

    *p = (*p & ~0x300) | 0x200;
    *(unsigned int *)((char *)a0 + 0x1818) = 1;
}

void sub_800CD58(void *a0, void *a1)
{
    unsigned int flag = (*(unsigned short *)((char *)a1 + 0x26) >> 8) & 3;
    unsigned int val = *(unsigned int *)(*(char **)((char *)a1 + 0x14));
    unsigned int index = (val >> 13) & 0xff;
    unsigned short *p = (unsigned short *)((char *)a0 + index * 10 + 0x1318);

    *p = (*p & ~0x300) | (flag << 8);
    *(unsigned int *)((char *)a0 + 0x1818) = 1;
}
