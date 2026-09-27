/* Five functions of split_8031578; the rest of the unit is still assembly in
 * asm/nonmatching/split_8031578/. sub_80315A2 is parked -- see notes/parked.md.
 * sub_8031578 and sub_80315CE poke `__VTABLE__14Singleton_3E9C` /
 * `__VTABLE__340dword_803EB38` and `gUnknown_03003E9C` by hand, the same
 * shape already used in partial/split_800AFD4.cpp's sub_800AFD4/sub_800B01A.
 */
extern "C" {

void sub_80315FC(void *a0, int a1)
{
    *(int *)((char *)a0 + 4) = a1;
}

void sub_8031600(void *a0, int idx, int a2, int a3, int a4, int a5)
{
    idx <<= 4;
    *(int *)((char *)*(int **)((char *)a0 + 0xc) + idx) = a2;
    *(int *)((char *)*(int **)((char *)a0 + 0xc) + idx + 4) = a3;
    *(int *)((char *)*(int **)((char *)a0 + 0xc) + idx + 8) = a4;
    *(int *)((char *)*(int **)((char *)a0 + 0xc) + idx + 0xc) = a5;
}

void *memcpy(void *, const void *, unsigned int);
void *memset(void *, int, unsigned int);
void *GetEWRAMStart(void);
void *sub_803DA9C(unsigned int a0, void *a1, int a2, int a3);

extern int __VTABLE__14Singleton_3E9C;
extern int __VTABLE__340dword_803EB38;
extern void *gUnknown_03003E9C;

void *sub_8031578(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x10);
    }
    if (a0 != 0) {
        *(int *)a0 = (int)&__VTABLE__14Singleton_3E9C;
        gUnknown_03003E9C = a0;
        *(int *)a0 = (int)&__VTABLE__340dword_803EB38;
        *(int *)((char *)a0 + 4) = 0;
        *(int *)((char *)a0 + 8) = 0;
        *(int *)((char *)a0 + 0xc) = 0;
    }
    return a0;
}

void sub_80315CE(void *a0, int a1)
{
    *(int *)((char *)a0 + 8) = a1;
    operator delete[](*(void **)((char *)a0 + 0xc));
    *(void **)((char *)a0 + 0xc) = 0;
    if (a1) {
        *(void **)((char *)a0 + 0xc) = sub_803DA9C(a1 << 4, GetEWRAMStart(), 0, 0);
    }
}

void sub_8031622(void *a0, unsigned int n)
{
    char *src = *(char **)((char *)a0 + 4);
    unsigned int i;

    for (i = 0; i < n; i++) {
        src += (*(int **)((char *)a0 + 0xc))[i * 4 + 1];
    }

    memcpy((void *)(*(int **)((char *)a0 + 0xc))[n * 4], src,
           (*(int **)((char *)a0 + 0xc))[n * 4 + 1]);
    memset((void *)(*(int **)((char *)a0 + 0xc))[n * 4 + 2], 0,
           (*(int **)((char *)a0 + 0xc))[n * 4 + 3]);
}

}
