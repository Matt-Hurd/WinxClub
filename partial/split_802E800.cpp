/* One function of split_802E800; the rest of the unit is still assembly in
 * asm/nonmatching/split_802E800/. sub_802E8F8 is slot +0x1C of the class
 * labelled dword_803E2A0, whose vtable is the sub_802E4xx..8xx set that
 * dword_803EA68, dword_803ECF8 and dword_803EDC4 inherit this slot from, so
 * it is defined on that class. The ROM is `movs r0, #0` / `bx lr`.
 */
#include "dword_803E2A0.hpp"

int dword_803E2A0::m1C()
{
    return 0;
}
