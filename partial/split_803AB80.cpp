/* Two of split_803AB80's four functions; sub_803ABC8 and sub_803AD40 are not
 * part of this conversion and stay assembly in
 * asm/nonmatching/split_803AB80/ (sub_803AD40 is parked, see
 * notes/parked.md). cpp_evidence.py proves the unit C++ via __nw__FUi
 * (operator new).
 *
 * Neither of these two is a vtable slot (no hex-offset working label), so
 * both stay plain extern "C" free functions. sub_803ABA6 is the
 * base-construction shape already proven for sibling classes (sub_803AE92,
 * partial/split_803AE60.cpp; sub_802BA72, partial/split_802BA20.cpp): set
 * the vtable, call the base's own m00 (sub_802E4AA, per
 * partial/split_802E418.cpp's slot comment) with a delete-flag of 0, then
 * conditionally sub_803DA18(a0). sub_803AB80 is the matching allocate-if-null
 * constructor around it -- operator new(0x40), the base ctor sub_802E418
 * (parked in asm, split_802E418.cpp), then the vtable store, same shape as
 * sub_802BA4C (split_802BA20.cpp) but with no extra field of its own.
 */

extern "C" void sub_802E4AA(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);
extern "C" int __VTABLE__373dword_803ED4C;

extern "C" void sub_803ABA6(void *a0, int a1)
{
    *(void **)a0 = &__VTABLE__373dword_803ED4C;
    sub_802E4AA(a0, 0);
    if (a1)
        sub_803DA18(a0);
}

extern "C" void sub_802E418(void *a0);

extern "C" void *sub_803AB80(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x40);
        if (a0 == 0)
            return a0;
    }
    sub_802E418(a0);
    *(void **)a0 = &__VTABLE__373dword_803ED4C;
    return a0;
}
