/* a0's field_8/field_c and the a0+a1*0x58+0x880 slot are the same layout the
 * unit's other functions already index (field_8->field_10 is a 20-byte
 * element base, field_c is a byte lookup table); no named struct exists for
 * it yet, so this is raw offset arithmetic like partial/split_8002004.c.
 *
 * sub_80024D8 and sub_800242C are parked, see notes/parked.md.
 */

void *sub_80024C6(void *a0, unsigned char a1)
{
    void *base = *(void **)((char *)*(void **)((char *)a0 + 8) + 0x10);
    unsigned char idx = *((unsigned char *)*(void **)((char *)a0 + 0xc) + a1);
    unsigned offset = idx * 20;

    return (char *)base + offset;
}

void sub_8002548(void *a0, int a1, int a2, unsigned char a3)
{
    void *slot = (char *)a0 + a1 * 0x58 + 0x880;
    void *base = *(void **)((char *)*(void **)((char *)a0 + 8) + 0x10);
    unsigned char idx = *((unsigned char *)*(void **)((char *)a0 + 0xc) + a3);
    unsigned offset = idx * 20;
    void *elem = *(void **)((char *)slot + 0x10);
    void **arr = *(void **)((char *)elem + 0x20);

    arr[a2] = (char *)base + offset;
}
