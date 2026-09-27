/* Two functions of split_802E384; the rest of the unit (sub_802E384) is
 * still assembly in asm/nonmatching/split_802E384/. config/symbols.yml is
 * out of scope for this batch, so the callees below are declared locally.
 */

unsigned char sub_802E40E(void *a0)
{
    return *((unsigned char *)a0 + 0x30 + 0xd);
}

/* sub_802E3C6 is parked -- see notes/parked.md. It stays in
 * asm/nonmatching/split_802E384/sub_802E3C6.s. */
