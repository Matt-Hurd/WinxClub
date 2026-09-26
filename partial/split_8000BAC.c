/* Two of split_8000BAC's functions; the rest of the unit, including the
 * parked sub_8000BAC, sub_8000BD8, sub_8000C02 and sub_8000C2E (see
 * notes/parked.md), is still assembly in asm/nonmatching/split_8000BAC/.
 * The loop counter has to be unsigned: the ROM's bound check is `blo`
 * (unsigned), which a signed `int i` compiles to `blt` instead.
 */

int sub_8000C58(unsigned char *a0)
{
    unsigned int i;

    for (i = 0; i < 0x14; i++) {
        if (a0[i] != 0xff)
            return 1;
    }
    return 0;
}

void sub_8000C6E(void *a0, int a1)
{
    *(int *)((char *)a0 + 0x1c) = a1;
}
