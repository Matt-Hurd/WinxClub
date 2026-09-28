/* Four of split_802FBE8's candidates; the rest of the unit stays assembly in
 * asm/nonmatching/split_802FBE8/ (Bird__44, and, parked, sub_802FBE8,
 * Bird__38 and Bird__Create: see notes/parked.md). Bird__04 and Bird__08 are
 * the vtable's working labels; the label pass renames tcpp's mangled slot
 * symbols back to them.
 *
 * Bird__ctor stores the vtable and calls m00__7DefaultFv(this, 0) then
 * conditionally sub_803DA18(this) -- same shape as WallObject__ctor in
 * partial/split_8035E7C.cpp -- but Bird.hpp only declares a no-arg ctor, so
 * this stays a plain free function under its working label, same reasoning
 * as WallObject__ctor.
 */
#include "Bird.hpp"

extern "C" void m04__7DefaultFv(void *a0);
extern "C" void m08__7DefaultFv(void *a0);
extern "C" void m00__7DefaultFv(void *a0, int a1);
extern "C" void *sub_803DA18(void *a0);
extern "C" int __VTABLE__307Bird;

/* m04__7DefaultFv/m08__7DefaultFv/m00__7DefaultFv above are Default's own
 * vtable-slot working labels, so this TU cannot include Default.hpp's C++
 * class -- tcpp reads a same-named member declaration as redeclaring those
 * externs with a mismatched linkage. This mirrors just the fields
 * Bird__ctor/Bird__40 touch, same offsets and widths as include/Default.hpp.
 */
struct Default {
    void *vtable;
    char gap_04[4];
    unsigned short sprite_08;
    unsigned short sprite_0a;
    unsigned short sprite_0c;
    unsigned short sprite_0e;
    char gap_10[8];
    unsigned short sprite_18;
    unsigned short sprite_1a;
    unsigned short sprite_1c;
    unsigned short sprite_1e;
    char gap_20[0x70 - 0x20];
    int field_70;
};

extern "C" void Bird__ctor(void *a0, int a1)
{
    struct Default *obj = (struct Default *)a0;

    obj->vtable = &__VTABLE__307Bird;
    m00__7DefaultFv(a0, 0);
    if (a1)
        sub_803DA18(a0);
}

extern "C" void Bird__40(void *a0, int a1)
{
    struct Default *obj = (struct Default *)a0;
    int type = a1;
    /* 0xb4 is one halfword past sizeof(Default) -- a Bird-specific field
     * (docs/decisions/drafts/2026-09-27-object-types.md, type 1: "0xb4 2u
     * (Bird__40)"); Bird.hpp declares no data members, so this stays a raw
     * offset rather than a guessed field on the wrong header. */
    unsigned short *s = (unsigned short *)((char *)a0 + 0xa0);

    switch (type) {
    case 0x23:
        obj->sprite_0e = 0x1f;
        obj->sprite_0a = 0x1f;
        obj->sprite_0c = 0x1f;
        obj->sprite_08 = 0x1f;
        obj->sprite_1e = 0x1f;
        obj->sprite_1a = 0x1f;
        obj->sprite_1c = 0x1f;
        obj->sprite_18 = 0x1f;
        s[0xa] = 0x1e;
        obj->field_70 = 0x8000;
        break;
    case 0x24:
        obj->sprite_0e = 0x2d2;
        obj->sprite_0a = 0x2d2;
        obj->sprite_0c = 0x2d2;
        obj->sprite_08 = 0x2d2;
        obj->sprite_1e = 0x2d2;
        obj->sprite_1a = 0x2d2;
        obj->sprite_1c = 0x2d2;
        obj->sprite_18 = 0x2d2;
        s[0xa] = 0x2d2 - 1;
        obj->field_70 = 0x8000;
        break;
    case 0x25:
        obj->sprite_0e = 0x155;
        obj->sprite_0a = 0x155;
        obj->sprite_0c = 0x155;
        obj->sprite_08 = 0x155;
        obj->sprite_1e = 0x155;
        obj->sprite_1a = 0x155;
        obj->sprite_1c = 0x155;
        obj->sprite_18 = 0x155;
        s[0xa] = 0x155 - 1;
        obj->field_70 = 0x8000;
        break;
    }
}

void Bird::m04() { m04__7DefaultFv(this); }

void Bird::m08() { m08__7DefaultFv(this); }
