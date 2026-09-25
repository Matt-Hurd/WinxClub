/* Three functions of split_803B150; the rest of the unit is still assembly
 * in asm/nonmatching/split_803B150/.
 *
 * sub_803B150 forwards its argument to sub_802E47A and returns; that function
 * stays assembly elsewhere in the unit graph, so it is declared extern here
 * with nothing for config/symbols.yml to generate a header from.
 */

extern void sub_802E47A(void *a0);

void sub_803B150(void *a0)
{
    sub_802E47A(a0);
}

int sub_803B1A8(void)
{
    return 0;
}

void sub_803B1AC(void)
{
}
