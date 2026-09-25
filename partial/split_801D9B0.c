/* Two functions of split_801D9B0; the rest of the unit is still assembly in
 * asm/nonmatching/split_801D9B0/.
 */

extern unsigned short sub_803F6B4(void *a0);
extern void sub_80007A0(void *a0, int a1, int a2);
extern void sub_803FC14(void *a0);
extern void sub_8000914(void *a0);

void sub_801DAA0(void *a0, void *a1)
{
    void *src = *(void **)a1;
    unsigned short mode = *(unsigned short *)((char *)src + 4);
    unsigned char i;

    if (mode != 0) {
        if (mode != 1)
            return;
        i = 0;
        goto mode1;
    }

    i = 0;
    do {
        *(unsigned short *)((char *)a0 + i * 2 + 8) =
            *(unsigned short *)((char *)src + i * 2 + 6);
        if (*(unsigned short *)((char *)a0 + i * 2 + 0x18) == 0) {
            *(unsigned short *)((char *)a0 + i * 2 + 0x18) =
                *(unsigned short *)((char *)src + i * 2 + 6);
        }
        i++;
    } while (i < 4);
    return;

mode1:
    do {
        *(unsigned short *)((char *)a0 + i * 2 + 0x18) =
            *(unsigned short *)((char *)src + i * 2 + 6);
        i++;
    } while (i < 4);
}

void sub_801DAEC(void *a0, void *a1)
{
    void *src = *(void **)a1;
    unsigned short count = *(unsigned short *)((char *)src + 6);
    void *p = *(void **)((char *)a0 + 0x2c);
    unsigned int flag;

    if (count == 0)
        goto body;
    flag = (*(unsigned int *)p << 0x15) >> 0x1f;
    if (flag != 0)
        return;

body:
    *(unsigned short *)((char *)a0 + 0x18) =
        *(unsigned short *)((char *)src + 4);
    *(unsigned short *)((char *)a0 + 0x1a) =
        *(unsigned short *)((char *)src + 4);
    *(unsigned short *)((char *)a0 + 0x1c) =
        *(unsigned short *)((char *)src + 4);
    *(unsigned short *)((char *)a0 + 0x1e) =
        *(unsigned short *)((char *)src + 4);

    if (sub_803F6B4(p) != *(unsigned short *)((char *)src + 4)) {
        sub_80007A0(*(void **)((char *)a0 + 0x2c),
                    *(unsigned short *)((char *)src + 4), 0);
    }

    flag = (*(unsigned int *)(*(void **)((char *)a0 + 0x2c)) << 0x15) >> 0x1f;
    if (flag != 0)
        return;

    sub_803FC14(*(void **)((char *)a0 + 0x2c));
    sub_8000914(*(void **)((char *)a0 + 0x2c));
}
