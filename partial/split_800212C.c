/* One function of split_800212C; the rest of the unit is still assembly in
 * asm/nonmatching/split_800212C/. Indexes the same fixed-offset table at
 * 0x980 of a0 as partial/split_8002004.c's sub_8002004 -- straight pointer
 * arithmetic, no named struct exists for it yet.
 */

extern void sub_800DEF8(void *a0, int *a1, int a2);

void sub_80023BA(void *a0, int *a1)
{
    int *p = (int *)((char *)*(void **)((char *)a0 + 0x980 + 0x20) + 0x38);
    int dx = a1[0] - p[0];
    int dy = a1[1] - p[1];
    int diff[2];

    diff[0] = dx;
    diff[1] = dy;
    sub_800DEF8(a0, diff, 0);
}
