/* One function of split_803B318; the rest of the unit is still assembly in
 * asm/nonmatching/split_803B318/. cpp_evidence.py is undetermined for this
 * unit, so it is .c per tcc-and-tcpp-agree-unless-you-need-a-type.md.
 *
 * `*a0` is a vtable-shaped table: its own +4 field is a delta added to its
 * own address to get an absolute function pointer, the same base+delta
 * scheme compiler_findings.md's Rule 8 describes for tcpp's C++ vtables --
 * but the rest of this unit (sub_803B342, HandlePostGameCredits, both still
 * assembly) does the identical thing by hand on several more offsets, so it
 * reads as this game's own hand-rolled dispatch table, not proof of a C++
 * object here.
 *
 * `int vt` rather than a pointer for the table's own address, and the final
 * add written `delta + vt`, are what it took to get the ADD's operand order
 * (`r2, r1` vs `r1, r2`) to match -- see
 * notes/quirks/add-operand-order-follows-evaluation-not-source.md; pointer
 * arithmetic on `char *` produced the opposite order regardless of how the
 * `+` was spelled in source.
 */

typedef void (*FuncPtr)(void *);

extern void FadeToBlack(void);
extern void sub_80050FA(int a0);
extern void SetNextGlobalFunction(int a0);
extern void CallSoftReset(void);

void sub_803B318(void *a0)
{
    int vt;
    void *self;
    int delta;

    FadeToBlack();
    vt = *(int *)a0;
    self = a0;
    delta = *(int *)(vt + 4);
    ((FuncPtr)(delta + vt))(self);
    sub_80050FA(0);
    SetNextGlobalFunction(2);
    CallSoftReset();
}
