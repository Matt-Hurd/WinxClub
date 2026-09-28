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
 *
 * Two local records, both scoped to this unit only -- see
 * docs/decisions/drafts/2026-09-27-object-types-residue.md, family C. They
 * do not share a header with split_8004670.cpp's own note record.
 * `NoteEvent780` is the 0x14-byte record sub_80047EC allocates and
 * zero-inits; sub_8004B02/sub_8004B40 attach one to a `NoteChannel780` via
 * its own field_10 and poke its field_08/0xa/0xc/0xe directly, so those two
 * functions' `a1` is a `NoteEvent780 *`, not `void *`.
 * `NoteChannel780` is the larger 0x18-byte record most of the rest of the
 * file's functions share (vtable/flags word at 0x0/0x14, the attached
 * NoteEvent670 pointer at 0x10). Its own field_10 is read and written as a
 * single byte (an ownership flag) by sub_8004812/sub_8004836/sub_80048BE/
 * sub_8004866, and 0x12 (inside that same 4-byte pointer slot) as a
 * separate 2-byte count by the same four functions -- the file's own
 * survivor of the 0xc-style width conflict the ticket names, just one byte
 * over from where the ticket puts it. field_10 stays a pointer (the
 * shape sub_8004924/sub_8004B02/sub_8004B40 need); the four narrower
 * accesses take the field's address and step from there, spelled with an
 * `unsigned char` cast rather than a `char` one since it is offsetting
 * from a named field, not reaching into an anonymous blob.
 */
#include "generated/functions.h"
#include "Singleton_3E80.hpp"

extern "C" void *memcpy(void *, const void *, unsigned int);
extern "C" void *memset(void *, int, unsigned int);
extern "C" void *sub_803D9C4(int a0, int a1, int a2, int a3);

extern "C" int __VTABLE__14Singleton_3E80;
extern "C" int __VTABLE__317dword_803E67C;

typedef struct {
    unsigned short field_00;
    unsigned short field_02;
    int field_04;
    unsigned short field_08;
    unsigned short field_0a;
    unsigned char field_0c;
    unsigned short field_0e;
    unsigned char field_10;
    char pad_11[3];
} NoteEvent780;

typedef struct {
    void *field_00;
    unsigned short field_04;
    unsigned short field_06;
    unsigned short field_08;
    unsigned short field_0a;
    unsigned short field_0c;
    unsigned short field_0e;
    NoteEvent780 *field_10;
    unsigned int flags_14;
} NoteChannel780;

extern "C" int sub_8004780(unsigned int a0)
{
    return a0 >> 30;
}

extern "C" unsigned char sub_80047A0(NoteEvent780 *a0, int a1)
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

extern "C" void *sub_80047EC(NoteEvent780 *a0)
{
    if (a0 == 0) {
        a0 = (NoteEvent780 *)operator new(0x14);
        if (a0 == 0) {
            return a0;
        }
    }
    *(int *)a0 = 0;
    a0->field_04 = 0;
    a0->field_08 = 0;
    a0->field_0a = 0;
    a0->field_0c = 0;
    a0->field_0e = 0;
    a0->field_10 = 0;
    return a0;
}

extern "C" int sub_80048B0(NoteChannel780 *a0)
{
    return a0->field_08 != 0;
}

extern "C" int sub_80048F0(NoteChannel780 *a0, void *a1)
{
    unsigned short count = a0->field_08;
    if (count == 0) {
        return 0;
    }
    void *begin = a0->field_00;
    void *end = *(void **)&a0->field_04;
    int len = (int)((unsigned char *)end + 2 - (unsigned char *)begin) + 2;
    if (a1 != 0) {
        memcpy(a1, begin, len - 2);
        *(unsigned short *)((unsigned char *)a1 + len - 2) = a0->field_08;
    }
    return len;
}

extern "C" void sub_8004ADC(NoteChannel780 *a0)
{
    a0->field_06 = 0;
    a0->field_08 = 0;
    a0->field_04 = 0;
}

extern "C" int sub_8004AF4(NoteChannel780 *a0)
{
    return (a0->flags_14 >> 3) & 1;
}

extern "C" void sub_8004AFC(NoteChannel780 *a0, int a1, int a2, int a3)
{
    a0->field_0a = (unsigned short)a3;
    a0->field_0c = (unsigned short)a1;
}

extern "C" int sub_8004B38(NoteChannel780 *a0)
{
    return a0->flags_14 & 1;
}

extern "C" int sub_8004B8C(NoteChannel780 *a0)
{
    return (a0->flags_14 >> 2) & 1;
}

extern "C" void sub_80047B6(NoteChannel780 *a0, int a1)
{
    a0->field_04 = (unsigned short)a1;
}

extern "C" int sub_80047BA(NoteChannel780 *a0)
{
    return a0->field_04;
}

extern "C" int sub_8004B76(NoteChannel780 *a0)
{
    return (a0->flags_14 >> 1) & 1;
}

extern "C" void sub_8004AE6(NoteChannel780 *a0, int a1)
{
    a0->flags_14 = (a1 << 3) | (a0->flags_14 & ~8);
}

extern "C" void sub_8004B7E(NoteChannel780 *a0, int a1)
{
    a0->flags_14 = (a1 << 2) | (a0->flags_14 & ~4);
}

