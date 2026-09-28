/* Some of the unit's functions; WinxClub__10 (566 lines) stays assembly in
 * asm/nonmatching/split_803364C/. this+0xa8 is itself an embedded object: its
 * own field_0 is a table pointer whose field_0xNN is a self-relative offset
 * to the override to call, with &this->field_a8 passed back in as that
 * callee's own "self" -- the same shape as sub_8018160's __call_via_r2 in
 * partial/split_8018070.cpp. No named struct exists for this+0xa8 yet.
 *
 * Structs over casts (winx-qhyt.17): WinxClub has no C++ base, so the
 * Default fields (0x2c, 0x58, 0x5c) go through a `Default *d`, and
 * m18__7DefaultFv/m1C__7DefaultFv/m20__7DefaultFv (which clash with
 * Default.hpp's own members once it is included) are spelled
 * d->Default::m18/m1C/m20() instead -- same non-virtual dispatch, same
 * symbol. this+0xa8 is past Default (sizeof 0xa0) with no header of its own
 * yet (see above), and the offsets read off `base` (the embedded object's
 * own table entry, 0xc/0x10/0x14) are not GameObj at all; both stay casts,
 * with `self` (this+0xa8, computed once and reused for the load and the
 * call) kept exactly as before it.
 */
#include "Default.hpp"
#include "WinxClub.hpp"
#include "generated/functions.h"

extern "C" int sub_803366C(void *a0);
extern "C" void sub_803FF24(void *a0, int *a1);

/* sub_803366C is parked, see notes/parked.md: its gUnknown_03003458 load is
 * a forward reference into WinxClub__10's own interior literal pool (still
 * assembly), which the splicer has no word for.
 */

void WinxClub::m18()
{
    Default *d = (Default *)this;
    void *self;
    void *base;
    int rel;
    void (*fn)(void *);

    d->Default::m18();

    self = (char *)this + 0xa8;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0xc);
    rel = rel + (int)base;
    fn = (void (*)(void *))rel;
    fn(self);
}

void WinxClub::m1C()
{
    Default *d = (Default *)this;
    void *self;
    void *base;
    int rel;
    void (*fn)(void *);

    d->Default::m1C();

    self = (char *)this + 0xa8;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0x10);
    rel = rel + (int)base;
    fn = (void (*)(void *))rel;
    fn(self);
}

void WinxClub::m20()
{
    Default *d = (Default *)this;
    void *self;
    void *base;
    int rel;
    void (*fn)(void *, void *);

    d->Default::m20();

    self = (char *)this + 0xa8;
    base = *(void **)self;
    rel = *(int *)((char *)base + 0x14);
    rel = rel + (int)base;
    fn = (void (*)(void *, void *))rel;
    fn(self, d->field_2c);
}

void WinxClub::m38()
{
    Default *d = (Default *)this;
    int pair[2];
    int a = d->x_pos;
    int shift = 1 << 20;
    int b = d->y_pos - shift;

    pair[0] = a;
    pair[1] = b;
    sub_803FF24(d->field_2c, pair);
}

/* WinxClub__3C is parked, see notes/parked.md: instructions matched up to a
 * handful of remaining scheduling/register-allocation rearrangements.
 */

