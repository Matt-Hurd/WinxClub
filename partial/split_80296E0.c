/* Three functions of split_80296E0; the rest of the unit is still assembly in
 * asm/nonmatching/split_80296E0/.
 */

int sub_80296E0(void *a0)
{
    unsigned int i;

    i = (*(unsigned int *)((char *)a0 + 0x7c) >> 28) & 7;

    if (*(int *)((char *)a0 + i * 4 + 0x38) != 0)
        goto fail;
    i++;
    if (i == 5)
        i = 0;

    if (*(int *)((char *)a0 + i * 4 + 0x38) != 0)
        goto fail;
    i++;
    if (i == 5)
        i = 0;

    if (*(int *)((char *)a0 + i * 4 + 0x38) != 0)
        goto fail;
    i++;
    if (i == 5)
        i = 0;

    if (*(int *)((char *)a0 + i * 4 + 0x38) != 0)
        goto fail;

    return 1;

fail:
    return 0;
}

struct Obj7C {
    char pad_00[0x58];
    int cx;
    int cy;
    char pad_60[0x7c - 0x60];
    unsigned int : 24;
    unsigned int dir : 4;
    unsigned int : 4;
};

void sub_802AC74(struct Obj7C *a0, int *a1)
{
    int dx, dy, adx, ady;

    dx = a1[0] - a0->cx;
    dy = a1[1] - a0->cy;
    adx = (dx < 0) ? -dx : dx;
    ady = (dy < 0) ? -dy : dy;

    if (adx > ady) {
        if (dx > 0)
            a0->dir = 0;
        else
            a0->dir = 2;
    } else if (ady > adx) {
        if (dy > 0)
            a0->dir = 1;
        else
            a0->dir = 3;
    } else {
        if (dx > 0)
            a0->dir = 0;
        else
            a0->dir = 2;
    }
}

void sub_802B0A0(void)
{
}
