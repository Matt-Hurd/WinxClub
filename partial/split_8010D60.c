/* Two functions of split_8010D60; the rest of the unit is still assembly in
 * asm/nonmatching/split_8010D60/, including sub_8010F90, parked (see
 * notes/parked.md).
 *
 * `a0` in both sub_8010F10 and sub_8010ED2 is not the level-state object at
 * gUnknown_03003448 winx-qhyt.25 named this unit for: per
 * include/Unknown_03003448.h's header comment, both belong instead to
 * dword_803EC98 (include/dword_803EC98.hpp), the PlayMovie-only object.
 * That header declares no data members (vtable slots only), so there is no
 * struct to route these casts through yet -- a separate ticket, not this
 * one.
 */

extern void sub_8010D60(void *a0);
extern int sub_8010ED2(void *a0, unsigned char a1);

int sub_8010F10(void *a0)
{
    int (*fn)(void *, unsigned char) = sub_8010ED2;

    if (*(unsigned int *)((char *)a0 + 0x6e0) == 0)
        goto fail;
    if (!fn(a0, *(unsigned char *)((char *)a0 + 0x6df)))
        goto fail;
    if (*(unsigned int *)((char *)a0 + 0x6e0) & (1 << *(unsigned char *)((char *)a0 + 0x6dd)))
        sub_8010D60(a0);
    else
        *(unsigned char *)((char *)a0 + 0x6dc) = 0;
    if (*(unsigned char *)((char *)a0 + 0x6dc) == 0)
    {
        unsigned char idx;
        unsigned char v;

        *(unsigned int *)((char *)a0 + 0x6e0) &= ~(1 << *(unsigned char *)((char *)a0 + 0x6dd));
        v = *(unsigned char *)((char *)a0 + 0x6df) + 1;
        *(unsigned char *)((char *)a0 + 0x6df) = v;
        if (v >= 0xb)
            *(unsigned char *)((char *)a0 + 0x6df) = 0;
        idx = *(unsigned char *)((char *)a0 + 0x6dd) + 1;
        *(unsigned char *)((char *)a0 + 0x6dd) = idx;
        if (idx >= 0xb)
            *(unsigned char *)((char *)a0 + 0x6dd) = 0;
        *(unsigned char *)((char *)a0 + 0x6dc) = 1;
        *(unsigned int *)((char *)a0 + 0x6e8) = 0;
        *(unsigned int *)((char *)a0 + 0x6ec) = 0;
    }
    return 1;

fail:
    return 0;
}

int sub_8010ED2(void *a0, unsigned char a1)
{
    if (a1 >= 0xb)
        return 0;
    if (*(unsigned int *)((char *)a0 + 0x6d8) == 0 &&
        *(unsigned char *)((char *)a0 + 0x6d0) == a1)
        return 0;
    if (*(unsigned int *)((char *)a0 + a1 * 12 + 0x64c) == 0)
        return 0;
    return 1;
}
