/* Three functions of split_8014DD4; the rest of the unit is still assembly in
 * asm/nonmatching/split_8014DD4/. sub_8014E46 is parked -- see notes/parked.md.
 */

extern void sub_803F55C(void *a0);
extern void sub_803F5FC(void *a0, int a1, int a2, int a3);
extern void sub_8013F6C(void *a0);
extern void sub_80401E4(void *a0, int a1);
extern unsigned char gUnknown_030031EE[0x10];
extern unsigned short gUnknown_030031FE[0x10][4];

void sub_8014DD4(void)
{
    unsigned char i, j;

    for (i = 0; i < 0x10; i++) {
        gUnknown_030031EE[i] = 0xff;
        for (j = 0; j < 4; j++) {
            gUnknown_030031FE[i][j] = 0xffff;
        }
    }
}

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

void sub_8014E76(void *a0, int a1)
{
    int i;

    for (i = 0; i < *((unsigned char *)a0 + 0x6e) * *((unsigned char *)a0 + 0x6f); i++) {
        sub_80401E4((*(void ***)((char *)a0 + 0x54))[i], a1);
    }
}
