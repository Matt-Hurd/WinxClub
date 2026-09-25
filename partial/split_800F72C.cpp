/* Three functions of split_800F72C; the rest of the unit is still assembly in
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
