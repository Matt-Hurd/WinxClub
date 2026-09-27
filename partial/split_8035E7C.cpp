/* Six of split_8035E7C's ten assigned functions; the rest of the unit stays
 * assembly in asm/nonmatching/split_8035E7C/. All six are WallObject's own
 * vtable slots or its ctor (config/vtables.yml's WallObject entry), so they
 * are written as WallObject members / free functions the same way as
 * partial/split_802EC90.cpp and partial/split_8026014.cpp.
 *
 * Parked -- see notes/parked.md -- and left in asm/nonmatching/split_8035E7C/:
 * WallObject__Create (splice refusal, the "Wall Object Group" name string),
 * sub_8035F1C, sub_8035F54 and WallObjectScriptGroup__4C (all three
 * register-allocation mismatches). sub_8035F1C and sub_8035F54 are still
 * declared here since WallObjectScriptGroup__04 calls them.
 *
 * WallObjectScriptGroup__38/__20 zero a freshly EWRAM-allocated 0x1c-byte
 * node with the inline MOV+STMIA shape, not a memclr call -- see
 * notes/quirks/a-small-word-typed-memset-inlines-instead-of-calling-rt-memclr_w.md
 * -- same allocator call signature as partial/split_801FE90.cpp's
 * sub_801FEFE (`sub_803DA80(0x1c, GetEWRAMStart(), 0, 0)`).
 */
#include "WallObject.hpp"

extern "C" void m00__7DefaultFv(void *a0, int a1);
extern "C" void m04__7DefaultFv(void *a0, void *a1);
extern "C" int m08__7DefaultFv(void *a0, void *a1);
extern "C" void m20__7DefaultFv(void *a0);
extern "C" void Dying__7DefaultFv(void *a0, void *a1);
extern "C" void *sub_803DA18(void *a0);
extern "C" void *GetEWRAMStart(void);
extern "C" void *sub_803DA80(unsigned int size, void *heap, int a2, int a3);
extern "C" void *memset(void *, int, unsigned int);
extern "C" int __VTABLE__311WallObject;

extern "C" void WallObject__ctor(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__311WallObject;
    m00__7DefaultFv(a0, 0);
    if (a1)
        sub_803DA18(a0);
}

int WallObject::m08(void *a1)
{
    if (*(unsigned char *)*(void **)a1 == 0x28) {
        return 1;
    }
    return m08__7DefaultFv(this, a1);
}

/* sub_8035F1C and sub_8035F54 are parked -- see notes/parked.md -- and stay
 * in asm/nonmatching/split_8035E7C/; these forward declarations are only
 * for WallObjectScriptGroup__04's calls to them. */
extern "C" void sub_8035F1C(void *a0, void *a1);
extern "C" void sub_8035F54(void *a0, void *a1);

void WallObject::m04(void *a1)
{
    unsigned char b = *(unsigned char *)*(void **)a1;

    switch (b) {
    case 0x22: {
        char *vt = *(char **)this;
        void (*fn)(void *, void *) = (void (*)(void *, void *))(vt + *(int *)(vt + 0x48));
        fn(this, a1);
        break;
    }
    case 0x27:
        sub_8035F54(this, a1);
        break;
    case 0x28: {
        void (*fn)(void *, void *) = sub_8035F1C;
        fn(this, a1);
        break;
    }
    default:
        m04__7DefaultFv(this, a1);
        break;
    }
}

void WallObject::m38()
{
    int *node = (int *)sub_803DA80(0x1c, GetEWRAMStart(), 0, 0);

    if (node != 0) {
        memset(node, 0, 0x1c);
    }
    *(short *)((char *)node + 0) = 7;
    *(short *)((char *)node + 2) = 0;
    *(short *)((char *)node + 4) = 0;
    *(short *)((char *)node + 6) = 0;
    *(short *)((char *)node + 8) = -7;
    *(short *)((char *)node + 0xa) = 0;
    *(short *)((char *)node + 0xc) = 0;
    *(short *)((char *)node + 0xe) = 0;
    *(short *)((char *)node + 0x10) = 0;
    *(short *)((char *)node + 0x12) = 0;
    *(char *)((char *)node + 0x14) = 3;
    *(void **)((char *)node + 0x18) = *(void **)((char *)this + 0x28);
    *(void **)((char *)this + 0x28) = node;
}

void WallObject::m20()
{
    int *node;

    m20__7DefaultFv(this);
    node = (int *)sub_803DA80(0x1c, GetEWRAMStart(), 0, 0);

    if (node != 0) {
        memset(node, 0, 0x1c);
    }
    *(short *)((char *)node + 0) = 7;
    *(short *)((char *)node + 2) = 0;
    *(short *)((char *)node + 4) = 0;
    *(short *)((char *)node + 6) = 0;
    *(short *)((char *)node + 8) = -7;
    *(short *)((char *)node + 0xa) = 0;
    *(short *)((char *)node + 0xc) = 0;
    *(short *)((char *)node + 0xe) = 0;
    *(short *)((char *)node + 0x10) = 0;
    *(short *)((char *)node + 0x12) = 0;
    *(char *)((char *)node + 0x14) = 3;
    *(void **)((char *)node + 0x18) = *(void **)((char *)this + 0x28);
    *(void **)((char *)this + 0x28) = node;
}

void WallObject::m48(void *a1)
{
    void *d = *(void **)a1;
    unsigned short type = *(unsigned short *)((char *)d + 8);

    switch (type) {
    case 0x14:
        *(short *)((char *)this + 0x1a) = (short)*(int *)((char *)d + 4);
        *(short *)((char *)this + 0x18) = (short)*(int *)((char *)d + 4);
        break;
    case 0x1f: {
        int v = (signed char)*(int *)((char *)d + 4);
        char *p70 = (char *)this + 0x70;

        p70[0xd] = (signed char)v;
        if (v >= 0) {
        } else {
            v = -v;
        }
        *(unsigned char *)((char *)this + 0xa0 + 8) = (unsigned char)v;
        p70[0xc] = 0;
        break;
    }
    default:
        Dying__7DefaultFv(this, a1);
        break;
    }
}

/* WallObjectScriptGroup__4C is parked -- see notes/parked.md -- and stays in
 * asm/nonmatching/split_8035E7C/WallObjectScriptGroup__4C.s. */
