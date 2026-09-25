/* Three functions of split_801FE90; the rest of the unit is still assembly in
 * asm/nonmatching/split_801FE90/ -- including sub_8020B50, parked (see
 * notes/parked.md). cpp_evidence.py: C++ likely (mangled name only,
 * m04/m08/m0C/m10__7DefaultFv). None of these three are vtable slots
 * themselves (no vtable references sub_80200A4/sub_8020A74/sub_8020B60), so
 * they stay plain functions; m08__7DefaultFv is declared locally with the
 * raw two-argument signature this call site actually uses, not Default.hpp's
 * simplified `void m08()` stub.
 */

extern "C" int m08__7DefaultFv(void *a0, void *a1);
extern "C" void sub_802E3C6(void *a0);

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
