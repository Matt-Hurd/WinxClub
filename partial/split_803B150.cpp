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
