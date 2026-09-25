/* Two functions of split_800F4F0; the rest of the unit is still assembly in
 * asm/nonmatching/split_800F4F0/.
 */

extern void sub_800F220(void *a0);

void sub_800F4F0(void *a0)
{
    void *ptr;

    ptr = *(void **)((char *)a0 + 0x70);
    *(unsigned int *)((char *)ptr + 0x8c) = 0;

    ptr = *(void **)((char *)a0 + 0x70);
    *(unsigned int *)((char *)ptr + 0x90) = *(unsigned int *)((char *)ptr + 0x94);

    ptr = *(void **)((char *)a0 + 0x70);
    sub_800F220(ptr);

    ptr = *(void **)((char *)a0 + 0x70);
    {
        char *region = (char *)ptr + 0x1c;
        *(unsigned int *)(region + 0x14) = 0;
        *(unsigned int *)(region + 0) = 0;
        *(unsigned int *)(region + 8) = 0;
        *(unsigned int *)(region + 0x10) = 0;
        *(unsigned int *)(region + 4) = 0;
        *(unsigned int *)(region + 0xc) = 0;
    }

    ptr = *(void **)((char *)a0 + 0x70);
    *(unsigned int *)((char *)a0 + 0x74) = *(unsigned int *)((char *)ptr + 0x88);
}

/* v>>10 & 0xffff and v>>6 & 0xf are the offset-split shapes of the ROM's
 * lsl/lsr pairs; the shared `return 0` for both tests is a short-circuit &&,
 * see a-boolean-and-shares-one-exit-for-both-tests.md. */
int sub_800F700(void *a0)
{
    return ((*(unsigned int *)((char *)a0 + 0x18) >> 10) & 0xffff) != 0
        && ((*(unsigned int *)((char *)a0 + 0x18) >> 6) & 0xf) != 0;
}
