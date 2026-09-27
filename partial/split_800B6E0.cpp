/* Nineteen functions of split_800B6E0: several are two-line trampolines into
 * split_8011A80, sub_800B714/sub_800B740 turn a raw flag value into a bool,
 * sub_800B790 guards a call behind a flag test, and sub_800B7D2/sub_800B7C2
 * are a getter/setter pair for the same bit-4 flag. sub_800B8A4/sub_800B7DC
 * are Singleton_3EA0's placement-ctor and heap-ctor: the vtable is set twice,
 * once to the "341dword" base while its own ctor (sub_8000CCE) runs, then
 * again to Singleton_3EA0's own vtable, same shape as split_800B464.cpp's
 * sub_800B554/sub_800B4F0 for gUnknown_03003E94. sub_800B8CE/sub_800B94A are
 * plain field pokes and a CpuSet/DMA3 fill choice (split_8000210.c's
 * sub_80002E2 has the same DMA3-through-one-pointer idiom). The rest of the
 * unit is still assembly in asm/nonmatching/split_800B6E0/.
 */
extern "C" {

void sub_8011DB2(void);
void sub_8011E52(int a1);
void sub_8011F0E(void);
int sub_8011E22(void);
int sub_8011E3C(void);
int sub_8011B28(int a0);
void sub_8012126(int a0, int a1, int a2);
void sub_8011DE4(int a0);
void sub_8012180(int a0);
void sub_80120FA(int a0, int a1);
int sub_8011E10(void);
int sub_80121C4(int a0);

void sub_800B6E0(void)
{
    sub_8011DB2();
}

void sub_800B6EC(int a0, int a1)
{
    sub_8011E52(a1);
}

void sub_800B708(void)
{
    sub_8011F0E();
}

int sub_800B714(void)
{
    return sub_8011E22() != 0;
}

void sub_800B6FA(int a0, int a1)
{
    sub_8011DE4(a1);
}

int sub_800B740(void)
{
    return sub_8011E3C() != 0;
}

void sub_800B756(void)
{
    sub_8011B28(5);
}

int sub_800B764(void)
{
    return sub_8011B28(3);
}

void sub_800B772(int a0, int a1, int a2)
{
    sub_80120FA(a1, a2);
}

void sub_800B782(int a0, int a1)
{
    sub_8012180(a1);
}

void sub_800B790(void *a0, int a1, int a2, int a3)
{
    if (!(*(unsigned int *)((char *)a0 + 8) & 0x10))
        sub_8012126(a1, a2, a3);
}

int sub_800B72A(void)
{
    return sub_8011E10() != 0;
}

int sub_800B7AA(int a0, int a1)
{
    return sub_80121C4(a1) != 0;
}

int sub_800B7D2(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 8) << 27) >> 31;
}

void sub_800B7C2(void *a0, int a1)
{
    unsigned int old = *(unsigned int *)((char *)a0 + 8) & ~0x10;
    *(unsigned int *)((char *)a0 + 8) = old | ((unsigned int)(a1 << 31) >> 27);
}

}

extern "C" int __VTABLE__341dword_803EB3C;
extern "C" int __VTABLE__14Singleton_3EA0;
extern "C" void *gUnknown_03003EA0;
extern "C" void sub_8000CCE(int *a0);
extern "C" void *sub_803DA18(void *a0);

extern "C" void sub_800B8A4(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__341dword_803EB3C;
    sub_8000CCE((int *)a0);
    *(int *)a0 = (int)&__VTABLE__14Singleton_3EA0;
    gUnknown_03003EA0 = 0;
    if (a1)
        sub_803DA18(a0);
}

extern "C" void sub_800B8CE(void *a0)
{
    *(void **)((char *)a0 + 0x1310) = (char *)a0 + 0xbd0;
    *(void **)((char *)a0 + 0x1314) = (char *)a0 + 0xc50;

    if (*(unsigned char *)((char *)a0 + 0x19ad) != 0) {
        char *p = (char *)a0 + 0x1824;
        unsigned int n = 0x1f;

        do {
            *(unsigned char *)(p + 0xb) = 0;
            p += 0xc;
        } while (n--);
    }

    *(int *)((char *)a0 + 0x1818) = 0;
    *(int *)((char *)a0 + 0x19a4) = 0;
}

extern "C" void *memset(void *, int, unsigned int);

extern "C" void *sub_800B7DC(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x19b0);
        if (a0 == 0)
            return a0;
    }

    *(int *)a0 = (int)&__VTABLE__14Singleton_3EA0;
    gUnknown_03003EA0 = a0;
    *(int *)a0 = (int)&__VTABLE__341dword_803EB3C;

    *(int *)((char *)a0 + 0x40) = 0;
    *(int *)((char *)a0 + 0x44) = 0;
    *(int *)((char *)a0 + 0x48) = 0;
    *(int *)((char *)a0 + 0x4c) = 0;
    *(int *)((char *)a0 + 0x50) = 0;
    *(int *)((char *)a0 + 0x54) = 0;
    *(int *)((char *)a0 + 0x58) = 0;
    *(int *)((char *)a0 + 0x5c) = 0;
    *(int *)((char *)a0 + 0x60) = 0;
    *(int *)((char *)a0 + 0x64) = 0;
    *(int *)((char *)a0 + 0x68) = 0;
    *(int *)((char *)a0 + 0x6c) = 0;

    *(unsigned short *)((char *)a0 + 0x70) = 0;
    *(unsigned short *)((char *)a0 + 0x72) = 0;
    *(unsigned short *)((char *)a0 + 0x74) = 0;
    *(unsigned short *)((char *)a0 + 0x76) = 0;

    *(unsigned int *)((char *)a0 + 0x78) = (*(unsigned int *)((char *)a0 + 0x78) >> 1) << 1;
    *(int *)((char *)a0 + 0x7c) = 0;

    *(int *)((char *)a0 + 0x1310) = 0;
    *(int *)((char *)a0 + 0x1314) = 0;

    memset((int *)a0 + (4 / 4), 0, 0x3c);
    memset((int *)a0 + (0x80 / 4), 0, 0x320);
    memset((int *)a0 + (0x3a0 / 4), 0, 0x22);
    memset((char *)a0 + 0x3c2, 0, 0x409);
    memset((int *)a0 + (0x7cc / 4), 0, 0x404);
    memset((int *)a0 + (0x1318 / 4), 0, 0x50c);
    memset((int *)a0 + (0x1824 / 4), 0, 0x18c);
    memset((int *)a0 + (0xbd0 / 4), 0, 0x80);
    memset((int *)a0 + (0xc50 / 4), 0, 0x6c0);

    return a0;
}

