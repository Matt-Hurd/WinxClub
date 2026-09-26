/* Several functions of split_803A490; the rest of the unit is still assembly
 * in asm/nonmatching/split_803A490/. An empty body is the whole function: tcc
 * emits the bare `bx lr` the ROM has, with no frame.
 */

void ScannerScriptGroup__StartAttack2(void)
{
}

void ScannerScriptGroup__StartAttack(void)
{
}

extern void TakeDamage__7DefaultFv(void *a0);

int ScannerScriptGroup__Intersect(void *a0)
{
    TakeDamage__7DefaultFv(a0);
    *(unsigned int *)((char *)a0 + 0x7c) =
        (*(unsigned int *)((char *)a0 + 0x7c) << 1) >> 1;
    *(unsigned int *)((char *)a0 + 0x34) = 0;
    return 1;
}

static void ScannerScriptGroup__38_SetSize(void *p, unsigned int a1)
{
    *(unsigned short *)((char *)p + 0x2a) =
        (*(unsigned short *)((char *)p + 0x2a) & ~0xc00) | (((a1 >> 6) & 3) << 10);
    *((unsigned char *)p + 5) = a1;
    if (!(*(unsigned int *)p & 0x200))
        *(unsigned int *)p |= 0x80;
}

void ScannerScriptGroup__38(void *a0)
{
    if ((((*(unsigned int *)((char *)a0 + 0x80 + 0x2c)) << 5) >> 0x17) == 0x38)
        return;

    ScannerScriptGroup__38_SetSize(*(void **)((char *)a0 + 0x30), 0x7f);
    ScannerScriptGroup__38_SetSize(*(void **)((char *)a0 + 0x2c), 0x60);

    *(unsigned int *)((char *)a0 + 0x80 + 0xc) &= ~0x4000;
}
