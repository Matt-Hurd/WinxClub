/* sub_801DCFC of split_801DCFC; the rest of the unit is still assembly in
 * asm/nonmatching/split_801DCFC/.
 */

extern void *gUnknown_03003454;
extern int rand(void);
extern void sub_8017884(void *a0, unsigned int a1, unsigned int a2, unsigned int a3, void *a4);

void sub_801DCFC(void *a0)
{
    if (((*(unsigned int *)((char *)a0 + 0x80) << 0x15) >> 0x18) != 0) {
        unsigned short arg1 = rand() % (int)((*(unsigned int *)((char *)a0 + 0x80) << 0x15) >> 0x18) +
            ((*(unsigned int *)((char *)a0 + 0x88) << 0x16) >> 0x16);

        sub_8017884(gUnknown_03003454, arg1,
            (*(unsigned int *)((char *)a0 + 0x7c) << 8) >> 0x18, 1, a0);
    }
}
