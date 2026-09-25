/* One function of split_801B10C; the rest of the unit is still assembly in
 * asm/nonmatching/split_801B10C/. sub_801B170 takes no argument of its own;
 * a0 is simply still live in r0 from the parameter when it is called.
 */
extern "C" {

void sub_801B170(void);
void sub_8015588(void *a0, int a1);
void sub_803DA18(void *a0);

void sub_801B1EC(void *a0, int a1)
{
    sub_801B170();
    sub_8015588((char *)a0 + 0x1b4, 0);
    if (a1)
        sub_803DA18(a0);
}

}
