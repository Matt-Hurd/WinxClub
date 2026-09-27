/* One of split_8034358's three assigned functions; sub_803442C and
 * sub_8034358 are not part of this conversion and stay assembly in
 * asm/nonmatching/split_8034358/ (both are parked, see notes/parked.md).
 * cpp_evidence.py cannot prove this unit either way, so it is written as
 * plain C (tcc and tcpp agree unless a type is needed).
 *
 * sub_8034408 is the release-one-owned-resource shape already proven for
 * sibling classes (sub_802DDDC, a different unit, same idiom): call the
 * base's own teardown (sub_802E47A), then free the owned pointer at +0x3c
 * through sub_8000DE6(gUnknown_03003EB8, ...) if it is set, and null it.
 */

extern void sub_802E47A(void *a0);
extern void sub_8000DE6(void *a0, void *a1);
extern void *gUnknown_03003EB8;

void sub_8034408(void *a0)
{
    char *self = (char *)a0;

    sub_802E47A(a0);
    if (*(void **)(self + 0x3c) != 0) {
        sub_8000DE6(gUnknown_03003EB8, self + 0x3c);
        *(void **)(self + 0x3c) = 0;
    }
}
