/* Nine functions of split_80103C8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80103C8/. A trivial placement `operator new` gets
 * this to construct straight into the caller's a0/freshly-allocated block:
 * writing the zero-initialization as plain field stores through a0 produces
 * individual STRs, but `new(a0) Foo()` value-initializes the whole object in
 * one go, which is what the ROM's STM bursts are.
 */
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
    *(int *)a0 = (int)&__VTABLE__319dword_803E684;
    gUnknown_03000000((char *)a0 + 0x94);
    gUnknown_03000000((char *)a0 + 0xf0);

    memset((int *)a0 + (0x1710 / 4), 0, 0x1c);

    sub_80104BC(a0, 1);
    return a0;
}

extern "C" void *sub_8010574(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__319dword_803E684;
    gUnknown_03000000((char *)a0 + 0x94);
    gUnknown_03000000((char *)a0 + 0xf0);

    memset((int *)a0 + (0x1710 / 4), 0, 0x1c);

    sub_80104BC(a0, a1);
    return a0;
}

extern "C" void sub_80105AE(void *a0)
{
    *(int *)a0 = (int)&__VTABLE__319dword_803E684;

    if (*(void **)((char *)a0 + 0x70) != 0)
        sub_803D9A8(*(void **)((char *)a0 + 0x70), 0, 0);

    if (*(void **)((char *)a0 + 0x78) != 0) {
        sub_803D9A8(*(void **)((char *)a0 + 0x78), 0, 0);
        *(void **)((char *)a0 + 0x78) = 0;
    }

    if (*(void **)((char *)a0 + 0x6e4) != 0)
        sub_803D9A8(*(void **)((char *)a0 + 0x6e4), 0, 0);

    gUnknown_03000058((char *)a0 + 0xf0, 0);
    gUnknown_03000058((char *)a0 + 0x94, 0);
}

extern "C" void sub_80103EC(void *a0, int a1)
{
    int tmp;

    *(unsigned char *)((char *)a0 + 0x54) = 0xb;

    *(int *)((char *)a0 + 0x58) = 0;
    *(int *)((char *)a0 + 0x60) = 0;
    memset((int *)a0 + (0x64c / 4), 0, 0x90);

    *(int *)((char *)a0 + 0x6d4) = a1;
    *(unsigned char *)((char *)a0 + 0x6d1) = 0xb;

    tmp = *(int *)((char *)a0 + 0x5c);

    *(int *)((char *)a0 + 0x6d8) = tmp;
    *(unsigned char *)((char *)a0 + 0x6f0) = 0xb;
    *(int *)((char *)a0 + 0x6f4) = tmp;
    *(int *)((char *)a0 + 0x6f8) = 0;
    *(int *)((char *)a0 + 0x6fc) = 0x1FEEB;

    *(int *)((char *)a0 + 0x700) = 0;
    *(int *)((char *)a0 + 0x704) = 0;
    *(int *)((char *)a0 + 0x708) = 0;
    *(int *)((char *)a0 + 0x70c) = 0;
    *(int *)((char *)a0 + 0x7c) = 0;

    *(unsigned char *)((char *)a0 + 0x6dc) = 1;
    *(unsigned char *)((char *)a0 + 0x6dd) = 0;
    *(unsigned char *)((char *)a0 + 0x6de) = 0xff;
    *(unsigned char *)((char *)a0 + 0x6df) = 0;

    *(int *)((char *)a0 + 0x6e0) = 0x7FF;
    *(int *)((char *)a0 + 0x6e8) = 0;
    *(int *)((char *)a0 + 0x6ec) = 0;
}

extern "C" void sub_80104BC(void *a0, int a1)
{
    *(int *)((char *)a0 + 0x74) = 0;
    *(int *)((char *)a0 + 0x70) = 0;
    *(int *)((char *)a0 + 4) = 0;
    *(int *)((char *)a0 + 0x5c) = 0;
    *(int *)((char *)a0 + 0x60) = 0;
    *(int *)((char *)a0 + 0x68) = 0;
    *(int *)((char *)a0 + 0x64) = 0;

    *(unsigned char *)((char *)a0 + 0x54) = 0xb;
    *(int *)((char *)a0 + 0x6c) = 0;

    if (a1)
        *(void **)((char *)a0 + 0x78) = sub_803D9C4(1, 0x20000, 0, 0);
    else
        *(void **)((char *)a0 + 0x78) = 0;

    *(int *)((char *)a0 + 0x7c) = 0;
    *(int *)((char *)a0 + 0x84) = 0;
    *(int *)((char *)a0 + 0x58) = 0;
    *(unsigned int *)((char *)a0 + 0x80) = 0x1FFFF;

    {
        /* a plain call inlines sub_801047C's whole body (same TU); the
         * function-pointer trick forces a real BL, per
         * a-function-pointer-variable-defeats-same-tu-inlining.md */
        void (*fn)(unsigned char *) = sub_801047C;
        fn((unsigned char *)a0 + 0x710);
    }

    *(int *)((char *)a0 + 0x88) = 0;
    *(int *)((char *)a0 + 0x8c) = 0;
    *(int *)((char *)a0 + 0x90) = 0;

    if (a1)
        *(void **)((char *)a0 + 0x6e4) = sub_803D9C4(1, 0x10800, 0, 0);
    else
        *(void **)((char *)a0 + 0x6e4) = 0;

    sub_80103EC(a0, 0);
}

extern "C" void *memcpy(void *, const void *, unsigned int);

extern "C" void sub_8010604(void *a0, int *a1)
{
    void *self;
    void *base;
    int rel;
    void (*fn)(void *, void *, int);
    int *dst = (int *)((char *)a0 + 0x1710);

    memcpy(dst, a1, 0x1a);

    if (*(unsigned short *)((char *)a1 + 0x16) == 0xffff) {
        unsigned int t = ((unsigned int)*(int *)((char *)a0 + 0xc) << 10) >> 22;
        *(short *)((char *)a1 + 0x16) = (short)((0xf0 - (int)t) / 2);
    }
    if (*(unsigned short *)((char *)a1 + 0x18) == 0xffff) {
        unsigned int t = (unsigned int)*(int *)((char *)a0 + 0xc) >> 22;
        *(short *)((char *)a1 + 0x18) = (short)((0xa0 - (int)t) / 2);
    }

    *(int *)((char *)a0 + 0x90) =
        (*(short *)((char *)a1 + 0x16) + *(short *)((char *)a1 + 0x18) * 15 * 16) << 1;

    self = (char *)a0 + 0x94;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0x1c);
    rel = rel + (int)base;
    fn = (void (*)(void *, void *, int))rel;
    fn(self, *(void **)((char *)a0 + 0x1718), 0x146c);

    self = (char *)a0 + 0xf0;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0x1c);
    rel = rel + (int)base;
    fn = (void (*)(void *, void *, int))rel;
    fn(self, *(void **)((char *)a0 + 0x171c), 0x146c);
}
