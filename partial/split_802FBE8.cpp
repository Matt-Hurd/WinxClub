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

extern "C" void Bird__ctor(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__307Bird;
    m00__7DefaultFv(a0, 0);
    if (a1)
        sub_803DA18(a0);
}

extern "C" void Bird__40(void *a0, int a1)
{
    int type = a1;
    unsigned short *s = (unsigned short *)((char *)a0 + 0xa0);

    switch (type) {
    case 0x23:
        *(unsigned short *)((char *)a0 + 0xe) = 0x1f;
        *(unsigned short *)((char *)a0 + 0xa) = 0x1f;
        *(unsigned short *)((char *)a0 + 0xc) = 0x1f;
        *(unsigned short *)((char *)a0 + 8) = 0x1f;
        *(unsigned short *)((char *)a0 + 0x1e) = 0x1f;
        *(unsigned short *)((char *)a0 + 0x1a) = 0x1f;
        *(unsigned short *)((char *)a0 + 0x1c) = 0x1f;
        *(unsigned short *)((char *)a0 + 0x18) = 0x1f;
        s[0xa] = 0x1e;
        *(unsigned int *)((char *)a0 + 0x70) = 0x8000;
        break;
    case 0x24:
        *(unsigned short *)((char *)a0 + 0xe) = 0x2d2;
        *(unsigned short *)((char *)a0 + 0xa) = 0x2d2;
        *(unsigned short *)((char *)a0 + 0xc) = 0x2d2;
        *(unsigned short *)((char *)a0 + 8) = 0x2d2;
        *(unsigned short *)((char *)a0 + 0x1e) = 0x2d2;
        *(unsigned short *)((char *)a0 + 0x1a) = 0x2d2;
        *(unsigned short *)((char *)a0 + 0x1c) = 0x2d2;
        *(unsigned short *)((char *)a0 + 0x18) = 0x2d2;
        s[0xa] = 0x2d2 - 1;
        *(unsigned int *)((char *)a0 + 0x70) = 0x8000;
        break;
    case 0x25:
        *(unsigned short *)((char *)a0 + 0xe) = 0x155;
        *(unsigned short *)((char *)a0 + 0xa) = 0x155;
        *(unsigned short *)((char *)a0 + 0xc) = 0x155;
        *(unsigned short *)((char *)a0 + 8) = 0x155;
        *(unsigned short *)((char *)a0 + 0x1e) = 0x155;
        *(unsigned short *)((char *)a0 + 0x1a) = 0x155;
        *(unsigned short *)((char *)a0 + 0x1c) = 0x155;
        *(unsigned short *)((char *)a0 + 0x18) = 0x155;
        s[0xa] = 0x155 - 1;
        *(unsigned int *)((char *)a0 + 0x70) = 0x8000;
        break;
    }
}

void Bird::m04() { m04__7DefaultFv(this); }

void Bird::m08() { m08__7DefaultFv(this); }
