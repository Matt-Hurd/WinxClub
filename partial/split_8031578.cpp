/* Two functions of split_8031578; the rest of the unit is still assembly in
 * asm/nonmatching/split_8031578/.
 */
extern "C" {

void sub_80315FC(void *a0, int a1)
{
    *(int *)((char *)a0 + 4) = a1;
}

void sub_8031600(void *a0, int idx, int a2, int a3, int a4, int a5)
{
    idx <<= 4;
    *(int *)((char *)*(int **)((char *)a0 + 0xc) + idx) = a2;
    *(int *)((char *)*(int **)((char *)a0 + 0xc) + idx + 4) = a3;
    *(int *)((char *)*(int **)((char *)a0 + 0xc) + idx + 8) = a4;
    *(int *)((char *)*(int **)((char *)a0 + 0xc) + idx + 0xc) = a5;
}

}
