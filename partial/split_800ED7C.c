/* One function of split_800ED7C; the rest of the unit is still assembly in
 * asm/nonmatching/split_800ED7C/. config/symbols.yml is out of scope for this
 * batch, so sub_8013DEA is declared locally rather than via generated/functions.h.
 */
extern void sub_8013DEA(int a0);

void sub_800EF1C(void)
{
    sub_8013DEA(3);
}

/* sub_800EF2A fires the three script-triggered side effects (sound, dialog,
 * palette event) recorded as non-zero flag words in gScriptDataMetadata,
 * then hands the last-loaded background chunk to sub_800B08E (VBlankIntrWait
 * elsewhere in split_800AFD4.cpp, which ignores its argument).
 */
extern void sub_8013D52(int a0);
extern void sub_80049B4(void);
extern void sub_80014E4(void);
extern void sub_8028B2C(void);
extern void sub_800B08E(void *a0);
extern int gScriptDataMetadata;
extern void *gUnknown_03003E98;

void sub_800EF2A(void)
{
    unsigned char *meta;

    sub_8013D52(1);
    meta = (unsigned char *)&gScriptDataMetadata;
    if (*(int *)(meta + 0xc) != 0) {
        sub_80049B4();
    }
    if (*(int *)(meta + 0x10) != 0) {
        sub_80014E4();
    }
    if (*(int *)(meta + 0x24) != 0) {
        sub_8028B2C();
    }
    sub_800B08E(gUnknown_03003E98);
}
