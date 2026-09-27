/* One function of split_8000914; sub_8000948 stays assembly in
 * asm/nonmatching/split_8000914/.
 *
 * sub_8000914 sets a run of flag bits on *a0 (bit10, clear bit11, bits
 * 5/6/7) after telling gUnknown_03003EB8 about it (sub_80013D8), but only
 * if bit10 isn't already set.
 *
 * sub_8000AC4 was attempted here too (a fixed-stride list walk with a
 * two-branch tail call into sub_801537C) but every shape tried put more of
 * its locals on the stack than the reference ROM does -- the reference
 * keeps the whole walk in registers with a single 4-byte stack slot for the
 * status-byte pointer, and three different C shapes for the loop (caching
 * the header pointer in a local across the loop; writing the header
 * expression out fresh at each use instead; and reordering the loop's
 * count-- against its node recompute) all produced a bigger, differently
 * laid out prologue. Parked; see notes/parked.md.
 */
extern void sub_80013D8(void *a0, void *a1);
extern void *gUnknown_03003EB8;

void sub_8000914(void *a0)
{
    if (!(*(unsigned int *)a0 & 0x400)) {
        sub_80013D8(gUnknown_03003EB8, a0);
        *(unsigned int *)a0 |= 0x400;
        *(unsigned int *)a0 &= ~0x800;
        *(unsigned int *)a0 |= 0x20;
        *(unsigned int *)a0 |= 0x40;
        *(unsigned int *)a0 |= 0x80;
    }
}
