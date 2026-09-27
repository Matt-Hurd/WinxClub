#include "generated/functions.h"

extern void FadeToBlack(void);
extern void sub_80050FA(void *a0);
extern void sub_8000DE6(void *a0, void *a1);
extern void *gUnknown_03003448;

void sub_801ABFC(void *a0)
{
    unsigned char i;

    FadeToBlack();

    {
        void *obj = (char *)a0 + 0x18c;
        void *base = *(void **)obj;
        void (*fn)(void *) = (void (*)(void *))(*(int *)((char *)base + 4) + (int)base);
        fn(obj);
    }
    {
        void *obj = (char *)a0 + 0x204;
        void *base = *(void **)obj;
        void (*fn)(void *) = (void (*)(void *))(*(int *)((char *)base + 4) + (int)base);
        fn(obj);
    }

    sub_80050FA(0);

    for (i = 0; i < 2; i++) {
        char *p = (char *)a0 + i * 4;
        sub_8000DE6(gUnknown_03003448, p);
        sub_8000DE6(gUnknown_03003448, p + 0xf8);
        sub_8000DE6(gUnknown_03003448, p + 0x184);
    }
}

/* sub_801AC60: attempted and parked, see notes/parked.md. */
