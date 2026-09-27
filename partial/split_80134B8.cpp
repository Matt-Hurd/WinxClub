/* Two functions of split_80134B8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80134B8/ (sub_80134F8 was attempted and parked, see
 * notes/parked.md). The vtable slot-0 store and the field teardown are plain
 * pointer arithmetic here rather than a named class: nothing here says what
 * class owns this layout.
 */

extern "C" void *__VTABLE__306dword_803E374;
extern "C" void sub_8041274(void *a0, void *a1, int a2, int a3);
extern "C" void *sub_803DA18(void *a0);
extern "C" void sub_80134F8(void *a0);

extern "C" void sub_80134B8(void *a0)
{
    *(void **)a0 = &__VTABLE__306dword_803E374;
    *((unsigned char *)a0 + 0x2d) = 0xff;
    *((unsigned char *)a0 + 0x10) = 0;
    *((unsigned char *)a0 + 0x2c) = 0;
    *((unsigned char *)a0 + 0x2e) = 0xff;
    *(unsigned short *)((char *)a0 + 0x22) = 0;
    *(unsigned short *)((char *)a0 + 0x18) = 0;
    *(unsigned short *)((char *)a0 + 0x1a) = 0;
    *(unsigned short *)((char *)a0 + 0x1e) = 0;
    *(unsigned short *)((char *)a0 + 0x20) = 0;
    *(unsigned int *)((char *)a0 + 0x24) = 1;
    *((unsigned char *)a0 + 0x1c) = 0x11;
    *(unsigned int *)((char *)a0 + 0x14) = 0;
    *(unsigned int *)((char *)a0 + 0x30) = 0;
    *(unsigned int *)((char *)a0 + 0x34) = 0;
    *(unsigned int *)((char *)a0 + 0x48) = 0;
    *(unsigned int *)((char *)a0 + 0x4c) = 0;
    *(unsigned int *)((char *)a0 + 0x50) = 0;
    *(unsigned int *)((char *)a0 + 0x40) = 0;
    *(unsigned int *)((char *)a0 + 0x44) = 0;
    *(unsigned short *)((char *)a0 + 0xe) = 0;
    *(unsigned short *)((char *)a0 + 0x3a) = 0xffff;
    *(unsigned short *)((char *)a0 + 0x3c) = 0;
}

extern "C" void sub_801352C(void *a0)
{
    void *p48;
    void *p50;
    void *p4c;
    void *p14;
    void *p34;

    *(void **)a0 = &__VTABLE__306dword_803E374;
    sub_80134F8(a0);

    p48 = *(void **)((char *)a0 + 0x48);
    if (p48) {
        p50 = *(void **)((char *)a0 + 0x50);
        if (p50)
            sub_8041274(p50, p48, 0, 0);
        else
            operator delete[](p48);
    }

    p4c = *(void **)((char *)a0 + 0x4c);
    if (p4c)
        sub_803DA18(p4c);

    p14 = *(void **)((char *)a0 + 0x14);
    if (p14)
        operator delete[](p14);

    p34 = *(void **)((char *)a0 + 0x34);
    if (p34)
        operator delete[](p34);
}
