/* Two functions of split_802DDDC; the rest of the unit is still assembly in
 * asm/nonmatching/split_802DDDC/.
 *
 * sub_802DFD8 forwards its argument to sub_802E8B0 and returns; that
 * function stays assembly elsewhere in the unit graph, so it is declared
 * extern here with nothing for config/symbols.yml to generate a header from.
 */

extern void sub_802E8B0(void *a0);

void sub_802DFD8(void *a0)
{
    sub_802E8B0(a0);
}

unsigned int sub_802DFE4(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 0x48) >> 10) & 0x1f;
}
