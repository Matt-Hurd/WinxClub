/* Three of split_80142D0's six functions; maybePauseUnpauseTransition (see
 * notes/parked.md) and sub_80142D0/sub_8014582 are still assembly in
 * asm/nonmatching/split_80142D0/ and asm/split/split_80142D0.s. cpp_evidence.py
 * proves the unit C++ via __nw__FUi (operator new); none of these three is a
 * vtable slot, so they are written as plain free functions, extern "C" to keep
 * their working names, the same shape as partial/split_8004670.cpp.
 *
 * sub_80143E0 is dword_803E700's allocate-or-reuse constructor: `operator
 * new` on a null a0, then the fields it initialises, ending with the
 * constructed object's address -- config/symbols.yml's decl for it predates
 * that return, and is not renamed here.
 */

#include "EntityState.h"

extern "C" void *sub_80134B8(void *a0);
extern "C" void sub_8013E2C(void *a0);
extern "C" void sub_803F5FC(void *a0, int a1, int a2, int a3);
extern "C" void sub_803F55C(void *a0);
extern "C" void sub_80134F8(void *a0);
extern "C" void sub_801352C(void *a0, int a1);
extern "C" void *sub_803DA18(void *a0);

extern "C" int __VTABLE__321dword_803E700;

extern "C" void sub_8014492(void)
{
}

extern "C" void *sub_80143E0(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x78);
        if (a0 == 0)
            return a0;
    }

    sub_80134B8(a0);
    ((struct EntityState *)a0)->field_00 = &__VTABLE__321dword_803E700;
    ((struct EntityState *)a0)->field_0c = 1;
    ((struct EntityState *)a0)->field_54 = 0;
    ((struct EntityState *)a0)->field_58 = 0;
    ((struct EntityState *)a0)->field_5c = 0;
    ((struct EntityState *)a0)->field_60 = 0;
    ((struct EntityState *)a0)->field_64 = 0;
    ((struct EntityState *)a0)->field_68 = 0;
    ((struct EntityState *)a0)->field_70 = 0;
    ((struct EntityState *)a0)->field_6e = 0;
    ((struct EntityState *)a0)->field_6f = 0;
    ((struct EntityState *)a0)->field_6c = 0;
    ((struct EntityState *)a0)->field_6d = 0;
    ((struct EntityState *)a0)->field_74 = 0xff;
    ((struct EntityState *)a0)->field_75 = 0xff;

    sub_8013E2C(a0);
    return a0;
}

extern "C" void sub_8014436(void *a0, int a1)
{
    ((struct EntityState *)a0)->field_00 = &__VTABLE__321dword_803E700;

    if (((struct EntityState *)a0)->field_54 != 0) {
        sub_803F5FC(a0, (int)((struct EntityState *)a0)->field_54,
                    ((struct EntityState *)a0)->field_58,
                    ((struct EntityState *)a0)->field_5c);
    }
    if (((struct EntityState *)a0)->field_60 != 0) {
        sub_803F5FC(a0, (int)((struct EntityState *)a0)->field_60,
                    ((struct EntityState *)a0)->field_64,
                    ((struct EntityState *)a0)->field_68);
    }

    sub_803F55C(a0);

    ((struct EntityState *)a0)->field_54 = 0;
    ((struct EntityState *)a0)->field_60 = 0;
    ((struct EntityState *)a0)->field_6e = 0;
    ((struct EntityState *)a0)->field_6f = 0;

    sub_80134F8(a0);
    sub_801352C(a0, 0);

    if (a1) {
        sub_803DA18(a0);
    }
}
