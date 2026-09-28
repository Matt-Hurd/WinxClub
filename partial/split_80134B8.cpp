/* Two functions of split_80134B8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80134B8/ (sub_80134F8 was attempted and parked, see
 * notes/parked.md).
 */
#include "dword_803E374.hpp"

extern "C" void *__VTABLE__306dword_803E374;
extern "C" void sub_8041274(void *a0, void *a1, int a2, int a3);
extern "C" void *sub_803DA18(void *a0);
extern "C" void sub_80134F8(void *a0);

extern "C" void sub_80134B8(dword_803E374 *a0)
{
    *(void **)a0 = &__VTABLE__306dword_803E374;
    a0->field_2d = 0xff;
    a0->field_10 = 0;
    a0->field_2c = 0;
    a0->field_2e = 0xff;
    a0->field_22 = 0;
    a0->field_18 = 0;
    a0->field_1a = 0;
    a0->field_1e = 0;
    a0->field_20 = 0;
    a0->field_24 = 1;
    a0->field_1c = 0x11;
    a0->field_14 = 0;
    a0->field_30 = 0;
    a0->field_34 = 0;
    a0->field_48 = 0;
    a0->field_4c = 0;
    a0->field_50 = 0;
    a0->field_40 = 0;
    a0->field_44 = 0;
    a0->field_0e = 0;
    a0->field_3a = 0xffff;
    a0->field_3c = 0;
}

extern "C" void sub_801352C(dword_803E374 *a0)
{
    void *p48;
    void *p50;
    void *p4c;
    void *p14;
    void *p34;

    *(void **)a0 = &__VTABLE__306dword_803E374;
    sub_80134F8(a0);

    p48 = a0->field_48;
    if (p48) {
        p50 = a0->field_50;
        if (p50)
            sub_8041274(p50, p48, 0, 0);
        else
            operator delete[](p48);
    }

    p4c = a0->field_4c;
    if (p4c)
        sub_803DA18(p4c);

    p14 = a0->field_14;
    if (p14)
        operator delete[](p14);

    p34 = a0->field_34;
    if (p34)
        operator delete[](p34);
}
