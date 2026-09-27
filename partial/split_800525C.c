/* One function of split_800525C; the rest of the unit is still assembly in
 * asm/nonmatching/split_800525C/. An empty body is the whole function: tcc
 * emits the bare `bx lr` the ROM has, with no frame.
 */

void nullsub_1(void)
{
}

/* Reuses Singleton_3E84's vtable and gUnknown_03003E84 pointer, the same
 * shape as sub_800B286 in partial/split_800B154.c against a different
 * singleton. a4 (r0) is a dead first parameter here: the ROM never touches
 * it as data, only the moved copies in r1/r4. */
void *sub_800529A(void *a0, void *a1, unsigned int a2, void *a3)
{
    extern void *memcpy(void *, const void *, unsigned int);

    if (a3 != 0) {
        memcpy(a3, a1, a2);
        return a3;
    }
    return a1;
}

void sub_800527E(void *a0, int a1)
{
    extern int __VTABLE__14Singleton_3E84;
    extern void *gUnknown_03003E84;

    *(int *)a0 = (int)&__VTABLE__14Singleton_3E84;
    gUnknown_03003E84 = 0;
    if (a1) {
        sub_803DA18(a0);
    }
}

void *sub_800525C(void *a0)
{
    extern void *__nw__FUi(unsigned int size);
    extern int __VTABLE__14Singleton_3E84;
    extern void *gUnknown_03003E84;
    extern int __VTABLE__318dword_803E680;

    if (a0 == 0) {
        a0 = __nw__FUi(4);
        if (a0 == 0)
            return a0;
    }
    *(int *)a0 = (int)&__VTABLE__14Singleton_3E84;
    gUnknown_03003E84 = a0;
    *(int *)a0 = (int)&__VTABLE__318dword_803E680;
    return a0;
}
