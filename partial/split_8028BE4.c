/* Five functions of split_8028BE4; the rest of the unit is still assembly in
 * asm/nonmatching/split_8028BE4/. config/symbols.yml is out of scope for this
 * batch, so sub_80121C4, sub_801230C, sub_8012334, sub_801220C and
 * sub_80122F0 are declared locally rather than via generated/functions.h.
 *
 * sub_8028BE4 is written as one boolean expression, not an if/else: the ROM
 * has a single shared `movs r0, #0` exit both the true and false paths reach,
 * which is what a `!= 0` conversion of the callee's result produces. See
 * notes/quirks/a-boolean-and-shares-one-exit-for-both-tests.md.
 */
extern int sub_80121C4(void *a0);
extern void sub_801230C(void *a0);
extern void sub_8012334(void *a0);
extern void sub_801220C(void *a0);
extern void sub_80122F0(void *a0);

int sub_8028BE4(void *a0)
{
    return sub_80121C4(*(void **)((char *)a0 + 8)) != 0;
}

void sub_8028C5C(void *a0)
{
    if (*(unsigned char *)a0 != 0) {
        sub_801230C((char *)a0 + 4);
        *(unsigned char *)a0 = 0;
    }
}

void sub_8028C2E(void *a0)
{
    sub_801220C((char *)a0 + 4);
    *(unsigned char *)a0 = 0;
}

void sub_8028C42(void *a0)
{
    if (*(unsigned char *)a0 != 0)
        return;
    sub_80122F0((char *)a0 + 4);
    *(unsigned char *)a0 = 1;
}

/* Pool: gUnknown_03003460 (config/symbols.yml decl: void *gUnknown_03003460,
 * scripts/gen.py rerun). 0x98 entries of a 0x20-byte struct; the loop
 * counter is truncated to 16 bits each iteration the same way as a
 * declared-narrow local (notes/quirks/narrow-parameters-are-declared-narrow.md).
 */
extern void *gUnknown_03003460;

void sub_8028BFC(void *a0)
{
    unsigned short i;

    if (gUnknown_03003460 == 0)
        return;
    for (i = 0; i < 0x98; i++) {
        char *entry = (char *)a0 + (i << 5);
        if (sub_80121C4(*(void **)(entry + 8)) != 0)
            sub_8012334(entry + 4);
    }
}
