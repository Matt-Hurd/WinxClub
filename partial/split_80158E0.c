/* One function of split_80158E0; the rest of the unit is still assembly in
 * asm/nonmatching/split_80158E0/. `a0` is a struct Anonymous3 * (include/
 * Anonymous3.hpp is the C++ class header this mirrors; this is a plain .c
 * translation unit compiled by tcc, which cannot parse `class`, so it
 * reaches the field through include/Anonymous3.h instead).
 */
#include "Anonymous3.h"

int sub_80158E0(void *a0)
{
    return ((struct Anonymous3 *)a0)->field_f8 != 0;
}
