/* Three functions of split_802B288; sub_802B3D6 is not part of this batch,
 * and sub_802B2F8 is parked (see notes/parked.md) -- both stay assembly in
 * asm/nonmatching/split_802B288/. cpp_evidence.py proves the unit C++ via
 * __nw__FUi and __vecmap1c__ runtime calls; none of these three is a vtable
 * slot, so they are plain extern "C" free functions.
 *
 * sub_802B288 is the allocate-or-reuse constructor (same shape as
 * sub_80143E0 in partial/split_80142D0.cpp): `operator new` on a null a0,
 * then two member sub-objects at +4/+0x7c, then a vecmap1c-constructed array
 * at [+0xf4, +0x1e4) of 0x78 elements, then two small zeroed int arrays
 * right after it. sub_802B390 is the matching destructor: it destroys the
 * same array in reverse (__vecmap1ci__, see
 * notes/quirks/vecmap1c-is-an-explicit-call-not-array-construction.md) then
 * the two member sub-objects, then calls the still-assembly sub_802B2F8.
 */

extern "C" void sub_80143E0(void *a0);
extern "C" void sub_8014436(void *a0, int a1);
extern "C" void *sub_803DA18(void *a0);
extern "C" void __vecmap1c__FPvT1iPFPv_v(void *first, void *last, int count,
                                          void (*ctor)(void *));
extern "C" void __vecmap1ci__FPvT1iPFPvi_v(void *first, void *last, int count,
                                            void (*dtor)(void *, int));
extern "C" void sub_802B2F8(void *a0);

extern "C" int sub_802B382(void *a0)
{
    return *(unsigned char *)((char *)a0 + 2) != 0;
}

extern "C" void sub_802B390(void *a0, int a1)
{
    char *this_ = (char *)a0;

    if (*(unsigned char *)(this_ + 2) != 0)
        sub_802B2F8(this_);

    __vecmap1ci__FPvT1iPFPvi_v(this_ + 0x7c + 0xf0, this_ + 0x7c, -0x78,
                               sub_8014436);
    sub_8014436(this_ + 0x7c, 0);
    sub_8014436(this_ + 4, 0);

    if (a1 != 0)
        sub_803DA18(this_);
}

extern "C" void *sub_802B288(void *a0)
{
    char *obj = (char *)a0;
    unsigned char i;

    if (obj == 0)
    {
        obj = (char *)operator new(0x1fc);
        if (obj == 0)
            return obj;
    }

    sub_80143E0(obj + 4);
    sub_80143E0(obj + 0x7c);

    __vecmap1c__FPvT1iPFPv_v(obj + 0xf4, obj + 0x1e4, 0x78, sub_80143E0);

    obj[0] = 0;
    obj[2] = 0;

    for (i = 0; i < 3; i++)
        *(int *)(obj + i * 4 + 0x1c0 + 0x24) = 0;
    for (i = 0; i < 2; i++)
        *(int *)(obj + i * 4 + 0x1c0 + 0x30) = 0;

    return obj;
}
