/* One function of split_802ED1C; the rest of the unit, including
 * sub_802ED1C (parked, see notes/parked.md), is still assembly in
 * asm/nonmatching/split_802ED1C/.
 */

/* Parses the (already-remapped) decimal digits at `s`: scans forward past
 * the run of digit codes to find its end, then walks back accumulating
 * digit * 10^place. Digit codes are 1-10 (sub_802ED1C's mapping for '0'-'9'),
 * so the digit value is the code minus one. Both loops are written
 * unrotated (see notes/quirks/loop-rotation-needs-explicit-goto.md): a plain
 * `while` here would come out test-at-top-and-bottom instead of the ROM's
 * single test reached by an initial jump. */
int sub_802F0D4(unsigned char *s)
{
    int result;
    int place;
    unsigned char c;
    signed char sc;
    int digit;

    result = 0;
    goto scan_test;
scan_next:
    s++;
scan_test:
    c = *s;
    if (c == 0)
        goto scan_done;
    sc = *s;
    if ((unsigned int)(sc - 1) <= 9)
        goto scan_next;
scan_done:
    s--;

    place = 1;
    goto acc_test;
acc_next:
    result += digit * place;
    place *= 10;
    s--;
acc_test:
    c = *s;
    if (c == 0)
        goto acc_done;
    sc = *s;
    digit = sc - 1;
    if ((unsigned int)digit <= 9)
        goto acc_next;
acc_done:
    return result;
}
