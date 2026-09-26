/* Twenty-five of split_8004780's twenty-seven assigned functions; the rest
 * of the unit is still assembly in asm/nonmatching/split_8004780/.
 * cpp_evidence.py proves this unit C++ (an __nw__FUi operator-new call in
 * sub_80047EC), so it is spliced as .cpp. None of these are vtable slots --
 * plain sub_ labels -- so they are unmangled `extern "C"` free functions,
 * same convention as partial/split_8008008.cpp.
 *
 * sub_8004784 and sub_8004984 (18 lines, 48 bytes) are parked --
 * register-allocation-is-the-stop-signal, see notes/parked.md -- and stay in
 * asm/nonmatching/split_8004780/{sub_8004784,sub_8004984}.s, which the
 * splicer pulls in on its own since they are not named here.
 *
 * sub_800496A and sub_8004924 store `__VTABLE__14Singleton_3E80` and
 * `__VTABLE__317dword_803E67C` by hand, the same shape as
 * partial/split_800FA40.cpp -- not a real construction of dword_803E67C
 * (its own constructor is src/dword_803E67C.cpp), so plain pointer stores.
 * gUnknown_03003E80 comes from the existing include/Singleton_3E80.hpp.
 */
#include "generated/functions.h"
#include "Singleton_3E80.hpp"

extern "C" void *memcpy(void *, const void *, unsigned int);
extern "C" void *memset(void *, int, unsigned int);
extern "C" void *sub_803D9C4(int a0, int a1, int a2, int a3);

extern "C" int __VTABLE__14Singleton_3E80;
extern "C" int __VTABLE__317dword_803E67C;

extern "C" int sub_8004780(unsigned int a0)
{
    return a0 >> 30;
}

extern "C" unsigned char sub_80047A0(void *a0, int a1)
{
    unsigned short v = *(unsigned short *)a0;
    unsigned int r;
    if (a1 != 0) {
        r = v & 0x3F;
    } else {
        r = (v >> 8) & 0x3F;
    }
    return (unsigned char)r;
}

extern "C" void *sub_80047EC(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x14);
        if (a0 == 0) {
            return a0;
        }
    }
    *(int *)((char *)a0 + 0x0) = 0;
    *(int *)((char *)a0 + 0x4) = 0;
    *(short *)((char *)a0 + 0x8) = 0;
    *(short *)((char *)a0 + 0xa) = 0;
    *(char *)((char *)a0 + 0xc) = 0;
    *(short *)((char *)a0 + 0xe) = 0;
    *(char *)((char *)a0 + 0x10) = 0;
    return a0;
}

extern "C" int sub_80048B0(void *a0)
{
    return *(unsigned short *)((char *)a0 + 8) != 0;
}

extern "C" int sub_80048F0(void *a0, void *a1)
{
    unsigned short count = *(unsigned short *)((char *)a0 + 8);
    if (count == 0) {
        return 0;
    }
    void *begin = *(void **)a0;
    void *end = *(void **)((char *)a0 + 4);
    int len = (int)((char *)end + 2 - (char *)begin) + 2;
    if (a1 != 0) {
        memcpy(a1, begin, len - 2);
        *(unsigned short *)((char *)a1 + len - 2) = *(unsigned short *)((char *)a0 + 8);
    }
    return len;
}

extern "C" void sub_8004ADC(void *a0)
{
    *(unsigned short *)((char *)a0 + 6) = 0;
    *(unsigned short *)((char *)a0 + 8) = 0;
    *(unsigned short *)((char *)a0 + 4) = 0;
}

extern "C" int sub_8004AF4(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 0x14) >> 3) & 1;
}

extern "C" void sub_8004AFC(void *a0, int a1, int a2, int a3)
{
    *(unsigned short *)((char *)a0 + 0xa) = (unsigned short)a3;
    *(unsigned short *)((char *)a0 + 0xc) = (unsigned short)a1;
}

extern "C" int sub_8004B38(void *a0)
{
    return *(unsigned int *)((char *)a0 + 0x14) & 1;
}

extern "C" int sub_8004B8C(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 0x14) >> 2) & 1;
}

extern "C" void sub_80047B6(void *a0, int a1)
{
    *(unsigned short *)((char *)a0 + 4) = (unsigned short)a1;
}

extern "C" int sub_80047BA(void *a0)
{
    return *(unsigned short *)((char *)a0 + 4);
}

extern "C" int sub_8004B76(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 0x14) >> 1) & 1;
}

extern "C" void sub_8004AE6(void *a0, int a1)
{
    *(unsigned int *)((char *)a0 + 0x14) =
        (a1 << 3) | (*(unsigned int *)((char *)a0 + 0x14) & ~8);
}

extern "C" void sub_8004B7E(void *a0, int a1)
{
    *(unsigned int *)((char *)a0 + 0x14) =
        (a1 << 2) | (*(unsigned int *)((char *)a0 + 0x14) & ~4);
}

extern "C" int sub_80047DA(void *a0, int a1)
{
    unsigned int v = *(unsigned short *)((char *)a0 + 2);
    if (a1 != 0) {
        return v & 0x1f;
    }
    return (v >> 8) & 0x1f;
}

extern "C" void sub_80047BE(void *a0, int a1, int a2)
{
    unsigned int old = *(unsigned short *)((char *)a0 + 2);
    unsigned int v = (a1 & 0x1f) | (old & ~0x1f);
    v = (v & ~0x1f00) | ((a2 & 0x1f) << 8);
    *(unsigned short *)((char *)a0 + 2) = v;
}

