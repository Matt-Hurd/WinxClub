/* One function of split_8014DD4; the rest of the unit is still assembly in
 * asm/nonmatching/split_8014DD4/.
 */

extern void sub_803F55C(void *a0);
extern void sub_803F5FC(void *a0, int a1, int a2, int a3);
extern void sub_8013F6C(void *a0);

void sub_8014E04(void *a0)
{
    sub_803F55C(a0);

    if (*(int *)((char *)a0 + 0x54) != 0) {
        sub_803F5FC(a0, *(int *)((char *)a0 + 0x54),
                        *(int *)((char *)a0 + 0x58),
                        *(int *)((char *)a0 + 0x5c));
    }

    if (*(int *)((char *)a0 + 0x60) != 0) {
        sub_803F5FC(a0, *(int *)((char *)a0 + 0x60),
                        *(int *)((char *)a0 + 0x64),
                        *(int *)((char *)a0 + 0x68));
    }

    *(int *)((char *)a0 + 0x54) = 0;
    *(int *)((char *)a0 + 0x60) = 0;
    *((char *)a0 + 0x6e) = 0;
    *((char *)a0 + 0x6f) = 0;

    sub_8013F6C(a0);
}
