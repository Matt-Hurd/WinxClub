/* Two of split_8013FF4's three candidates; the rest of the unit, including
 * the parked sub_80141B4 (see notes/parked.md), is still assembly in
 * asm/nonmatching/split_8013FF4/. C++ evidence (cpp_evidence.py): the unit's
 * constructor (sub_8013FF8, still asm) calls `__nw__FUi` (operator new), and
 * the unit owns a vtable (`__VTABLE__320dword_803E6A0`) -- proven C++, so
 * this is .cpp. Neither is a vtable-slot label (Class__NN or a mangled
 * name), so both are written as free functions, not members.
 */
#include "generated/functions.h"

extern "C" void sub_8013FF4(void)
{
}

extern "C" void sub_8014060(void *a0, int a1, int a2)
{
    *(unsigned short *)((char *)a0 + 0x18) = (unsigned short)a1;
    *(unsigned short *)((char *)a0 + 0x1a) = (unsigned short)a2;
    *(unsigned short *)((char *)a0 + 0xe) |= 2;
}
