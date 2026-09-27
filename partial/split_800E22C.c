/* One function of split_800E22C; the rest of the unit is still assembly in
 * asm/nonmatching/split_800E22C/.
 */

extern void *sub_803B15C(void *a0);
extern void *sub_80103C8(void *a0);
extern void *sub_803D9C4(unsigned int a0, unsigned int a1, int a2, void *a3);
extern void *sub_803D984(unsigned int a0, int a1, int a2);
extern void sub_803D9A8(void *a0, int a1, int a2);
extern void sub_8010604(void *a0, void *a1);
extern void sub_803B1AE(void *a0, void *a1);
extern void sub_803B184(void *a0, int a1);

void sub_800E254(void *a0, int a1, unsigned int a2)
{
    char buf1[0x172c];
    char buf2[0x1c];
    void *newBuf;

    sub_803B15C(buf1);
    sub_80103C8(buf2);

    newBuf = sub_803D9C4(1, 0x1800, 0, 0);
    *(void **)buf2 = newBuf;

    if (a2 & 2) {
        void *pal = sub_803D984(0x146c, 0, 0);
        *(void **)(buf2 + 0xc) = pal;
        *(void **)(buf2 + 8) = pal;
        *(void **)(buf2 + 4) = sub_803D984(0x2000, 0, 0);
    } else {
        *(void **)(buf2 + 0xc) = (void *)0x06014C00;
        *(void **)(buf2 + 8) = (void *)0x0601606C;
        *(void **)(buf2 + 4) = (void *)0x06012C00;
    }

    sub_8010604(buf1, buf2);
    sub_803B1AE(buf1, a0);

    if (a2 & 2) {
        sub_803D9A8(*(void **)(buf2 + 0xc), 0, 0);
        sub_803D9A8(*(void **)(buf2 + 4), 0, 0);
    }
    sub_803D9A8(newBuf, 0, 0);
    sub_803B184(buf1, 0);
}
