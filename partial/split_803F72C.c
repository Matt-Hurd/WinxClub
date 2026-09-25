/* Two of split_803F72C's three functions; sub_803F72C is parked (see
 * notes/parked.md) and stays assembly in asm/nonmatching/split_803F72C/, as
 * does sub_803F898, which was never in scope here.
 */

extern void sub_803F8BC(void *a0, void *out);

void sub_803F774(void *a0, unsigned char *a1, unsigned char *a2)
{
    struct { unsigned short x, y; } pos;
    short accumY;
    short accumX;

    accumY = *(short *)((char *)a0 + 0x1a);
    accumX = *(short *)((char *)a0 + 0x18);

    *a1 = 0;
    *a2 = 0;

    goto testA;
nextA:
    sub_803F8BC((*(void ***)((char *)a0 + 0x54))[*a2 * *((unsigned char *)a0 + 0x6f)], &pos);
    accumY = pos.y + accumY;
    (*a2)++;
testA:
    if (*a2 < *((unsigned char *)a0 + 0x6e) && accumY < 0xa0)
        goto nextA;

    goto testB;
nextB:
    sub_803F8BC((*(void ***)((char *)a0 + 0x54))[*a1], &pos);
    accumX = pos.x + accumX;
    (*a1)++;
testB:
    if (*a1 < *((unsigned char *)a0 + 0x6f) && accumX < 0xf0)
        goto nextB;

    if (*a1 == 0) {
        *a2 = 0;
    }
    if (*a2 == 0) {
        *a1 = 0;
    }
}

void sub_803F814(void *a0, short *out1, short *out2, short *out3, short *out4)
{
    signed char delta;

    if (*((unsigned char *)a0 + 0x38) == 1) {
        unsigned char flags = *((unsigned char *)a0 + 0x1c);

        if (flags & 4) {
            delta = (*(unsigned short *)((char *)a0 + 0x20)
                     - *(unsigned short *)(*(char **)((char *)a0 + 0x14) + 4)) / 2;
        } else if (flags & 2) {
            delta = *(unsigned short *)((char *)a0 + 0x20)
                    - *(unsigned short *)(*(char **)((char *)a0 + 0x14) + 4);
        } else {
            delta = 0;
        }

        if (out1)
            *out1 = *(unsigned short *)((char *)a0 + 0x18) + delta;
        if (out2)
            *out2 = *(unsigned short *)((char *)a0 + 0x18)
                    + *(unsigned short *)(*(char **)((char *)a0 + 0x14) + 4) + delta;
    } else {
        if (out1)
            *out1 = *(unsigned short *)((char *)a0 + 0x18);
        if (out2)
            *out2 = *(unsigned short *)((char *)a0 + 0x18)
                    + *(unsigned short *)((char *)a0 + 0x20);
    }

    if (out3)
        *out3 = *(unsigned short *)((char *)a0 + 0x1a);
    if (out4)
        *out4 = *(unsigned short *)((char *)a0 + 0x1a)
                + *(unsigned short *)((char *)a0 + 0x1e);
}
