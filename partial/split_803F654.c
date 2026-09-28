/* One function of split_803F654; the rest of the unit is still assembly in
 * asm/nonmatching/split_803F654/.
 */
#include "Singleton_3EA0.hpp"
#include "Sprite.h"

extern struct Singleton_3EA0_Data *sub_8000D5A(void *a0);

unsigned short sub_803F6B4(struct Sprite *a0)
{
    void *g = gUnknown_03003EA0;
    int result = -1;

    if (a0->field_44 != 0) {
        result = a0->field_44 - sub_8000D5A(g)->field_24;
    }
    return (unsigned short)result;
}
