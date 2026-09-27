/* One function of split_8012334; the rest of the unit is still assembly in
 * asm/nonmatching/split_8012334/. config/symbols.yml is out of scope for this
 * batch, so sub_80123B4 is declared locally rather than via generated/functions.h.
 *
 * sub_80123B4 is spliced in this same TU below; called directly, tcc inlines
 * its whole body into sub_8012334 instead of emitting the ROM's `bl`
 * (a-function-pointer-variable-defeats-tccs-same-tu-inlining-too.md), so the
 * call is routed through a function-pointer variable to keep the real branch.
 */
extern void *sub_80123B4(void *a0);

void sub_8012334(void *a0)
{
    void *(*fn)(void *) = sub_80123B4;
    void *entry = fn(a0);

    if (entry != 0) {
        *(int *)a0 = 1;
        *(int *)((char *)entry + 4) = 1;
    }
}

/* sub_80123B4 works on the 0x4c-byte element array at gUnknown_030037A0,
 * windowed by gUnknown_03003530's byte fields (0xe = count, 0xf = start
 * index). sub_801234C and sub_80123E4 (same array/window, plus a larger
 * bookkeeping struct sub_80123E4 reaches at gUnknown_03003530 -0x10/-0x34)
 * are parked -- see notes/parked.md -- and stay assembly in
 * asm/nonmatching/split_8012334/.
 */
extern int gUnknown_03003530;
extern int gUnknown_030037A0;

void *sub_80123B4(void *a0)
{
    unsigned char *meta;
    unsigned char *elem;
    unsigned int count;

    if (a0 != 0) {
        meta = (unsigned char *)&gUnknown_03003530;
        elem = (unsigned char *)&gUnknown_030037A0 + meta[0xf] * 0x4c;
        count = meta[0xe];
        while (count != 0) {
            if (*(void **)(elem + 0x10) == a0) {
                return elem;
            }
            count--;
            elem += 0x4c;
        }
        *(int *)a0 = 1;
    }
    return 0;
}
