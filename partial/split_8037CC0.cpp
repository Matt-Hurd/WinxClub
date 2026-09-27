/* Two functions of split_8037CC0; the rest of the unit is still assembly in
 * asm/nonmatching/split_8037CC0/. sub_8037E34 is slot +0x1C of the class
 * labelled dword_803EB10.
 *
 * sub_8037CC0 is a free function, not a vtable slot (no hex-offset working
 * label): it forwards into the base's own m10 (sub_802E47A, per
 * partial/split_802E418.cpp's slot comment), then frees one field of its
 * own if set.
 */
#include "dword_803EB10.hpp"
#include "Singleton_3EB8.hpp"

unsigned char dword_803EB10::m1C()
{
    return *((unsigned char *)this + 0x40);
}

extern "C" void sub_802E47A(void *a0);
extern "C" void sub_8000DE6(void *a0, void *a1);

extern "C" void sub_8037CC0(void *a0)
{
    sub_802E47A(a0);
    if (*(int *)((char *)a0 + 0x3c) != 0) {
        sub_8000DE6(gUnknown_03003EB8, (char *)a0 + 0x3c);
        *(int *)((char *)a0 + 0x3c) = 0;
    }
}
