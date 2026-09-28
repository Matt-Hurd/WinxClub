/* One function of split_800105C; the rest of the unit is still assembly in
 * asm/nonmatching/split_800105C/. sub_80011D8, sub_800129A, sub_800116A and
 * sub_8001232 were attempted and parked -- see notes/parked.md.
 */
#include "Unknown_03003448.h"

extern "C" void sub_8000CCE(int *a0);

extern "C" void sub_800105C(void *a0)
{
    sub_8000CCE((int *)((char *)a0 + 4));
}

extern "C" int sub_80011CA(struct Unknown_03003448 *a0)
{
    return (unsigned short)a0->field_19e8;
}