extern "C" void sub_8004812(void *a0)
{
    if (*(void **)a0 != 0 && *(unsigned char *)((char *)a0 + 0x10) != 0) {
        sub_803D9A8(*(void **)a0, 0, 0);
    }
    *(void **)a0 = 0;
    *(unsigned short *)((char *)a0 + 0x12) = 0;
}

extern "C" void sub_8004836(void *a0, int a1)
{
    if (*(void **)a0 != 0 && *(unsigned char *)((char *)a0 + 0x10) != 0) {
        sub_803D9A8(*(void **)a0, 0, 0);
    }
    *(void **)a0 = 0;
    *(unsigned short *)((char *)a0 + 0x12) = 0;
    if (a1 != 0) {
        sub_803DA18(a0);
    }
}

extern "C" void sub_80048BE(void *a0, void *a1, int a2)
{
    if (*(void **)a0 != 0 && *(unsigned char *)((char *)a0 + 0x10) != 0) {
        sub_803D9A8(*(void **)a0, 0, 0);
    }
    *(void **)a0 = a1;
    *(unsigned char *)((char *)a0 + 0x10) = 0;
    *(unsigned short *)((char *)a0 + 0x12) = (unsigned short)a2;
    *(unsigned short *)((char *)a0 + 8) = *(unsigned short *)((char *)a1 + a2 - 2);
}

extern "C" void sub_8004B02(void *a0, void *a1, int a2)
{
    *(unsigned short *)((char *)a0 + 6) = 0;
    *(unsigned short *)((char *)a0 + 8) = 0;
    *(unsigned short *)((char *)a0 + 4) = 0;
    *(unsigned short *)((char *)a0 + 0xe) = a2 & 0x3ff;
    *(void **)((char *)a0 + 0x10) = a1;
    *(int *)((char *)a1 + 4) = *(int *)a1 + 2;
    *(unsigned char *)((char *)*(void **)((char *)a0 + 0x10) + 0xc) = 0;
    *(unsigned short *)((char *)*(void **)((char *)a0 + 0x10) + 0xe) = 0;
    *(unsigned short *)((char *)*(void **)((char *)a0 + 0x10) + 0xa) =
        *(unsigned short *)((char *)*(void **)((char *)a0 + 0x10) + 8);
    {
        unsigned int flags = *(unsigned int *)((char *)a0 + 0x14);
        flags |= 1;
        flags &= ~2;
        flags &= ~4;
        *(unsigned int *)((char *)a0 + 0x14) = flags;
    }
}

extern "C" void sub_8004866(void *a0, int a1, int *a2)
{
    if (*(void **)a0 != 0 && *(unsigned char *)((char *)a0 + 0x10) != 0) {
        sub_803D9A8(*(void **)a0, 0, 0);
    }
    *(void **)a0 = 0;
    *(unsigned short *)((char *)a0 + 0x12) = 0;
    if (a2 != 0) {
        *(void **)a0 = a2;
        *(unsigned char *)((char *)a0 + 0x10) = 0;
        memset(a2, 0, a1 * 2);
    } else {
        *(void **)a0 = sub_803D9C4(1, a1 * 2, 0, 0);
        *(unsigned char *)((char *)a0 + 0x10) = 1;
    }
    *(unsigned short *)((char *)a0 + 0x12) = a1;
}

extern "C" void sub_800496A(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__14Singleton_3E80;
    gUnknown_03003E80 = 0;
    if (a1 != 0) {
        sub_803DA18(a0);
    }
}

extern "C" void sub_8004B40(void *a0, void *a1, int a2)
{
    void *p;

    *(void **)((char *)a0 + 0x10) = a1;
    p = *(void **)a1;
    *(void **)((char *)a1 + 4) = p;
    *(unsigned short *)p |= 0x3ff;
    *(unsigned short *)((char *)*(void **)((char *)a0 + 0x10) + 8) = (unsigned short)a2;
    *(unsigned short *)((char *)*(void **)((char *)a0 + 0x10) + 0xa) = (unsigned short)a2;
    *(unsigned char *)((char *)*(void **)((char *)a0 + 0x10) + 0xc) = 0;
    *(unsigned short *)((char *)*(void **)((char *)a0 + 0x10) + 0xe) = 0;
    {
        unsigned int flags = *(unsigned int *)((char *)a0 + 0x14);
        flags |= 2;
        flags &= ~1;
        flags &= ~4;
        *(unsigned int *)((char *)a0 + 0x14) = flags;
    }
}

extern "C" void *sub_8004924(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x18);
        if (a0 == 0) {
            return a0;
        }
    }
    *(int *)a0 = (int)&__VTABLE__14Singleton_3E80;
    gUnknown_03003E80 = (Singleton_3E80 *)a0;
    *(int *)a0 = (int)&__VTABLE__317dword_803E67C;
    *(unsigned short *)((char *)a0 + 4) = 0;
    *(unsigned short *)((char *)a0 + 6) = 0;
    *(unsigned short *)((char *)a0 + 8) = 0;
    *(unsigned short *)((char *)a0 + 0xa) = 0;
    *(unsigned short *)((char *)a0 + 0xc) = 0;
    *(unsigned short *)((char *)a0 + 0xe) = 0;
    *(int *)((char *)a0 + 0x10) = 0;
    {
        unsigned int flags = *(unsigned int *)((char *)a0 + 0x14);
        flags &= ~1;
        flags &= ~2;
        flags &= ~4;
        flags &= ~8;
        *(unsigned int *)((char *)a0 + 0x14) = flags;
    }
    return a0;
}
