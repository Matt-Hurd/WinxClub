/* One function of split_8000BAC; the rest of the unit is still assembly in
 * asm/nonmatching/split_8000BAC/. The loop counter has to be unsigned: the
 * ROM's bound check is `blo` (unsigned), which a signed `int i` compiles to
 * `blt` instead.
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
