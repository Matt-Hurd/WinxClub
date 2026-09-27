/* Functions of split_8036620; the rest of the unit is still assembly in
 * asm/nonmatching/split_8036620/. sub_80367C0 is slot +0x60 of the class
 * labelled Static1.
 */
#include "Static1.hpp"

void Static1::m60()
{
}

extern "C" void HostileCreature__ctor(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);
extern "C" int __VTABLE__323Static1;

/* sub_803666C: Static1's m00 (the scalar deleting destructor slot) resets
 * the vtable to its own, delegates the shared teardown to
 * HostileCreature__ctor, then optionally deletes -- same shape as
 * sub_802BA72 in split_802BA20.cpp.
 */
void Static1::m00(int a0)
{
    *(int *)this = (int)&__VTABLE__323Static1;
    HostileCreature__ctor(this, 0);
    if (a0) {
        sub_803DA18(this);
    }
}
