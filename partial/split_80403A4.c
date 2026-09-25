/* One function of split_80403A4; the rest of the unit is still assembly in
 * asm/nonmatching/split_80403A4/ (ARM plus a veneer -- the candidate itself
 * is plain Thumb). config/symbols.yml is out of scope for this batch, so
 * sub_803DA18 is declared locally rather than via generated/functions.h.
 */
extern void sub_8012334(void *a0);
extern void *sub_803DA18(void *obj);

void sub_80403A4(void *a0, int a1)
{
    sub_8012334((char *)a0 + 4);
    if (a1 != 0)
        sub_803DA18(a0);
}
