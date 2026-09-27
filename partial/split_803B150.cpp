/* Three functions of split_803B150; the rest of the unit is still assembly
 * in asm/nonmatching/split_803B150/. sub_803B150 is slot +0x10 of the class
 * labelled dword_803EDC4; sub_803B1A8 and sub_803B1AC are +0x10 and +0x14 of
 * the class labelled dword_803EC7C.
 *
 * sub_802E47A is the +0x10 body most of this vtable family shares; it stays
 * assembly and is declared as a plain function here, since the stub headers
 * carry no inheritance yet.
 */
#include "dword_803EDC4.hpp"
#include "dword_803EC7C.hpp"

extern "C" void sub_802E47A(void *a0);

void dword_803EDC4::m10()
{
    sub_802E47A(this);
}

int dword_803EC7C::m10()
{
    return 0;
}

void dword_803EC7C::m14()
{
}

extern "C" void sub_803B1A6(void *a0)
{
}

extern "C" void sub_80105AE(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);
extern "C" int __VTABLE__351dword_803EC7C;

extern "C" void sub_803B184(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__351dword_803EC7C;
    sub_80105AE(a0, 0);
    if (a1) {
        sub_803DA18(a0);
    }
}

extern "C" void sub_8010574(void *a0, int a1);

extern "C" void *sub_803B15C(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x172c);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_8010574(a0, 0);
    *(void **)a0 = &__VTABLE__351dword_803EC7C;
    return a0;
}
