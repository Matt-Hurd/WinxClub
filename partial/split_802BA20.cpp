/* One function of split_802BA20; the rest of the unit is still assembly in
 * asm/nonmatching/split_802BA20/. sub_802BA20 is a free function, not a
 * vtable slot (its working label is not Class__NN or a mangled name), so it
 * stays a plain function even though the unit is proven C++. r0 (a0) is
 * still live at each `bl`, unclobbered since entry, so the three callees
 * take it as their own argument.
 */

extern "C" void sub_802B670(void *a0);
extern "C" void sub_802B6F4(void *a0);
extern "C" void sub_802B8B0(void *a0);

extern "C" void sub_802BA20(void *a0)
{
    switch (*((unsigned char *)a0 + 2)) {
    case 0:
        break;
    case 1:
        sub_802B6F4(a0);
        break;
    case 2:
        sub_802B670(a0);
        break;
    case 3:
        sub_802B8B0(a0);
        break;
    }
}

/* sub_802BA72 and sub_802BA4C share dword_803E32C's vtable pointer; the
 * class's constructor (sub_802E418) and its m00 destructor slot
 * (sub_802E4AA, split_802E418.cpp) are already matched elsewhere, so both
 * of these are the "install the vtable, then call the shared helper"
 * shape seen in sub_8002614 (split_8002580.cpp).
 */
extern "C" void *sub_802E418(void *a0);
extern "C" void sub_802E4AA(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);
extern "C" int __VTABLE__304dword_803E32C;

/* sub_802BA72: install the vtable, run m00's shared init (sub_802E4AA with
 * a delete-flag of 0), then optionally sub_803DA18(a0) if asked.
 */
extern "C" void sub_802BA72(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__304dword_803E32C;
    sub_802E4AA(a0, 0);
    if (a1) {
        sub_803DA18(a0);
    }
}

/* sub_802BA4C: allocate if a0 is null (operator new(0x40)); an early
 * `return a0;` on allocation failure keeps its own exit (the ROM sets r0
 * separately on each path, sharing only the pop/pop/bx tail), so this is
 * written as two literal returns, not one shared exit --
 * repeated-if-return-tests-share-one-exit-only-with-goto.md is the same
 * idea the other way around (a single shared exit needs a goto; here two
 * *separate* exits need two literal `return`s, not one folded together).
 */
extern "C" void *sub_802BA4C(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x40);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_802E418(a0);
    *(int *)a0 = (int)&__VTABLE__304dword_803E32C;
    return a0;
}
