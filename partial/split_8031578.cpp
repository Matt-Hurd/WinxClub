/* Five functions of split_8031578; the rest of the unit is still assembly in
 * asm/nonmatching/split_8031578/. sub_80315A2 is parked -- see notes/parked.md.
 * sub_8031578 and sub_80315CE poke `__VTABLE__14Singleton_3E9C` /
 * `__VTABLE__340dword_803EB38` and `gUnknown_03003E9C` by hand, the same
 * shape already used in partial/split_800AFD4.cpp's sub_800AFD4/sub_800B01A.
 */
#include "Singleton_3E9C.hpp"

extern "C" {

void sub_80315FC(void *a0, char *a1)
{
    Singleton_3E9C *self = (Singleton_3E9C *)a0;
    self->field_04 = a1;
}

void sub_8031600(void *a0, int idx, int a2, int a3, int a4, int a5)
{
    /* A struct-array a0->field_0c[idx] rewrite here compiles to a single
     * STMIA instead of the ROM's four separately-addressed STRs -- kept as
     * the split byte offset the ROM shows. */
    Singleton_3E9C *self = (Singleton_3E9C *)a0;
    idx <<= 4;
    *(int *)((char *)self->field_0c + idx) = a2;
    *(int *)((char *)self->field_0c + idx + 4) = a3;
    *(int *)((char *)self->field_0c + idx + 8) = a4;
    *(int *)((char *)self->field_0c + idx + 0xc) = a5;
}

void *memcpy(void *, const void *, unsigned int);
void *memset(void *, int, unsigned int);
void *GetEWRAMStart(void);
void *sub_803DA9C(unsigned int a0, void *a1, int a2, int a3);

extern int __VTABLE__14Singleton_3E9C;
extern int __VTABLE__340dword_803EB38;

void *sub_8031578(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x10);
    }
    if (a0 != 0) {
        Singleton_3E9C *self = (Singleton_3E9C *)a0;
        *(int *)a0 = (int)&__VTABLE__14Singleton_3E9C;
        gUnknown_03003E9C = self;
        *(int *)a0 = (int)&__VTABLE__340dword_803EB38;
        self->field_04 = 0;
        self->field_08 = 0;
        self->field_0c = 0;
    }
    return a0;
}

void sub_80315CE(void *a0, int a1)
{
    ((Singleton_3E9C *)a0)->field_08 = a1;
    operator delete[](((Singleton_3E9C *)a0)->field_0c);
    ((Singleton_3E9C *)a0)->field_0c = 0;
    if (a1) {
        ((Singleton_3E9C *)a0)->field_0c = (Singleton3E9CRecord *)sub_803DA9C(a1 << 4, GetEWRAMStart(), 0, 0);
    }
}

void sub_8031622(void *a0, unsigned int n)
{
    char *src = ((Singleton_3E9C *)a0)->field_04;
    unsigned int i;

    for (i = 0; i < n; i++) {
        src += ((Singleton_3E9C *)a0)->field_0c[i].field_04;
    }

    memcpy((void *)((Singleton_3E9C *)a0)->field_0c[n].field_00, src,
           ((Singleton_3E9C *)a0)->field_0c[n].field_04);
    memset((void *)((Singleton_3E9C *)a0)->field_0c[n].field_08, 0,
           ((Singleton_3E9C *)a0)->field_0c[n].field_0c);
}

}
