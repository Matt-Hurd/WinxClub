/* Two functions of split_80163D4; the rest of the unit is still assembly in
 * asm/nonmatching/split_80163D4/. Proven C++ (cpp_evidence.py: __da__FPv,
 * which is operator delete[] here, same as split_8013B64.cpp).
 */
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
        unsigned char *p1 = (unsigned char *)a0 + 0xf0;

        if (p1[8] != 0) {
            void *ptr = *(void **)((char *)a0 + 0x3c);
            unsigned int flag = *(unsigned int *)ptr & 1;

            if (flag)
                sub_80401E4(ptr, 0);

            p1[8] = 4;
            *(unsigned short *)((char *)a0 + 0xfa) = 0;
            sub_8028C2E((char *)gUnknown_0300345C + 0x100);
        }
        break;
    }
    }
}

extern "C" int sub_801642C(void *a0, void **a1)
{
    unsigned char event = *(unsigned char *)*a1;
    void **dtor_slot = (void **)((char *)a0 + 0x100);

    switch (event) {
    case 0x19:
        if (*(unsigned short *)((char *)a0 + 0x17e) == 0xffff) {
            if (*dtor_slot != 0)
                operator delete[](*dtor_slot);
            *dtor_slot = 0;
            return 1;
        }
        return 0;
    case 0x1a:
        if (*((unsigned char *)a0 + 0x363) == 0xff) {
            if (*dtor_slot != 0)
                operator delete[](*dtor_slot);
            *dtor_slot = 0;
            return 1;
        }
        return 0;
    case 0x1b:
        return 1 - (((unsigned char *)a0 + 0xf0)[8] != 0);
    default:
        return 0;
    }
}
