/* One function of split_8017474; the rest of the unit is still assembly in
 * asm/nonmatching/split_8017474/. sub_80175D4 is the mirror teardown of the
 * allocating-constructor idiom (partial/split_801343C.cpp, partial/
 * split_80164A8.cpp): derived vtable first, then delete[] 64 array entries
 * through a self-relative function-pointer call (same shape as
 * sub_80164E6 in partial/split_80164A8.cpp), then Singleton_3E88's own
 * destructor body inlined (base vtable, clear the singleton pointer), then
 * the optional operator delete.
 */
#include "Singleton_3E88.hpp"
#include "SlotManager.h"
#include "generated/functions.h"

extern int __VTABLE__14Singleton_3E88;
extern int __VTABLE__325dword_803E864;

extern "C" void sub_80175D4(struct SlotManager *a0, unsigned int a1)
{
    void *elem;
    unsigned char i;

    a0->vtable = &__VTABLE__325dword_803E864;

    elem = a0->field_0c;
    if (elem != 0) {
        void *base = *(void **)elem;
        void (*fn)(void *, int) = (void (*)(void *, int))(*(int *)base + (int)base);
        fn(elem, 1);
    }

    for (i = 0; i < 0x40; i++) {
        operator delete[](a0->field_18[i]);
    }

    a0->vtable = &__VTABLE__14Singleton_3E88;
    gUnknown_03003E88 = 0;

    if (a1 != 0) {
        sub_803DA18(a0);
    }
}
