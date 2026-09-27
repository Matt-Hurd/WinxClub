/* Two functions of split_8002580; the rest of the unit is still assembly in
 * asm/nonmatching/split_8002580/. cpp_evidence.py: C++ proven (a __nw__FUi
 * operator-new call elsewhere in the unit), so it is spliced as .cpp.
 *
 * sub_8002614 is Singleton_3EB0's deleting destructor: it pokes the vtable
 * pointer by hand rather than being written as a real ~Singleton_3EB0(),
 * the same shape as g3003448__Init in partial/split_8000D64.cpp. It briefly
 * sets a0's vtable to dword_803EC74's before calling sub_80025D6 (so that
 * call cannot re-dispatch through a partially torn-down Singleton_3EB0
 * vtable), then restores Singleton_3EB0's own vtable and clears the
 * singleton pointer gUnknown_03003EB0 (matching src/Singleton_3EB0.cpp's
 * ~Singleton_3EB0()) before an optional delete.
 *
 * sub_8002614 calls sub_80025D6, both in this TU: tcpp inlines the whole
 * body instead of emitting a bl unless the call is routed through a
 * function-pointer variable first
 * (notes/quirks/a-function-pointer-variable-defeats-same-tu-inlining.md).
 */
#include "generated/functions.h"
#include "Singleton_3EB0.hpp"

extern "C" void sub_803D9A8(void *a0, int a1, int a2);
extern "C" int __VTABLE__349dword_803EC74;
extern "C" int __VTABLE__14Singleton_3EB0;

extern "C" void sub_80025D6(void *a0)
{
    int i;

    for (i = 0; i < 4; i++) {
        char *base = (char *)a0 + i * 4;
        if (*(void **)(base + 0xc)) {
            sub_803D9A8(*(void **)(base + 0xc), 0, 0);
            *(void **)(base + 0xc) = 0;
        }
    }
    {
        char *base = (char *)a0 + 0x800;
        if (*(void **)(base + 0x20)) {
            sub_803D9A8(*(void **)(base + 0x20), 0, 0);
            *(void **)(base + 0x20) = 0;
        }
    }
}

extern "C" void sub_8002614(void *a0, int a1)
{
    void (*fn)(void *) = sub_80025D6;

    *(int *)a0 = (int)&__VTABLE__349dword_803EC74;
    fn(a0);
    *(int *)a0 = (int)&__VTABLE__14Singleton_3EB0;
    gUnknown_03003EB0 = 0;
    if (a1) {
        sub_803DA18(a0);
    }
}
