/* Two functions of split_802C6D0; the rest of the unit (sub_802C71E) is
 * still assembly in asm/nonmatching/split_802C6D0/. config/symbols.yml is
 * out of scope for this batch, so the callees and the two globals below
 * (besides gUnknown_0300345C, already in generated/globals.h) are declared
 * locally.
 */

unsigned char sub_802C86E(void *a0)
{
    return *((unsigned char *)a0 + 0x40 + 8);
}

extern void sub_802E47A(void *a0);
extern void sub_8000DE6(void *a0, void *a1);
extern int sub_8028BE4(void *a0);
extern void sub_80268AC(void *a0);
extern void *gUnknown_03003EB8;
extern void *gUnknown_0300345C;

void sub_802C6D0(void *a0)
{
    void *base;

    sub_802E47A(a0);
    if (*(void **)((char *)a0 + 0x3c) != 0) {
        sub_8000DE6(gUnknown_03003EB8, (char *)a0 + 0x3c);
        *(void **)((char *)a0 + 0x3c) = 0;
    }

    base = gUnknown_0300345C;
    if (sub_8028BE4((char *)base
            + ((((*(unsigned int *)((char *)a0 + 0x34) << 6) >> 0x1c) + 0x34) << 5))) {
        base = gUnknown_0300345C;
        sub_80268AC((char *)base
            + ((((*(unsigned int *)((char *)a0 + 0x34) << 6) >> 0x1c) + 0x34) << 5));
    }
}
