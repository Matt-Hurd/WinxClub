/* Ten functions of split_800F72C; the rest of the unit is still assembly in
 * asm/nonmatching/split_800F72C/.
 */

extern "C" int sub_800F77C(void)
{
    return 0x89 << 2;
}

extern "C" int sub_800F7A8(void *a0)
{
    typedef unsigned int (*Fn)(void *);
    void *self = a0;
    int *vtbl = *(int **)a0;
    Fn fn = (Fn)(vtbl[6] + (int)vtbl);
    unsigned int pos = fn(self);
    unsigned short consumed = *(unsigned short *)((char *)a0 + 0x84);
    int capacity;
    pos = (pos >> 1) << 1;
    if (consumed >= pos)
        goto wrapped;
    return pos - consumed;
wrapped:
    capacity = 1 << *(int *)((char *)a0 + 8);
    return (capacity - consumed) + pos;
}

extern "C" void sub_80132F4(int *a0);

extern "C" void sub_800F944(void *a0)
{
    *(unsigned short *)((char *)a0 + 0x84) = 0;
    *(int *)((char *)a0 + 0x80) = *(int *)((char *)a0 + 0x7c);
    *(int *)((char *)a0 + 0x88) = *(int *)((char *)a0 + 0x78);

    sub_80132F4(*(int **)((char *)a0 + 0x6c));

    *(int *)(*(char **)((char *)a0 + 0x6c) + 0x200 + 0x20) =
        *(int *)((char *)a0 + 0x78);
    *(int *)(*(char **)((char *)a0 + 0x6c) + 0x200 + 0x1c) = 0;
}

extern "C" void sub_800F782(void *a0, void *a1)
{
    *(void **)((char *)a0 + 0x6c) = a1;
}

extern "C" void sub_800FB48(void *a0);
extern "C" int __VTABLE__314dword_803E5C8;

extern "C" void *sub_800F72C(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x8c);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_800FB48(a0);
    *(int *)a0 = (int)&__VTABLE__314dword_803E5C8;
    *(int *)((char *)a0 + 0x6c) = 0;
    *(int *)((char *)a0 + 0x88) = 0;
    return a0;
}

extern "C" void sub_800FB72(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);

extern "C" void sub_800F75A(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__314dword_803E5C8;
    sub_800FB72(a0, 0);
    if (a1) {
        sub_803DA18(a0);
    }
}

extern "C" void nullsub_5(void *a0, int a1, int a2);
extern "C" void *gUnknown_03003E84;

extern "C" void sub_800F786(void *a0)
{
    void *chan = (char *)a0 + 0x80;
    int v88 = *(int *)((char *)chan + 8);

    if (v88 != 0 && (*(int *)((char *)a0 + 0x5c) << 30) != 0) {
        void *g = gUnknown_03003E84;
        int pos = *(int *)chan;
        nullsub_5(g, v88, pos);
    }
}
