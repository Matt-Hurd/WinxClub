/* One function of split_803F07C; the rest of the unit is still assembly in
 * asm/nonmatching/split_803F07C/.
 */

void sub_803F07C(void *a0, void *a1, unsigned int a2)
{
    unsigned int w;

    *(void **)((char *)a0 + 4) = a1;
    if (a1 != 0) {
        void *next = *(void **)a1;
        *(void **)a0 = next;
        *(void **)a1 = a0;
        next = *(void **)a0;
        if (next != 0)
            *(void **)((char *)next + 4) = a0;
    } else {
        *(void **)a0 = 0;
    }

    w = *(unsigned int *)((char *)a0 + 8);
    w = (unsigned char)w | (a2 << 8);
    w = (w >> 8) << 8;
    *(unsigned int *)((char *)a0 + 8) = w;
}
