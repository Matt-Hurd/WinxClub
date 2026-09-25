/* Two functions of split_801BEA0; the rest of the unit is still assembly in
 * asm/nonmatching/split_801BEA0/. sub_801BBE0 and sub_801B56C are not in
 * config/symbols.yml, which is out of scope for this task -- declared here
 * as an ordinary forward reference, same as split_801742C.c does for a
 * function it calls but does not convert.
 */
extern void sub_801BBE0(void *a0);
extern void sub_801B56C(void *a0);

void gameExit(void *a0)
{
    sub_801BBE0(a0);
    sub_801B56C(a0);
}

void nullsub_47(void)
{
}
