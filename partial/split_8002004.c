/* Three of the unit's four candidates; sub_8002010 is parked, see
 * notes/parked.md. The rest of the unit is still assembly in
 * asm/nonmatching/split_8002004/. All these index into the same fixed-offset
 * table at 0x980/0x9C0 of a0 -- straight pointer arithmetic, no named struct
 * exists for it yet.
 */

void *sub_8002004(void *a0)
{
    return (char *)*(void **)((char *)a0 + 0x980 + 0x20) + 0x38;
}

void sub_8002020(void *a0, unsigned int a1)
{
    *(unsigned int *)((char *)a0 + 0x9C0 + 0x18) = a1;
}

int sub_80020F8(void *a0, int a1, int a2)
{
    char *elem;
    int diff;

    elem = (char *)*(void **)((char *)a0 + a1 * 0x58 + 0x840 + 0x30) + a2 * 24;
    diff = *(int *)(elem + 0xc) - *(int *)(elem + 0x14);
    return (diff >> 1) / *(unsigned short *)(elem + 2);
}
