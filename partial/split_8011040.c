/* Two functions of split_8011040; sub_8011040 and sub_801115C are not part
 * of this conversion and stay assembly in asm/nonmatching/split_8011040/.
 * sub_8011040 is parked, see notes/parked.md.
 */

extern int sub_8010ED2(void *a0, unsigned char a1);

int sub_801114E(void *a0)
{
    return *(int *)((char *)a0 + 0x5c) <= 0;
}

int sub_8011106(void *a0)
{
    char *rec = (char *)a0 + 0x6c0;
    char *rec2 = (char *)a0 + 0x6d0;

    if (*(int *)(rec + 0x14) != 0 && rec2[1] != 0 && *(int *)(rec + 0x18) != 0)
        return 0;
    if (*(int *)(rec + 0x20) != 0 && sub_8010ED2(a0, rec2[0xf]))
        return 0;
    if (*(int *)(rec + 0x3c) > 0)
        return 0;
    return 1;
}
