/* One function of split_80183BC; the rest of the unit is still assembly in
 * asm/nonmatching/split_80183BC/. sub_80184BC, sub_8018540, sub_8018688,
 * sub_80186D8, sub_8018712, sub_801876E, sub_8018734, sub_80187A0,
 * sub_80187D2 and sub_8018884 are parked -- see notes/parked.md.
 */

/* Classic 16-step binary digit-recurrence square root: each step tests one
 * bit of the result from MSB to LSB, written out explicitly rather than as
 * a loop -- the ROM's last step drops the final subtraction of the
 * remainder (it is never read again), which a real loop body would not do
 * on its own. root is kept doubled throughout; the final shift halves it.
 * The first/last steps compare `num >= t`; every step in between has to be
 * spelled `t <= num` instead to get tcc's reversed cmp/branch shape --
 * cosmetically identical conditions, different compiled comparison. */
unsigned int sub_80183BC(unsigned int num)
{
    unsigned int root = 0;
    unsigned int t;

    t = (root + 0x8000) << 15;
    if (num >= t) { num -= t; root |= 0x10000; }

    t = (root + 0x4000) << 14;
    if (t <= num) { num -= t; root |= 0x8000; }

    t = (root + 0x2000) << 13;
    if (t <= num) { num -= t; root |= 0x4000; }

    t = (root + 0x1000) << 12;
    if (t <= num) { num -= t; root |= 0x2000; }

    t = (root + 0x800) << 11;
    if (t <= num) { num -= t; root |= 0x1000; }

    t = (root + 0x400) << 10;
    if (t <= num) { num -= t; root |= 0x800; }

    t = (root + 0x200) << 9;
    if (t <= num) { num -= t; root |= 0x400; }

    t = (root + 0x100) << 8;
    if (t <= num) { num -= t; root |= 0x200; }

    t = (root + 0x80) << 7;
    if (t <= num) { num -= t; root |= 0x100; }

    t = (root + 0x40) << 6;
    if (t <= num) { num -= t; root |= 0x80; }

    t = (root + 0x20) << 5;
    if (t <= num) { num -= t; root |= 0x40; }

    t = (root + 0x10) << 4;
    if (t <= num) { num -= t; root |= 0x20; }

    t = (root + 8) << 3;
    if (t <= num) { num -= t; root |= 0x10; }

    t = (root + 4) << 2;
    if (t <= num) { num -= t; root |= 8; }

    t = (root + 2) << 1;
    if (t <= num) { num -= t; root |= 4; }

    t = root + 1;
    if (num >= t) { root |= 2; }

    return root >> 1;
}
