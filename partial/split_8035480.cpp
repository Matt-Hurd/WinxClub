/* One function of split_8035480; the rest of the unit is still assembly in
 * asm/nonmatching/split_8035480/. ToggleObjectGroup__04 and
 * ToggleObjectGroup__38 (also candidates in this unit) are parked -- see
 * notes/parked.md.
 *
 * sub_8035530 has no vtable slot and is not called from anywhere else in this
 * unit -- it is written as a plain function, not a ToggleObjectGroup member,
 * same as Monster__10 in partial/split_803490C.cpp.
 */

extern "C" void sub_801DB90(void *a0);

extern "C" void sub_8035530(void *a0)
{
    sub_801DB90(a0);
    if (*(int *)((char *)a0 + 0x9c) == 0) {
        *(int *)((char *)a0 + 0x9c) = 0x13;
    }
}
