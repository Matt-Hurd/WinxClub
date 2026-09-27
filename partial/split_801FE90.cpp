/* Four functions of split_801FE90; the rest of the unit is still assembly in
 * asm/nonmatching/split_801FE90/ -- including sub_8020B50, sub_801FE90 and
 * sub_8020AB6, all parked (see notes/parked.md). cpp_evidence.py: C++ likely
 * (mangled name only, m04/m08/m0C/m10__7DefaultFv). None of these are
 * vtable slots themselves (no vtable references sub_80200A4/sub_8020A74/
 * sub_8020B60/sub_801FEFE), so they stay plain functions; m08__7DefaultFv is
 * declared locally with the raw two-argument signature this call site
 * actually uses, not Default.hpp's simplified `void m08()` stub.
 *
 * sub_801FEFE allocates a 0x1c-byte node from EWRAM the same way
 * sub_801DA46 in partial/split_801D9B0.c does -- same
 * memset-inlines-to-MOV+STMIA shape, same four-halfword-pair copy loop --
 * pushed onto an array of list heads at a0 + idx*4 + 0x150 instead of a
 * single head at a fixed offset.
 */

extern "C" int m08__7DefaultFv(void *a0, void *a1);
extern "C" void sub_802E3C6(void *a0);
extern "C" void *GetEWRAMStart(void);
extern "C" void *sub_803DA80(unsigned int size, void *heap, int a2, int a3);
extern "C" void *memset(void *, int, unsigned int);

extern "C" void sub_801FEFE(void *a0, void *a1)
{
    void *tmpl = *(void **)a1;
    int *buf = (int *)sub_803DA80(0x1c, GetEWRAMStart(), 0, 0);
    unsigned char i;

    if (buf != 0) {
        memset(buf, 0, 0x1c);
    }
    for (i = 0; i < 4; i++) {
        *(unsigned short *)((char *)buf + i * 2) =
            *(unsigned short *)((char *)tmpl + i * 2 + 6);
        *(unsigned short *)((char *)buf + i * 2 + 8) =
            *(unsigned short *)((char *)tmpl + i * 2 + 0xe);
    }
    *(unsigned short *)((char *)buf + 0x10) = *(unsigned short *)((char *)tmpl + 0x16);
    *(unsigned char *)((char *)buf + 0x14) = 2;

    *(void **)((char *)buf + 0x18) =
        *(void **)((char *)a0 + *(unsigned short *)((char *)tmpl + 4) * 4 + 0x150);
    *(void **)((char *)a0 + *(unsigned short *)((char *)tmpl + 4) * 4 + 0x150) = buf;
}

extern "C" int sub_80200A4(void *a0, void *a1)
{
    unsigned char type = *(unsigned char *)(*(void **)a1);

    switch (type) {
    case 0x1c:
        return !(*(int *)((char *)a0 + 0x78) != 0 &&
                 *(void **)((char *)a0 + 0x128) == a1);
    case 0x21:
    case 0x25:
    case 0x2d:
        return 1;
    default:
        return m08__7DefaultFv(a0, a1);
    }
}

extern "C" void sub_8020A74(void *a0)
{
    char *sub = (char *)a0 + 0xa0;

    if (*(int *)(sub + 4) != 0) {
        sub_802E3C6(sub);
        char *vt1 = *(char **)sub;
        void (*fn1)(void *) = (void (*)(void *))(vt1 + *(int *)(vt1 + 0x10));
        fn1(sub);
    }

    char *vt2 = *(char **)sub;
    void (*fn2)(void *, void *, int, int) =
        (void (*)(void *, void *, int, int))(vt2 + *(int *)(vt2 + 4));
    fn2(sub, a0, 4, -1);

    *(short *)((char *)a0 + 0x142) = 0;
}

extern "C" int sub_8020B60(void *a0)
{
    unsigned int v = *(unsigned int *)*(unsigned int *)((char *)a0 + 0x2c);
    return 1 - ((v >> 9) & 1);
}
