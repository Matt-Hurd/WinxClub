/* Two functions of split_8011040; sub_8011040 and sub_801115C are not part
 * of this conversion and stay assembly in asm/nonmatching/split_8011040/.
 * sub_8011040 is parked, see notes/parked.md. Both a0 are dword_803EC98
 * (include/dword_803EC98.hpp, winx-qhyt.29); sub_8011106's rec2 is the same
 * field_6d0 record its sibling sub_8010F10/sub_8010ED2 (split_8010D60.c)
 * already reach by name.
 */
#include "dword_803EC98.hpp"

extern int sub_8010ED2(void *a0, unsigned char a1);

int sub_801114E(void *a0)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;

    return self->field_5c <= 0;
}

int sub_8011106(void *a0)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;

    if (self->field_6d4 != 0 && self->field_6d1 != 0 && self->field_6d8 != 0)
        return 0;
    if (self->field_6e0 != 0 && sub_8010ED2(a0, self->field_6df))
        return 0;
    if (self->field_6fc > 0)
        return 0;
    return 1;
}
