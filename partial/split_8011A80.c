/* Six functions of split_8011A80; the rest of the unit stays assembly in
 * asm/nonmatching/split_8011A80/. sub_8011B62, sub_8011E64 (parked earlier,
 * see notes/parked.md) and sub_8011F0E are out of this batch's scope.
 *
 * sub_8011D3C, sub_8011AC2, sub_8011A80, sub_8011B28 and sub_8011B22 are
 * splicer refusals, not shape problems -- parked, see notes/parked.md:
 * sub_8011D3C's whole body computes two registers and then `b`s straight
 * into a local label physically inside sub_8011B62's own compiled bytes;
 * sub_8011AC2 and sub_8011A80 both load `gUnknown_03003520`, which exists
 * only in sub_8011B62's own trailing pool, not the unit's shared pool.s;
 * sub_8011B28's dense switch emits its jump table as a byte-string pool
 * entry the splicer can only place a word into; sub_8011B22 loads
 * `gUnknown_03003BC8` too, and the ROM reached it through sub_8011B62's own
 * *nearer* trailing pool copy, out of Thumb LDR-literal range from here.
 *
 * sub_8011DE4 and sub_8011D56 are register-allocation parks, see
 * notes/parked.md.
 *
 * gUnknown_03003BC8 (0x30 bytes) is the shared sound driver state, retyped
 * to struct SoundDriver in winx-qhyt.11 (include/SoundDriver.h);
 * gUnknown_03003530/_030037A0 are the same count/array pair
 * partial/split_8012334.c already describes.
 */
#include "SoundDriver.h"

extern struct SoundDriver gUnknown_03003BC8;
extern int gUnknown_03003530;
extern int gUnknown_030037A0;

int sub_8011E3C(void)
{
    return gUnknown_03003BC8.field_00 & 2;
}

int sub_8011E46(void)
{
    return gUnknown_03003BC8.field_00 & 0x100;
}

int sub_8011E10(void)
{
    return ((unsigned int)gUnknown_03003BC8.field_00 << 30 >> 30) == 1;
}

int sub_8011E22(void)
{
    return ((unsigned int)gUnknown_03003BC8.field_00 << 30 >> 30) == 1
        && gUnknown_03003BC8.field_12 != 0;
}

void sub_8011E52(int a0)
{
    gUnknown_03003BC8.field_12 = a0;
    gUnknown_03003BC8.field_14 = gUnknown_03003BC8.field_16;
    if (a0 > 0)
        gUnknown_03003BC8.field_16 = 0;
}

void sub_8011DB2(void)
{
    unsigned char *elem;
    unsigned short flags = gUnknown_03003BC8.field_00;
    int count;

    if (!(flags & 2))
        return;
    flags &= ~2;
    gUnknown_03003BC8.field_00 = flags;
    count = *(unsigned char *)((char *)&gUnknown_03003530 + 0xf);
    if (count == 0)
        return;
    do {
        count--;
        elem = (unsigned char *)&gUnknown_030037A0 + count * 0x4c + 4;
        *(unsigned short *)elem &= ~2;
    } while (count != 0);
}
