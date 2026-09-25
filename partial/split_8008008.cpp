/* Seven functions of split_8008008; the rest of the unit is still assembly in
 * asm/nonmatching/split_8008008/. cpp_evidence.py proves this unit C++ (an
 * __nw__FUi operator-new call in sub_8008008), so it is spliced as .cpp.
 * None of the six are vtable slots -- plain sub_ labels -- so they are
 * unmangled `extern "C"` free functions, same convention as
 * partial/split_800B464.cpp.
 *
 * sub_800807C (12 lines) and sub_800808E (58 lines) are parked --
 * register-allocation-is-the-stop-signal, see notes/parked.md -- and stay
 * in asm/nonmatching/split_8008008/, which the splicer pulls in on its own
 * since they are not named here.
 */

extern "C" void *sub_8008008(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x18);
        if (a0 == 0) {
            return a0;
        }
    }
    *(int *)((char *)a0 + 0x0) = 0;
    *(int *)((char *)a0 + 0x4) = 0;
    *(int *)((char *)a0 + 0x8) = 0;
    *(char *)((char *)a0 + 0xc) = 1;
    *(int *)((char *)a0 + 0x10) = 0;
    *(int *)((char *)a0 + 0x14) = 0;
    return a0;
}

extern "C" int sub_80080FC(void)
{
    return 0;
}

extern "C" int sub_8008100(void *a0)
{
    return *(int *)((char *)a0 + 0x18) == 0;
}

extern "C" int sub_8008118(void)
{
    return 0;
}

extern "C" int sub_800811C(void)
{
    return 0;
}

extern "C" void sub_8008120(void)
{
}

/* Written in field order 0, 4, 8; tcpp itself schedules the register-ready
 * a1 store between the two zero stores, which is the ROM's zero, a1, zero.
 */
extern "C" void sub_80081B6(void *a0, int a1)
{
    *(int *)((char *)a0 + 0x0) = 0;
    *(int *)((char *)a0 + 0x4) = 0;
    *(int *)((char *)a0 + 0x8) = a1;
}
