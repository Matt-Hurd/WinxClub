/* Fifteen functions of split_800B6E0: several are two-line trampolines into
 * split_8011A80, sub_800B714/sub_800B740 turn a raw flag value into a bool,
 * sub_800B790 guards a call behind a flag test, and sub_800B7D2/sub_800B7C2
 * are a getter/setter pair for the same bit-4 flag. The rest of the unit is
 * still assembly in asm/nonmatching/split_800B6E0/.
 */
extern "C" {

void sub_8011DB2(void);
void sub_8011E52(int a1);
void sub_8011F0E(void);
int sub_8011E22(void);
int sub_8011E3C(void);
int sub_8011B28(int a0);
void sub_8012126(int a0, int a1, int a2);
void sub_8011DE4(int a0);
void sub_8012180(int a0);
void sub_80120FA(int a0, int a1);
int sub_8011E10(void);
int sub_80121C4(int a0);

void sub_800B6E0(void)
{
    sub_8011DB2();
}

void sub_800B6EC(int a0, int a1)
{
    sub_8011E52(a1);
}

void sub_800B708(void)
{
    sub_8011F0E();
}

int sub_800B714(void)
{
    return sub_8011E22() != 0;
}

void sub_800B6FA(int a0, int a1)
{
    sub_8011DE4(a1);
}

int sub_800B740(void)
{
    return sub_8011E3C() != 0;
}

void sub_800B756(void)
{
    sub_8011B28(5);
}

int sub_800B764(void)
{
    return sub_8011B28(3);
}

void sub_800B772(int a0, int a1, int a2)
{
    sub_80120FA(a1, a2);
}

void sub_800B782(int a0, int a1)
{
    sub_8012180(a1);
}

void sub_800B790(void *a0, int a1, int a2, int a3)
{
    if (!(*(unsigned int *)((char *)a0 + 8) & 0x10))
        sub_8012126(a1, a2, a3);
}

int sub_800B72A(void)
{
    return sub_8011E10() != 0;
}

int sub_800B7AA(int a0, int a1)
{
    return sub_80121C4(a1) != 0;
}

int sub_800B7D2(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 8) << 27) >> 31;
}

void sub_800B7C2(void *a0, int a1)
{
    unsigned int old = *(unsigned int *)((char *)a0 + 8) & ~0x10;
    *(unsigned int *)((char *)a0 + 8) = old | ((unsigned int)(a1 << 31) >> 27);
}

}
