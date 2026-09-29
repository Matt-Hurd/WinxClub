/* Three functions of split_8014DD4; the rest of the unit is still assembly in
 * asm/nonmatching/split_8014DD4/. sub_8014E46 is parked -- see notes/parked.md.
 */

#include "EntityState.h"

extern void sub_803F55C(void *a0);
extern void sub_803F5FC(void *a0, int a1, int a2, int a3);
extern void sub_8013F6C(void *a0);
extern void sub_80401E4(void *a0, int a1);
extern unsigned char gUnknown_030031EE[0x10];
extern unsigned short gUnknown_030031FE[0x10][4];

void sub_8014DD4(void)
{
    unsigned char i, j;

    for (i = 0; i < 0x10; i++) {
        gUnknown_030031EE[i] = 0xff;
        for (j = 0; j < 4; j++) {
            gUnknown_030031FE[i][j] = 0xffff;
        }
    }
}

void sub_8014E04(void *a0)
{
    sub_803F55C(a0);

    if (((struct EntityState *)a0)->field_54 != 0) {
        sub_803F5FC(a0, (int)((struct EntityState *)a0)->field_54,
                    ((struct EntityState *)a0)->field_58,
                    ((struct EntityState *)a0)->field_5c);
    }

    if (((struct EntityState *)a0)->field_60 != 0) {
        sub_803F5FC(a0, ((struct EntityState *)a0)->field_60,
                    ((struct EntityState *)a0)->field_64,
                    ((struct EntityState *)a0)->field_68);
    }

    ((struct EntityState *)a0)->field_54 = 0;
    ((struct EntityState *)a0)->field_60 = 0;
    ((struct EntityState *)a0)->field_6e = 0;
    ((struct EntityState *)a0)->field_6f = 0;

    sub_8013F6C(a0);
}

void sub_8014E76(void *a0, int a1)
{
    struct EntityState *state = (struct EntityState *)a0;
    int i;

    for (i = 0; i < state->field_6e * state->field_6f; i++) {
        sub_80401E4(state->field_54[i], a1);
    }
}
