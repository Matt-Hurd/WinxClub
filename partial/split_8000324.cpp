/* Two functions of split_8000324; sub_8000324, sub_80003F4 and sub_8000532
 * are not part of this conversion and stay assembly in
 * asm/nonmatching/split_8000324/ (sub_8000324 and sub_80003F4 are parked,
 * see notes/parked.md). sub_80004F8 is also parked, likewise assembly
 * there. cpp_evidence.py proves the unit C++ via __nw__FUi (operator new);
 * neither of these two is a vtable slot, so they are plain extern "C" free
 * functions.
 */

extern "C" void *sub_80004E6(void *a0)
{
    if (a0 == 0)
        a0 = operator new(0x60);
    return a0;
}

extern "C" void *sub_80004CA(void *a0)
{
    if (a0 == 0)
    {
        a0 = operator new(0x60);
        if (a0 == 0)
            return a0;
    }
    *(unsigned char *)((char *)a0 + 0x51) = 0;
    return a0;
}
