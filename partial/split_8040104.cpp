/* One function of split_8040104; the rest of the unit is still assembly in
 * asm/nonmatching/split_8040104/.
 */
#include "dword_803E374.hpp"

extern "C" void sub_8041274(void *a0, void *a1, int a2, int a3);

extern "C" void sub_8040104(dword_803E374 *a0, short a1, short a2)
{
    if (a0->field_44 == 0) {
        if (a0->field_50 != 0) {
            sub_8041274(a0->field_50, a0->field_48, 0, 0);
        } else {
            operator delete[](a0->field_48);
        }
        a0->field_48 = 0;
    }
    a0->field_20 = a1;
    a0->field_1e = a2;
    a0->field_2a = a1;
    a0->field_28 = a2;
    a0->field_24 = 0;
    a0->field_0e |= 1;
}
