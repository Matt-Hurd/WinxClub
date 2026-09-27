/* One function of split_803F654; the rest of the unit is still assembly in
 * asm/nonmatching/split_803F654/.
 */

extern void *sub_8000D5A(void *a0);
extern void *gUnknown_03003EA0;

unsigned short sub_803F6B4(void *a0)
{
    void *g = gUnknown_03003EA0;
    int result = -1;

    if (*(int *)((char *)a0 + 0x44) != 0) {
        result = (*(int *)((char *)a0 + 0x44) - *(int *)((char *)sub_8000D5A(g) + 0x24)) >> 3;
    }
    return (unsigned short)result;
}
