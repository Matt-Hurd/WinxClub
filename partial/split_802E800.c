/* One function of split_802E800; the rest of the unit is still assembly in
 * asm/nonmatching/split_802E800/. The ROM is `movs r0, #0` / `bx lr`, which
 * is exactly what tcc emits for a bare `return 0;` with no frame.
 */

int sub_802E8F8(void)
{
    return 0;
}
