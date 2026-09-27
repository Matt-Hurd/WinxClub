/* Some of the unit's functions; WinxClub__10 (566 lines) stays assembly in
 * asm/nonmatching/split_803364C/. this+0xa8 is itself an embedded object: its
 * own field_0 is a table pointer whose field_0xNN is a self-relative offset
 * to the override to call, with &this->field_a8 passed back in as that
 * callee's own "self" -- the same shape as sub_8018160's __call_via_r2 in
 * partial/split_8018070.cpp. No named struct exists for this+0xa8 yet.
 */
#include "WinxClub.hpp"
#include "generated/functions.h"

extern "C" void m18__7DefaultFv(void *a0);
extern "C" void m1C__7DefaultFv(void *a0);
extern "C" void m20__7DefaultFv(void *a0);
extern "C" int sub_803366C(void *a0);
extern "C" void sub_803FF24(void *a0, int *a1);

/* sub_803366C is parked, see notes/parked.md: its gUnknown_03003458 load is
 * a forward reference into WinxClub__10's own interior literal pool (still
 * assembly), which the splicer has no word for.
 */

void WinxClub::m18()
{
    void *self;
    void *base;
    int rel;
    void (*fn)(void *);

    m18__7DefaultFv(this);

    self = (char *)this + 0xa8;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0xc);
    rel = rel + (int)base;
    fn = (void (*)(void *))rel;
    fn(self);
}

void WinxClub::m1C()
{
    void *self;
    void *base;
    int rel;
    void (*fn)(void *);

    m1C__7DefaultFv(this);

    self = (char *)this + 0xa8;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0x10);
    rel = rel + (int)base;
    fn = (void (*)(void *))rel;
    fn(self);
}

void WinxClub::m20()
{
    void *self;
    void *base;
    int rel;
    void (*fn)(void *, void *);

    m20__7DefaultFv(this);

    self = (char *)this + 0xa8;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0x14);
    rel = rel + (int)base;
    fn = (void (*)(void *, void *))rel;
    fn(self, *(void **)((char *)this + 0x2c));
}

void WinxClub::m38()
{
    int pair[2];
    int a = *(int *)((char *)this + 0x58);
    int shift = 1 << 20;
    int b = *(int *)((char *)this + 0x5c) - shift;

    pair[0] = a;
    pair[1] = b;
    sub_803FF24(*(void **)((char *)this + 0x2c), pair);
}

/* WinxClub__3C is parked, see notes/parked.md: instructions matched up to a
 * handful of remaining scheduling/register-allocation rearrangements.
 */

