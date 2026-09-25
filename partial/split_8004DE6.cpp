/* Two functions of split_8004DE6; the rest of the unit is still assembly in
 * asm/nonmatching/split_8004DE6/. sub_8004F42 stays asm. sub_8004FFC is
 * parked -- see notes/parked.md.
 */

extern "C" void *sub_8004F42(void *a0, char *a1, int a2);

extern "C" void nullsub_24(void)
{
}

extern "C" int sub_800501C(void *a0, char *a1)
{
    void *r = sub_8004F42(a0, a1, 0);
    int result = 0;
    if (r != 0)
        result = *(int *)r;
    return result;
}
