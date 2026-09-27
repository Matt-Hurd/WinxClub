/* Five functions of split_801CB18; the rest of the unit is still assembly
 * in asm/nonmatching/split_801CB18/. sub_801CB4E and sub_801CBDE were tried
 * but parked -- see notes/parked.md.
 */

void sub_801CB18(void *a0, unsigned int a1, unsigned int a2)
{
    unsigned short first = (*(unsigned short **)((char *)a0 + 0x1b0))[a1];
    unsigned int i;

    for (i = a1; i < a1 + a2 - 1; i++) {
        (*(unsigned short **)((char *)a0 + 0x1b0))[i] =
            (*(unsigned short **)((char *)a0 + 0x1b0))[i + 1];
    }

    (*(unsigned short **)((char *)a0 + 0x1b0))[a1 + a2 - 1] = first;
}

void sub_801CBAA(void *a0, unsigned int a1)
{
    unsigned int i = 0;
    unsigned int count;

    count = (*(unsigned int *)((char *)a0 + 0x51c) << 24) >> 25;
    if (count == 0)
        goto end;
next:
    sub_801F640(*(void **)((char *)a0 + i * 4 + 0x20), a1);
    i++;
    count = (*(unsigned int *)((char *)a0 + 0x51c) << 24) >> 25;
    if (count > i)
        goto next;
end:
    ;
}

void sub_801CC72(void *a0)
{
    unsigned int i = 0;
    unsigned int count;
    void *obj;
    int *vtbl;

    count = (*(unsigned int *)((char *)a0 + 0x51c) << 24) >> 25;
    if (count == 0)
        goto end;
next:
    obj = *(void **)((char *)a0 + i * 4 + 0x20);
    vtbl = *(int **)obj;
    ((void (*)(void *))((char *)vtbl + *(int *)((char *)vtbl + 0x1c)))(obj);
    i++;
    count = (*(unsigned int *)((char *)a0 + 0x51c) << 24) >> 25;
    if (count > i)
        goto next;
end:
    ;
}

void sub_801CC3C(void *a0)
{
    unsigned int i = 0;
    unsigned int count;
    void *obj;
    int *vtbl;

    count = (*(unsigned int *)((char *)a0 + 0x51c) << 24) >> 25;
    if (count == 0)
        goto end;
next:
    obj = *(void **)((char *)a0 + i * 4 + 0x20);
    vtbl = *(int **)obj;
    ((void (*)(void *))((char *)vtbl + *(int *)((char *)vtbl + 0x18)))(obj);
    i++;
    count = (*(unsigned int *)((char *)a0 + 0x51c) << 24) >> 25;
    if (count > i)
        goto next;
end:
    ;
}

void sub_801CCA8(void *a0)
{
    unsigned int i = 0;
    unsigned int count;
    void *obj;
    int *vtbl;

    count = (*(unsigned int *)((char *)a0 + 0x51c) << 24) >> 25;
    if (count == 0)
        goto end;
next:
    obj = *(void **)((char *)a0 + i * 4 + 0x20);
    vtbl = *(int **)obj;
    ((void (*)(void *))((char *)vtbl + *(int *)((char *)vtbl + 0x20)))(obj);
    i++;
    count = (*(unsigned int *)((char *)a0 + 0x51c) << 24) >> 25;
    if (count > i)
        goto next;
end:
    ;
}
