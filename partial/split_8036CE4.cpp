/* One function of split_8036CE4; the rest of the unit is still assembly in
 * asm/nonmatching/split_8036CE4/.
 */

extern "C" void sub_803F2CC(void *a0, int a1);
extern "C" void *GetEWRAMStart(void);
extern "C" void *sub_803DA80(void *a0, void *a1, void *a2, void *a3);
extern "C" void *memset(void *, int, unsigned int);

extern "C" void sub_8036E04(void *a0)
{
    sub_803F2CC(*(void **)((char *)a0 + 0x2c), 0);
    *(int *)((char *)a0 + 0x9c) = 1;

    int *p = (int *)sub_803DA80((void *)0x1c, GetEWRAMStart(), 0, 0);
    if (p != 0) {
        memset(p, 0, 0x1c);
    }

    unsigned short *h = (unsigned short *)p;
    h[0] = 0;
    h[1] = 0;
    h[2] = 0;
    h[3] = 0;
    h[4] = 0;
    h[5] = 0;
    h[6] = 0;
    h[7] = 0;
    h[8] = 0;
    h[9] = 0;
    *((unsigned char *)p + 0x14) = 3;
    *(void **)((char *)p + 0x18) = *(void **)((char *)a0 + 0x28);
    *(void **)((char *)a0 + 0x28) = p;
}

extern "C" void sub_8036E5E(void *a0)
{
    *(int *)((char *)a0 + 0x9c) = 0x21;
}

extern "C" void sub_8036E02(void *a0)
{
}
