/* Three functions of split_8000210; the rest of the unit is still assembly in
 * asm/nonmatching/split_8000210/.
 */

int strStartsWith(const char *a, const char *b)
{
    goto test;
next:
    a++;
    b++;
test:
    if (*a) {
        if (*b == 0 || *a != *b)
            goto fail;
        goto next;
    }
    if (*b != 0)
        goto fail;
    return 1;
fail:
    return 0;
}

void strToLower(char *s)
{
    while (*s) {
        signed char c = s[0];
        if ((unsigned int)(c - 'A') <= 25)
            *s = c + 0x20;
        s++;
    }
}

char *strchr(const char *s, int c)
{
    while (*s) {
        signed char ch = s[0];
        if (ch == c)
            return (char *)s;
        s++;
    }
    return 0;
}

int gameStrlen(const char *s)
{
    int len = 0;

    while (*s) {
        s++;
        len++;
    }
    return len;
}

/* Panic/halt screen: disables IME, DMA3-fills VRAM with zero from a
 * single-word zero source, sets the backdrop palette colour, forces
 * blank + clears BLDCNT, and hangs. REG_IE/REG_DMA3/REG_WIN0H are
 * asm/gba_constants.inc GBLAs (no C symbol); a flat cast at an offset
 * that is not itself 32-byte aligned rebases down to the aligned base
 * plus a field offset, matching the ROM's own base+offset addressing
 * (see notes/quirks/mmio-constants-get-rebased-to-a-32-byte-boundary.md).
 * DMA3's three fields are touched through one held pointer, which pools
 * its (unaligned) base verbatim instead of rebasing
 * (notes/quirks/a-stepped-mmio-pointer-pools-verbatim-a-flat-cast-does-not.md). */
void sub_80002E2(unsigned short color)
{
    volatile unsigned short *ie = (volatile unsigned short *)0x04000200;
    unsigned int zero;
    volatile unsigned int *dma3;
    unsigned int cnt;

    ie[4] = 0;
    zero = 0;
    dma3 = (volatile unsigned int *)0x040000d4;
    dma3[0] = (unsigned int)&zero;
    dma3[1] = 0x06000000;
    dma3[2] = 0x85006000;
    cnt = dma3[2];
    (void)cnt;
    *(volatile unsigned short *)0x04000000 = 0x100;
    *(volatile unsigned short *)0x05000000 = color;
    *(volatile unsigned short *)0x04000050 = 0;
    for (;;) {
    }
}
