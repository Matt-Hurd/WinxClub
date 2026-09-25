/* Two of the three assigned functions of split_8001A60; the rest of the unit,
 * including the parked sub_8001BB4 (see notes/parked.md), is still assembly
 * in asm/nonmatching/split_8001A60/. cpp_evidence.py proves the unit C++ via
 * __nw__FUi (operator new) and __vecmap1c__ (used elsewhere in the unit);
 * neither of these is a vtable slot, so they are plain free functions.
 *
 * sub_8001B80 indexes an object with a count at +8 and an array of pointers
 * at +0x20, each element's first word carrying a small type tag in its low
 * 4 bits. sub_8001A60 zero-inits an unrelated, smaller object -- the two
 * share a unit only by address proximity.
 */

extern "C" void *sub_8001A60(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x2c);
    }
    if (a0 != 0) {
        *(int *)((char *)a0 + 0x0) = 0;
        *(int *)((char *)a0 + 0x4) = 0;
        *(int *)((char *)a0 + 0x8) = 0;
        *(int *)((char *)a0 + 0xc) = 0;
        *(unsigned char *)((char *)a0 + 0x10) = 0;
        *(int *)((char *)a0 + 0x14) = 0;
        *(unsigned char *)((char *)a0 + 0x18) = 0;
        *(int *)((char *)a0 + 0x1c) = 0;
        *(unsigned char *)((char *)a0 + 0x20) = 0;
        *(int *)((char *)a0 + 0x24) = 0;
        *(int *)((char *)a0 + 0x28) = 0;
    }
    return a0;
}

extern "C" void *sub_8001B80(void *a0, int a1, int a2)
{
    unsigned int count = *(unsigned int *)((char *)a0 + 8);
    unsigned int matched = 0;
    unsigned int i = 0;

    if (i < count) {
        a0 = *(void ***)((char *)a0 + 0x20);
        do {
            if ((*(int *)((void **)a0)[i] & 0xf) == a2) {
                if (matched == (unsigned int)a1)
                    return ((void **)a0)[i];
                matched++;
            }
            i++;
        } while (count > i);
    }
    return 0;
}
