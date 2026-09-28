/* Two functions of split_80163D4; the rest of the unit is still assembly in
 * asm/nonmatching/split_80163D4/. Proven C++ (cpp_evidence.py: __da__FPv,
 * which is operator delete[] here, same as split_8013B64.cpp). `a0` is an
 * Anonymous3 * (include/Anonymous3.hpp).
 */
#include "Anonymous3.hpp"

extern "C" void sub_8016176(void *a0);
extern "C" void sub_80162D6(void *a0);
extern "C" void sub_80401E4(void *a0, int a1);
extern "C" void sub_8028C2E(void *a0);
extern "C" void *gUnknown_0300345C;

extern "C" void sub_80163D4(void *a0, void **a1)
{
    unsigned char event = *(unsigned char *)*a1;

    switch (event) {
    case 0x19:
        sub_80162D6(a0);
        break;
    case 0x1a:
        sub_8016176(a0);
        break;
    case 0x1b:
    {
        /* a0+0xf0, not ((Anonymous3 *)a0)->field_f8 directly: removing
         * this split moves a byte (quirks/offset-split-tells-you-where-
         * the-field-boundary-is.md) -- 0xf0 looks like a real boundary
         * this ticket does not claim, not just tcc's own constant
         * synthesis. */
        unsigned char *p1 = (unsigned char *)a0 + 0xf0;

        if (p1[8] != 0) {
            void *ptr = ((Anonymous3 *)a0)->field_3c;
            unsigned int flag = *(unsigned int *)ptr & 1;

            if (flag)
                sub_80401E4(ptr, 0);

            p1[8] = 4;
            ((Anonymous3 *)a0)->field_fa = 0;
            sub_8028C2E((char *)gUnknown_0300345C + 0x100);
        }
        break;
    }
    }
}

extern "C" int sub_801642C(void *a0, void **a1)
{
    unsigned char event = *(unsigned char *)*a1;
    void **dtor_slot = &((Anonymous3 *)a0)->field_100;

    switch (event) {
    case 0x19:
        if (((Anonymous3 *)a0)->field_17e == 0xffff) {
            if (*dtor_slot != 0)
                operator delete[](*dtor_slot);
            *dtor_slot = 0;
            return 1;
        }
        return 0;
    case 0x1a:
        if (((Anonymous3 *)a0)->field_363 == 0xff) {
            if (*dtor_slot != 0)
                operator delete[](*dtor_slot);
            *dtor_slot = 0;
            return 1;
        }
        return 0;
    case 0x1b:
        /* same 0xf0-then-+8 split as sub_80163D4's own 0x1b case; see its
         * comment. */
        return 1 - (((unsigned char *)a0 + 0xf0)[8] != 0);
    default:
        return 0;
    }
}
