/* Two functions of split_802DFF4; the rest of the unit stays assembly in
 * asm/nonmatching/split_802DFF4/. cpp_evidence.py proves the unit C++ via
 * __nw__FUi (winx-iez.51).
 */
#include "generated/functions.h"
#include "generated/globals.h"

extern "C" void sub_802E418(void *a0);
extern "C" void sub_802E4AA(void *a0, int a1);
extern "C" int __VTABLE__376dword_803EDA0;

extern "C" void *sub_802DFF4(void *a0)
{
    void *obj = a0;

    if (!obj) {
        obj = operator new(0x40);
        if (!obj)
            return obj;
    }

    sub_802E418(obj);
    *(int *)obj = (int)&__VTABLE__376dword_803EDA0;
    ((unsigned char *)obj)[0x3c] = (unsigned char)(((unsigned char *)obj)[0x3c] >> 1) << 1;
    ((unsigned char *)obj)[0x3f] = 0;
    return obj;
}

extern "C" void sub_802E02A(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__376dword_803EDA0;
    sub_802E4AA(a0, 0);
    if (a1)
        sub_803DA18(a0);
}
