/* Seven functions of split_800B464; the rest of the unit is still assembly
 * in asm/nonmatching/split_800B464/. cpp_evidence.py proves this unit C++
 * (an __nw__FUi operator-new call elsewhere in it), so it is spliced as
 * .cpp even though none of these seven functions need a C++ construct
 * themselves -- per tcc-and-tcpp-agree-unless-you-need-a-type.md that makes
 * no difference to the bytes, but the unit's proof still calls for tcpp.
 *
 * All seven are thin wrappers around asm functions of split_80114B0/
 * split_8011A80 that have no known signature in config/symbols.yml
 * (out of scope for this batch), so they are declared locally as
 * extern "C" -- plain functions, not vtable slots, so unmangled --
 * same as partial/split_800B154.c's SoftReset.
 */

extern "C" void sub_801175C(void *a0);
extern "C" void sub_80115EC(void *a0);
extern "C" void sub_8011898(void *a0);
extern "C" void sub_80117B0(void *a0);
extern "C" void sub_8011D3C(void *a0);
extern "C" void sub_80116D4(void *a0);

extern "C" void sub_800B548(void *a0)
{
    sub_801175C(a0);
}

extern "C" void sub_800B600(void *a0, void *a1)
{
    sub_80115EC(a1);
}

extern "C" void sub_800B61C(void *a0, void *a1)
{
    sub_8011898(a1);
}

extern "C" void sub_800B638(void *a0, void *a1)
{
    sub_80117B0(a1);
}

extern "C" void sub_800B698(void *a0, void *a1)
{
    *(void **)((char *)a0 + 0xc) = a1;
    sub_8011D3C(a1);
}

extern "C" void *sub_800B6A8(void *a0)
{
    return *(void **)((char *)a0 + 0xc);
}

extern "C" void sub_800B6AC(void *a0)
{
    sub_80116D4(a0);
    *(void **)((char *)a0 + 0xc) = 0;
}
