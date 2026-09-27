/* One function of split_80106B0; the rest of the unit is still assembly in
 * asm/nonmatching/split_80106B0/.
 */

unsigned int sub_80106B0(void *a0)
{
    return ((*(unsigned int *)((char *)a0 + 0xc) >> 4) & 0xff) << 6;
}

void sub_80106BA(void)
{
}
