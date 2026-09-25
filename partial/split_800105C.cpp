/* One function of split_800105C; the rest of the unit is still assembly in
 * asm/nonmatching/split_800105C/. sub_80011D8 (48 lines) was attempted and
 * parked -- see notes/parked.md.
 */

extern "C" void sub_8000CCE(int *a0);

extern "C" void sub_800105C(void *a0)
{
    sub_8000CCE((int *)((char *)a0 + 4));
}
