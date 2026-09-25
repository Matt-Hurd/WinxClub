/* One function of split_8004BA8; the rest of the unit is still assembly in
 * asm/nonmatching/split_8004BA8/.
 *
 * sub_8004C2C ignores its first argument. 0x200 and 0x2000 are the byte sizes
 * of a 4Kbit and a 64Kbit EEPROM, and the only caller (sub_800B314) dispatches
 * on the same 0/1 code right before calling IdentifyEeprom, so this reads as
 * "save size for this save type" -- a better name than sub_8004C2C if you want
 * one.
 *
 * Written as a switch, not an if/else chain: tcc keeps the first arm of an
 * if/else inline and branches past it, where the ROM tests 0 first and branches
 * *to* that body. See notes/quirks/a-switch-puts-its-case-bodies-out-of-line.md.
 */

int sub_8004C2C(void *a0, int a1)
{
    switch (a1) {
    case 0:
        return 0x200;
    case 1:
        return 0x2000;
    default:
        return 0;
    }
}
