/* Nine functions of split_80103C8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80103C8/. A trivial placement `operator new` gets
 * this to construct straight into the caller's a0/freshly-allocated block:
 * writing the zero-initialization as plain field stores through a0 produces
 * individual STRs, but `new(a0) Foo()` value-initializes the whole object in
 * one go, which is what the ROM's STM bursts are.
 */
#include "dword_803EC98.hpp"

inline void *operator new(unsigned int, void *p) { return p; }

struct Foo { int a, b, c, d, e, f, g; };

extern "C" void *sub_80103C8(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x1c);
        if (a0 == 0)
            return a0;
    }
    return new (a0) Foo();
}

/* sub_8010456/sub_801047C share the same bit test against gUnknown_0804AE70
 * (a per-nibble threshold table): sub_8010456 answers it for one (value, row)
 * pair, sub_801047C fills a 0x1000-byte table by calling the same shape for
 * every (value, row) in [0,0x100) x [0,0x10) -- open-coded here rather than
 * calling sub_8010456 because the ROM does, one register allocation for the
 * whole nested loop instead of a call per cell.
 */
extern "C" unsigned char gUnknown_0804AE70[];

extern "C" int sub_8010456(int a0, int a1)
{
    int result = 0x1f;
    int shift = a0 >> 3;

    if (shift < 0x1f) {
        result = 0;
        if (a0 >= 0) {
            int bit = (gUnknown_0804AE70[a1] < (a0 & 7)) ? 1 : 0;
            result = bit + shift;
        }
    }
    return result;
}

extern "C" void sub_801047C(unsigned char *out)
{
    unsigned int row;

    for (row = 0; row < 0x10; row++) {
        unsigned int val;

        for (val = 0; val < 0x100; val++) {
            int bit = 0x1f;
            int shift = (int)val >> 3;

            if (shift < 0x1f) {
                bit = 0;
                if ((int)val >= 0) {
                    int hit = (gUnknown_0804AE70[row] < ((int)val & 7)) ? 1 : 0;
                    bit = hit + shift;
                }
            }
            *out++ = bit;
        }
    }
}

extern "C" int __VTABLE__319dword_803E684;
extern "C" void gUnknown_03000000(void *a0);
extern "C" void gUnknown_03000058(void *a0, int a1);
extern "C" void sub_803D9A8(void *a0, int a1, int a2);
extern "C" void *sub_803D9C4(int a0, int a1, int a2, int a3);
extern "C" void sub_80103EC(void *a0, int a1);
extern "C" void sub_80104BC(void *a0, int a1);
extern "C" void *memset(void *, int, unsigned int);

extern "C" void *sub_801053C(void *a0)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;

    self->vtable = &__VTABLE__319dword_803E684;
    gUnknown_03000000(&self->field_94);
    gUnknown_03000000(&self->field_f0);

    memset(&self->field_1710, 0, 0x1c);

    sub_80104BC(a0, 1);
    return a0;
}

extern "C" void *sub_8010574(void *a0, int a1)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;

    self->vtable = &__VTABLE__319dword_803E684;
    gUnknown_03000000(&self->field_94);
    gUnknown_03000000(&self->field_f0);

    memset(&self->field_1710, 0, 0x1c);

    sub_80104BC(a0, a1);
    return a0;
}

extern "C" void sub_80105AE(void *a0)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;

    self->vtable = &__VTABLE__319dword_803E684;

    if (self->field_70 != 0)
        sub_803D9A8(self->field_70, 0, 0);

    if (self->field_78 != 0) {
        sub_803D9A8(self->field_78, 0, 0);
        self->field_78 = 0;
    }

    if (self->field_6e4 != 0)
        sub_803D9A8(self->field_6e4, 0, 0);

    gUnknown_03000058(&self->field_f0, 0);
    gUnknown_03000058(&self->field_94, 0);
}

extern "C" void sub_80103EC(void *a0, int a1)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;
    int tmp;

    self->field_54 = 0xb;

    self->field_58 = 0;
    self->field_60 = 0;
    memset(&self->field_64c, 0, 0x90);

    self->field_6d4 = a1;
    self->field_6d1 = 0xb;

    tmp = self->field_5c;

    self->field_6d8 = tmp;
    self->field_6f0 = 0xb;
    self->field_6f4 = tmp;
    self->field_6f8 = 0;
    self->field_6fc = 0x1FEEB;

    self->field_700 = 0;
    self->field_704 = 0;
    self->field_708 = 0;
    self->field_70c = 0;
    self->field_7c = 0;

    self->field_6dc = 1;
    self->field_6dd = 0;
    self->field_6de = 0xff;
    self->field_6df = 0;

    self->field_6e0 = 0x7FF;
    self->field_6e8 = 0;
    self->field_6ec = 0;
}

extern "C" void sub_80104BC(void *a0, int a1)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;

    self->field_74 = 0;
    self->field_70 = 0;
    self->field_04 = 0;
    self->field_5c = 0;
    self->field_60 = 0;
    self->field_68 = 0;
    self->field_64 = 0;

    self->field_54 = 0xb;
    self->field_6c = 0;

    if (a1)
        self->field_78 = sub_803D9C4(1, 0x20000, 0, 0);
    else
        self->field_78 = 0;

    self->field_7c = 0;
    self->field_84 = 0;
    self->field_58 = 0;
    self->field_80 = 0x1FFFF;

    {
        /* a plain call inlines sub_801047C's whole body (same TU); the
         * function-pointer trick forces a real BL, per
         * a-function-pointer-variable-defeats-same-tu-inlining.md */
        void (*fn)(unsigned char *) = sub_801047C;
        fn((unsigned char *)a0 + 0x710);
    }

    self->field_88 = 0;
    self->field_8c = 0;
    self->field_90 = 0;

    if (a1)
        self->field_6e4 = sub_803D9C4(1, 0x10800, 0, 0);
    else
        self->field_6e4 = 0;

    sub_80103EC(a0, 0);
}

extern "C" void *memcpy(void *, const void *, unsigned int);

extern "C" void sub_8010604(void *a0, int *a1)
{
    struct dword_803EC98_Data *obj = (struct dword_803EC98_Data *)a0;
    void *self;
    void *base;
    int rel;
    void (*fn)(void *, void *, int);

    int *dst = (int *)&obj->field_1710;
    memcpy(dst, a1, 0x1a);

    if (*(unsigned short *)((char *)a1 + 0x16) == 0xffff) {
        unsigned int t = ((unsigned int)obj->field_0c << 10) >> 22;
        *(short *)((char *)a1 + 0x16) = (short)((0xf0 - (int)t) / 2);
    }
    if (*(unsigned short *)((char *)a1 + 0x18) == 0xffff) {
        unsigned int t = (unsigned int)obj->field_0c >> 22;
        *(short *)((char *)a1 + 0x18) = (short)((0xa0 - (int)t) / 2);
    }

    obj->field_90 =
        (*(short *)((char *)a1 + 0x16) + *(short *)((char *)a1 + 0x18) * 15 * 16) << 1;

    self = &obj->field_94;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0x1c);
    rel = rel + (int)base;
    fn = (void (*)(void *, void *, int))rel;
    fn(self, obj->field_1710.field_08, 0x146c);

    self = &obj->field_f0;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0x1c);
    rel = rel + (int)base;
    fn = (void (*)(void *, void *, int))rel;
    fn(self, obj->field_1710.field_0c, 0x146c);
}
