/* Six functions of split_8010234, the whole unit. sub_80103A8 is slot +0x14
 * of the class labelled dword_803EC98; the empty body is the bare `bx lr`
 * the ROM has.
 *
 * sub_8010278 is dword_803EC98's ctor, same shape as GenericObject__ctor in
 * partial/split_8026014.cpp: not a vtable slot (no hex offset in the
 * working label), so it stays a free function. sub_8010234 is the
 * matching allocate-if-null Create, same shape as
 * partial/split_8000324.cpp's sub_80004CA -- `operator new(0xac)` compiles
 * to `__nw__FUi`. Its own trailing call reads a table indexed by a global
 * byte (`gUnknown_0804AE44[gUnknown_030031EC]`); the `void *e98 = ...`
 * local before the call, and no local at all for the index, is what gets
 * tcc to load the two pool addresses of the call's own arguments in the
 * same order and registers the ROM does -- see
 * notes/quirks/tcc-loads-a-calls-argument-pool-words-in-source-order.md.
 *
 * sub_801029A, sub_80102D8 and sub_8010344 all read *gUnknown_03003E7C /
 * *gUnknown_03003E80's own vtable slots and call through them
 * (`__call_via_rN`); writing the global directly at each use, never behind
 * a named local, keeps its address in the same register the ROM does
 * (assigning it to a local persists the local's *value* in one register
 * across the whole function instead, which is not what happens here). The
 * one call through *this*'s own vtable in each of sub_80102D8/sub_8010344
 * needs the opposite: a `void *obj = a0;` immediately before it, or the
 * `this` argument ends up loaded after the vtable computation instead of
 * before it.
 */
#include "dword_803EC98.hpp"

extern "C" void sub_80105AE(void *a0, int a1);
extern "C" void sub_801053C(void *a0);
extern "C" void sub_803DA18(void *a0);
extern "C" void sub_8004670(void *a0, int a1);
extern "C" void *sub_80049B4(void *a0);
extern "C" void sub_80081A8(void);
extern "C" void sub_8011040(void *a0, unsigned char a1, unsigned char a2);
extern "C" int sub_801115C(void *a0);
extern "C" void sub_8010B3E(void *a0, int a1);
extern "C" int __VTABLE__352dword_803EC98;
extern "C" signed char gUnknown_030031EC;
extern "C" void *gUnknown_03003E98;
extern "C" int gUnknown_0804AE44[];
extern "C" void *gUnknown_03003E80;
extern "C" void *gUnknown_03003E7C;

void dword_803EC98::m14()
{
}

extern "C" void sub_8010278(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__352dword_803EC98;
    sub_80105AE(a0, 0);
    if (a1)
        sub_803DA18(a0);
}

extern "C" void *sub_8010234(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x1730);
        if (a0 == 0)
            return a0;
    }
    sub_801053C(a0);
    *(void **)a0 = &__VTABLE__352dword_803EC98;
    *(unsigned char *)((char *)a0 + 0x1720 + 0xc) = 0;
    void *e98 = gUnknown_03003E98;
    sub_8004670(e98, gUnknown_0804AE44[gUnknown_030031EC]);
    return a0;
}

extern "C" void sub_801029A(void *a0)
{
    (void)sub_80049B4(gUnknown_03003E80);

    int v = *(int *)((char *)a0 + 0x1720);
    if (v & 1)
        return;

    v = (unsigned int)v >> 0x10;
    void *cur = gUnknown_03003E80;
    int lo = 0;
    if ((*(int *)((char *)cur + 0x14) & 8) == 0)
        lo = *(unsigned short *)((char *)cur + 6);

    if (((unsigned short)lo & v) != 0)
        *((unsigned char *)a0 + 0x1720 + 0xc) = 1;
}

extern "C" void sub_80102D8(void *a0)
{
    if (gUnknown_03003E7C != 0) {
        char *vt = *(char **)gUnknown_03003E7C;
        void (*fn)(void *) = (void (*)(void *))(vt + *(int *)(vt + 8));
        fn(gUnknown_03003E7C);
    }

    if (*((unsigned char *)a0 + 0x54) != 0xb) {
        void *obj = a0;
        char *vt = *(char **)obj;
        void (*fn)(void *) = (void (*)(void *))(vt + *(int *)(vt + 8));
        fn(obj);
    }

    sub_80081A8();
    unsigned char *p = (unsigned char *)a0 + 0x1720;
    sub_8011040(a0, p[4], p[5]);

    if (gUnknown_03003E7C != 0) {
        char *vt = *(char **)gUnknown_03003E7C;
        int (*fn)(void *) = (int (*)(void *))(vt + *(int *)(vt + 0x14));
        if (fn(gUnknown_03003E7C) != 0) {
            void *n = *(void **)((char *)a0 + 0x64);
            char *vt2 = *(char **)gUnknown_03003E7C;
            void (*fn2)(void *, void *) = (void (*)(void *, void *))(vt2 + *(int *)(vt2 + 0xc));
            fn2(gUnknown_03003E7C, n);
        }
    }

    sub_801115C(a0);
}

extern "C" int sub_8010344(void *a0)
{
    if (gUnknown_03003E7C != 0) {
        char *vt = *(char **)gUnknown_03003E7C;
        void (*fn)(void *) = (void (*)(void *))(vt + *(int *)(vt + 0x24));
        fn(gUnknown_03003E7C);
    }

    {
        void *obj = a0;
        char *vt = *(char **)obj;
        void (*fn2)(void *) = (void (*)(void *))(vt + *(int *)(vt + 8));
        fn2(obj);
    }

    sub_8010B3E(a0, 1);

    if (gUnknown_03003E7C != 0) {
        char *vt2 = *(char **)gUnknown_03003E7C;
        void (*fn3)(void *) = (void (*)(void *))(vt2 + *(int *)(vt2 + 0x28));
        fn3(gUnknown_03003E7C);
    }

    unsigned char *p = (unsigned char *)a0 + 0x1720;
    if (p[0xc] == 1) {
        return 1;
    }
    p[0xc] = 0;
    return sub_801115C(a0) != 0 ? 0 : 1;
}
