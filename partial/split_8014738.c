/* One function of split_8014738; the rest of the unit is still assembly in
 * asm/nonmatching/split_8014738/. sub_8014738, sub_8014864 and sub_8014B34
 * were also attempted (per notes/parked.md) but their register allocation
 * would not move to match the ROM across several source shapes, so they
 * stay in asm/nonmatching and are pulled in as assembly by the splicer.
 */

int sub_8014B58(void *a0)
{
    return *(int *)((char *)a0 + 0x54) != 0;
}
