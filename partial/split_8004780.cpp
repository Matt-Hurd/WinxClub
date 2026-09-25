/* Ten of split_8004780's twelve assigned functions; the rest of the unit is
 * still assembly in asm/nonmatching/split_8004780/. cpp_evidence.py proves
 * this unit C++ (an __nw__FUi operator-new call in sub_80047EC), so it is
 * spliced as .cpp. None of the ten are vtable slots -- plain sub_ labels --
 * so they are unmangled `extern "C"` free functions, same convention as
 * partial/split_8008008.cpp.
 *
 * sub_8004784 and sub_8004984 (18 lines, 48 bytes) are parked --
 * register-allocation-is-the-stop-signal, see notes/parked.md -- and stay in
 * asm/nonmatching/split_8004780/{sub_8004784,sub_8004984}.s, which the
 * splicer pulls in on its own since they are not named here.
 */

extern "C" void *memcpy(void *, const void *, unsigned int);

extern "C" int sub_8004780(unsigned int a0)
{
    return a0 >> 30;
}

extern "C" unsigned char sub_80047A0(void *a0, int a1)
{
    unsigned short v = *(unsigned short *)a0;
    unsigned int r;
    if (a1 != 0) {
        r = v & 0x3F;
    } else {
        r = (v >> 8) & 0x3F;
    }
    return (unsigned char)r;
}

extern "C" void *sub_80047EC(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x14);
        if (a0 == 0) {
            return a0;
        }
    }
    *(int *)((char *)a0 + 0x0) = 0;
    *(int *)((char *)a0 + 0x4) = 0;
    *(short *)((char *)a0 + 0x8) = 0;
    *(short *)((char *)a0 + 0xa) = 0;
    *(char *)((char *)a0 + 0xc) = 0;
    *(short *)((char *)a0 + 0xe) = 0;
    *(char *)((char *)a0 + 0x10) = 0;
    return a0;
}

extern "C" int sub_80048B0(void *a0)
{
    return *(unsigned short *)((char *)a0 + 8) != 0;
}

extern "C" int sub_80048F0(void *a0, void *a1)
{
    unsigned short count = *(unsigned short *)((char *)a0 + 8);
    if (count == 0) {
        return 0;
    }
    void *begin = *(void **)a0;
    void *end = *(void **)((char *)a0 + 4);
    int len = (int)((char *)end + 2 - (char *)begin) + 2;
    if (a1 != 0) {
        memcpy(a1, begin, len - 2);
        *(unsigned short *)((char *)a1 + len - 2) = *(unsigned short *)((char *)a0 + 8);
    }
    return len;
}

extern "C" void sub_8004ADC(void *a0)
{
    *(unsigned short *)((char *)a0 + 6) = 0;
    *(unsigned short *)((char *)a0 + 8) = 0;
    *(unsigned short *)((char *)a0 + 4) = 0;
}

extern "C" int sub_8004AF4(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 0x14) >> 3) & 1;
}

extern "C" void sub_8004AFC(void *a0, int a1, int a2, int a3)
{
    *(unsigned short *)((char *)a0 + 0xa) = (unsigned short)a3;
    *(unsigned short *)((char *)a0 + 0xc) = (unsigned short)a1;
}

extern "C" int sub_8004B38(void *a0)
{
    return *(unsigned int *)((char *)a0 + 0x14) & 1;
}

extern "C" int sub_8004B8C(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 0x14) >> 2) & 1;
}