extern "C" int sub_80047DA(NoteEvent780 *a0, int a1)
{
    unsigned int v = a0->field_02;
    if (a1 != 0) {
        return v & 0x1f;
    }
    return (v >> 8) & 0x1f;
}

extern "C" void sub_80047BE(NoteEvent780 *a0, int a1, int a2)
{
    unsigned int old = a0->field_02;
    unsigned int v = (a1 & 0x1f) | (old & ~0x1f);
    v = (v & ~0x1f00) | ((a2 & 0x1f) << 8);
    a0->field_02 = v;
}

extern "C" void sub_8004812(NoteChannel780 *a0)
{
    if (a0->field_00 != 0 && *(unsigned char *)&a0->field_10 != 0) {
        sub_803D9A8(a0->field_00, 0, 0);
    }
    a0->field_00 = 0;
    *(unsigned short *)((unsigned char *)&a0->field_10 + 2) = 0;
}

extern "C" void sub_8004836(NoteChannel780 *a0, int a1)
{
    if (a0->field_00 != 0 && *(unsigned char *)&a0->field_10 != 0) {
        sub_803D9A8(a0->field_00, 0, 0);
    }
    a0->field_00 = 0;
    *(unsigned short *)((unsigned char *)&a0->field_10 + 2) = 0;
    if (a1 != 0) {
        sub_803DA18(a0);
    }
}

extern "C" void sub_80048BE(NoteChannel780 *a0, void *a1, int a2)
{
    if (a0->field_00 != 0 && *(unsigned char *)&a0->field_10 != 0) {
        sub_803D9A8(a0->field_00, 0, 0);
    }
    a0->field_00 = a1;
    *(unsigned char *)&a0->field_10 = 0;
    *(unsigned short *)((unsigned char *)&a0->field_10 + 2) = (unsigned short)a2;
    a0->field_08 = *(unsigned short *)((unsigned char *)a1 + a2 - 2);
}

extern "C" void sub_8004B02(NoteChannel780 *a0, NoteEvent780 *a1, int a2)
{
    a0->field_06 = 0;
    a0->field_08 = 0;
    a0->field_04 = 0;
    a0->field_0e = a2 & 0x3ff;
    a0->field_10 = a1;
    a1->field_04 = *(int *)a1 + 2;
    a0->field_10->field_0c = 0;
    a0->field_10->field_0e = 0;
    a0->field_10->field_0a = a0->field_10->field_08;
    {
        unsigned int flags = a0->flags_14;
        flags |= 1;
        flags &= ~2;
        flags &= ~4;
        a0->flags_14 = flags;
    }
}

extern "C" void sub_8004866(NoteChannel780 *a0, int a1, int *a2)
{
    if (a0->field_00 != 0 && *(unsigned char *)&a0->field_10 != 0) {
        sub_803D9A8(a0->field_00, 0, 0);
    }
    a0->field_00 = 0;
    *(unsigned short *)((unsigned char *)&a0->field_10 + 2) = 0;
    if (a2 != 0) {
        a0->field_00 = a2;
        *(unsigned char *)&a0->field_10 = 0;
        memset(a2, 0, a1 * 2);
    } else {
        a0->field_00 = sub_803D9C4(1, a1 * 2, 0, 0);
        *(unsigned char *)&a0->field_10 = 1;
    }
    *(unsigned short *)((unsigned char *)&a0->field_10 + 2) = a1;
}

extern "C" void sub_800496A(NoteChannel780 *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__14Singleton_3E80;
    gUnknown_03003E80 = 0;
    if (a1 != 0) {
        sub_803DA18(a0);
    }
}

extern "C" void sub_8004B40(NoteChannel780 *a0, NoteEvent780 *a1, int a2)
{
    void *p;

    a0->field_10 = a1;
    p = *(void **)a1;
    a1->field_04 = (int)p;
    *(unsigned short *)p |= 0x3ff;
    a0->field_10->field_08 = (unsigned short)a2;
    a0->field_10->field_0a = (unsigned short)a2;
    a0->field_10->field_0c = 0;
    a0->field_10->field_0e = 0;
    {
        unsigned int flags = a0->flags_14;
        flags |= 2;
        flags &= ~1;
        flags &= ~4;
        a0->flags_14 = flags;
    }
}

extern "C" void *sub_8004924(NoteChannel780 *a0)
{
    if (a0 == 0) {
        a0 = (NoteChannel780 *)operator new(0x18);
        if (a0 == 0) {
            return a0;
        }
    }
    *(int *)a0 = (int)&__VTABLE__14Singleton_3E80;
    gUnknown_03003E80 = (Singleton_3E80 *)a0;
    *(int *)a0 = (int)&__VTABLE__317dword_803E67C;
    a0->field_04 = 0;
    a0->field_06 = 0;
    a0->field_08 = 0;
    a0->field_0a = 0;
    a0->field_0c = 0;
    a0->field_0e = 0;
    a0->field_10 = 0;
    {
        unsigned int flags = a0->flags_14;
        flags &= ~1;
        flags &= ~2;
        flags &= ~4;
        flags &= ~8;
        a0->flags_14 = flags;
    }
    return a0;
}
