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
 *
 * WallObject does not derive from Default, and including Default.hpp here
 * would collide with the hand-mangled `m08__7DefaultFv`/`m20__7DefaultFv`/
 * `Dying__7DefaultFv` this file also declares (Default's own slots mangle
 * to the identical names), so every `this` cast below is reached through
 * the local mirror struct instead -- the same convention split_801D9B0.c
 * and split_801F640.c use for .c units that cannot include Default.hpp at
 * all. The node m38/m20 build and push onto self->field_28 is the
 * SpriteRecord sub_803DA80 hands back (include/SpriteRecord.h,
 * winx-qhyt.7), the same list partial/split_801D9B0.c already reaches
 * through Default::field_28; this+0x1a/0x18 are sprite_1a/sprite_18. m48's
 * `d` is a different, out-of-scope record (the event/message a1 points at)
 * and stays raw casts; its two bytes at this+0x70 are
 * self->directionAndMore.struc.unk1/unk2 and its byte at this+0xa0+8
 * (0xa8) is a derived-class field past Default's own 0xa0, not a Default
 * field either way.
 */
#include "winxclub.h"
#include "SpriteRecord.h"
#include "WallObject.hpp"

struct GameObj {
    char gap_00[0x18];
    unsigned short sprite_18;
    unsigned short sprite_1a;
    char gap_1c[0x28 - 0x1c];
    struct SpriteRecord *field_28;
    char gap_2c[0x7c - 0x2c];
    union GameObjDirectionAndMoreUnion directionAndMore;
    char gap_80[0xa8 - 0x80];
    unsigned char field_a8;
};

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
    struct GameObj *self = (struct GameObj *)this;
    struct SpriteRecord *node =
        (struct SpriteRecord *)sub_803DA80(0x1c, GetEWRAMStart(), 0, 0);

    if (node != 0) {
        memset(node, 0, 0x1c);
    }
    node->field_00[0] = 7;
    node->field_00[1] = 0;
    node->field_00[2] = 0;
    node->field_00[3] = 0;
    node->field_08[0] = -7;
    node->field_08[1] = 0;
    node->field_08[2] = 0;
    node->field_08[3] = 0;
    node->field_10 = 0;
    node->field_12 = 0;
    node->field_14 = 3;
    node->field_18 = self->field_28;
    self->field_28 = node;
}

void WallObject::m20()
{
    struct GameObj *self = (struct GameObj *)this;
    struct SpriteRecord *node;

    m20__7DefaultFv(this);
    node = (struct SpriteRecord *)sub_803DA80(0x1c, GetEWRAMStart(), 0, 0);

    if (node != 0) {
        memset(node, 0, 0x1c);
    }
    node->field_00[0] = 7;
    node->field_00[1] = 0;
    node->field_00[2] = 0;
    node->field_00[3] = 0;
    node->field_08[0] = -7;
    node->field_08[1] = 0;
    node->field_08[2] = 0;
    node->field_08[3] = 0;
    node->field_10 = 0;
    node->field_12 = 0;
    node->field_14 = 3;
    node->field_18 = self->field_28;
    self->field_28 = node;
}

void WallObject::m48(void *a1)
{
    struct GameObj *self = (struct GameObj *)this;
    void *d = *(void **)a1;
    unsigned short type = *(unsigned short *)((char *)d + 8);

    switch (type) {
    case 0x14:
        self->sprite_1a = (short)*(int *)((char *)d + 4);
        self->sprite_18 = (short)*(int *)((char *)d + 4);
        break;
    case 0x1f: {
        int v = (signed char)*(int *)((char *)d + 4);

        self->directionAndMore.struc.unk2 = (signed char)v;
        if (v >= 0) {
        } else {
            v = -v;
        }
        self->field_a8 = (unsigned char)v;
        self->directionAndMore.struc.unk1 = 0;
        break;
    }
    default:
        Dying__7DefaultFv(this, a1);
        break;
    }
}

/* WallObjectScriptGroup__4C is parked -- see notes/parked.md -- and stays in
 * asm/nonmatching/split_8035E7C/WallObjectScriptGroup__4C.s. */
