/* Four functions of split_80017E4; the rest of the unit is still assembly in
 * asm/nonmatching/split_80017E4/.
 */

int sub_80017E4(void *a0, int a1, int a2, int a3)
{
    int r0 = 0;

    switch (a1) {
    case 1:
        r0 = 0x10;
        break;
    case 3:
        r0 = 0xc;
        break;
    case 5:
        r0 = 9;
        break;
    case 7:
        r0 = 8;
        break;
    }

    switch (a3) {
    case 0xa:
        r0 = r0 * 2;
        break;
    case 2:
        r0 = r0 * 3;
        break;
    }

    return r0 * a2;
}

/* Same field layout as sub_80017E4, unpacked from a packed word instead of
 * taking type/size/variant already split out: bits[3:0] type, bits[7:4]
 * variant, bits[18:8] size. Written as a bitfield struct it forces an extra
 * register (`v` no longer aliases the loaded word once it is named `p.type`),
 * so it stays plain shifts, matching the ROM's `lsl`/`lsr` mask pairs -- Thumb
 * has no AND-immediate, so a `& mask` on a compile-time width becomes a
 * shift-left/shift-right pair either way. */
int sub_8001818(void *a0, int *a1, int a2)
{
    int v = *a1;
    int type = (unsigned)(v << 28) >> 28;
    int size = (unsigned)(v << 13) >> 21;

    if (a2 == 0) {
        a2 = (unsigned)(v << 24) >> 28;
    }

    v = 0;
    switch (type) {
    case 1:
        v = 0x10;
        break;
    case 3:
        v = 0xc;
        break;
    case 5:
        v = 9;
        break;
    case 7:
        v = 8;
        break;
    }

    switch (a2) {
    case 0xa:
        v = v * 2;
        break;
    case 2:
        v = v * 3;
        break;
    }

    return size * v;
}

void nullsub_22(void)
{
}

void sub_8001A10(void *a0, int a1)
{
    unsigned int *p = (unsigned int *)((char *)a0 + 0x19c0);
    unsigned int old = p[10];

    old &= ~(1 << 0x14);
    p[10] = (a1 << 0x14) | old;
}
