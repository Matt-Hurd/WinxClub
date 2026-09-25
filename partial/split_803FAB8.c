/* One function of split_803FAB8; the rest of the unit is still assembly in
 * asm/nonmatching/split_803FAB8/.
 *
 * Written as one `&&` expression, not two early returns: the ROM branches from
 * both tests to a shared `return 0` and falls through to `return 1`, which is
 * what a short-circuit && returning a bool produces. Two `if (...) return 0;`
 * statements put the first `return 0` inline instead.
 */

int sub_803FAB8(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 0x7c) >> 24 & 0xf) == 2
        && (*(unsigned int *)((char *)a0 + 0x80) & 4) != 0;
}
