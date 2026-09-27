/* One function of split_8037E48; sub_8037E74 was attempted and parked (see
 * notes/parked.md), and the rest of the unit, including sub_8037EB2, is
 * still assembly in asm/nonmatching/split_8037E48/. cpp_evidence.py proves
 * the unit C++ via __nw__FUi (operator new).
 *
 * sub_8037E48 is dword_803E350's constructor, the same allocate-if-null
 * shape as sub_802BA4C / sub_803772C (dword_803EB10's own constructor,
 * partial/split_803772C.cpp).
 */

extern "C" void *sub_802E418(void *a0);
extern "C" int __VTABLE__305dword_803E350;

extern "C" void *sub_8037E48(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x48);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_802E418(a0);
    *(int *)a0 = (int)&__VTABLE__305dword_803E350;
    *((unsigned char *)a0 + 0x45) = 0;
    return a0;
}
