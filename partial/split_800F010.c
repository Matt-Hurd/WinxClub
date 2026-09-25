/* One function of split_800F010; the rest of the unit is still assembly in
 * asm/nonmatching/split_800F010/.
 *
 * Starts on a halfword: the first function spliced through
 * non_word_aligned_thumb_func_start. Nothing in the body depends on its own
 * address, so the splicer needs no alignment rule for it.
 */

void *sub_800F1DA(void *a0)
{
    return (char *)a0 + 0xe8;
}
