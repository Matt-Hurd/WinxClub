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
    *(int *)a0 = (int)&__VTABLE__321dword_803E700;
    *(unsigned char *)((char *)a0 + 0xc) = 1;
    *(int *)((char *)a0 + 0x54) = 0;
    *(int *)((char *)a0 + 0x58) = 0;
    *(int *)((char *)a0 + 0x5c) = 0;
    *(int *)((char *)a0 + 0x60) = 0;
    *(int *)((char *)a0 + 0x64) = 0;
    *(int *)((char *)a0 + 0x68) = 0;
    *(int *)((char *)a0 + 0x70) = 0;
    *(unsigned char *)((char *)a0 + 0x6e) = 0;
    *(unsigned char *)((char *)a0 + 0x6f) = 0;
    *(unsigned char *)((char *)a0 + 0x6c) = 0;
    *(unsigned char *)((char *)a0 + 0x6d) = 0;
    *(unsigned char *)((char *)a0 + 0x74) = 0xff;
    *(unsigned char *)((char *)a0 + 0x75) = 0xff;

    sub_8013E2C(a0);
    return a0;
}

extern "C" void sub_8014436(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__321dword_803E700;

    if (*(int *)((char *)a0 + 0x54) != 0) {
        sub_803F5FC(a0, *(int *)((char *)a0 + 0x54),
                    *(int *)((char *)a0 + 0x58), *(int *)((char *)a0 + 0x5c));
    }
    if (*(int *)((char *)a0 + 0x60) != 0) {
        sub_803F5FC(a0, *(int *)((char *)a0 + 0x60),
                    *(int *)((char *)a0 + 0x64), *(int *)((char *)a0 + 0x68));
    }

    sub_803F55C(a0);

    *(int *)((char *)a0 + 0x54) = 0;
    *(int *)((char *)a0 + 0x60) = 0;
    *(unsigned char *)((char *)a0 + 0x6e) = 0;
    *(unsigned char *)((char *)a0 + 0x6f) = 0;

    sub_80134F8(a0);
    sub_801352C(a0, 0);

    if (a1) {
        sub_803DA18(a0);
    }
}
