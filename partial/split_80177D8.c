/* One function of split_80177D8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80177D8/.
 */
void sub_80177D8(void *a0, void *a1)
{
    char *cursor = (char *)a0 + (*(unsigned short *)((char *)a1 + 4) << 2) + 0x600;
    *(void **)(cursor + 0x1c) = a1;
}
