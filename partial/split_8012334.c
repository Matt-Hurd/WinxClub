/* One function of split_8012334; the rest of the unit is still assembly in
 * asm/nonmatching/split_8012334/. config/symbols.yml is out of scope for this
 * batch, so sub_80123B4 is declared locally rather than via generated/functions.h.
 */
extern void *sub_80123B4(void *a0);

void sub_8012334(void *a0)
{
    void *entry = sub_80123B4(a0);

    if (entry != 0) {
        *(int *)a0 = 1;
        *(int *)((char *)entry + 4) = 1;
    }
}
