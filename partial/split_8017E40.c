/* Three functions of split_8017E40; the rest of the unit is still assembly
 * in asm/nonmatching/split_8017E40/.
 */
#include "generated/globals.h"

void PlayIntroLogo(void *a0)
{
    unsigned char state = *((unsigned char *)a0 + 1);
    void *sub = (char *)a0 + 4;

    if (state == 0) {
        sub_803D680(sub, 3, 0x3f, 0, 0x10, 4, 0);
        sub_803D834(sub);
        sub_800474E(sub);
        maybeLoadOrRenderBgImage(gUnknown_08050694[*(unsigned char *)a0]);
        *((unsigned char *)a0 + 2) = 0;
        (*((unsigned char *)a0 + 1))++;
    } else if (state == 1) {
        sub_803D834(sub);
        sub_800474E(sub);
        if (sub_803D97C(sub) != 0) {
            *((unsigned char *)a0 + 2) = 0;
            (*((unsigned char *)a0 + 1))++;
        }
    } else if (state == 2) {
        unsigned char c = *((unsigned char *)a0 + 2) + 1;
        *((unsigned char *)a0 + 2) = c;
        if (c == 0x3c) {
            unsigned int next = *(unsigned char *)a0 + 1;
            if (next < 5) {
                sub_803D680(sub, 2, 0x3f, 0, 0x10, 4, 0);
                sub_803D834(sub);
                sub_800474E(sub);
                *((unsigned char *)a0 + 2) = 0;
                (*((unsigned char *)a0 + 1))++;
            } else {
                *(unsigned char *)a0 = next;
            }
        }
    } else if (state == 3) {
        sub_803D834(sub);
        sub_800474E(sub);
        if (sub_803D97C(sub) != 0) {
            *((unsigned char *)a0 + 2) = 0;
            *((unsigned char *)a0 + 1) = 0;
            (*(unsigned char *)a0)++;
        }
    }
}

void HandleIntro(void)
{
    volatile unsigned char buf[0x10];

    sub_8004716(buf + 4);
    buf[0] = 0;
    buf[1] = 0;
    buf[2] = 0;

    while (buf[0] < 5) {
        PlayIntroLogo((void *)buf);
        sub_800EF2A();
    }

    PlayIntroMovie((void *)buf);
}

void sub_8017FF4(void *a0)
{
    *(unsigned char *)a0 = 0;
    *((unsigned char *)a0 + 1) = 0;
    *((unsigned char *)a0 + 2) = 0;
}
