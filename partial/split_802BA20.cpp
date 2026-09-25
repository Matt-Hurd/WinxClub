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
