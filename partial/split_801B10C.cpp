/* Two of split_801B10C's three assigned functions; the parked sub_801B170
 * and sub_801B212 (see notes/parked.md) are still assembly in
 * asm/nonmatching/split_801B10C/. sub_801B1EC takes no argument of its own;
 * a0 is simply still live in r0 from the parameter when it is called.
 */
#include "generated/functions.h"
#include "generated/globals.h"

extern "C" void sub_801B170(void);
extern "C" void sub_8015588(void *a0, int a1);

extern "C" void sub_801B1EC(void *a0, int a1)
{
    sub_801B170();
    sub_8015588((char *)a0 + 0x1b4, 0);
    if (a1)
        sub_803DA18(a0);
}

extern "C" void sub_80154DC(void *a0);

/* Allocates the 0x524-byte object (same shape as sub_8023D0C) and clears its
 * flag word at +0x51c and the three bytes at +0x520, plus a 100-word array
 * at +0x20. The ROM clears the flag bits with plain `bic`s (not `mvn`+`and`),
 * so the plain masked-write form is right here -- see
 * notes/quirks/a-bitfield-clear-writes-mvn-and-a-raw-mask-and-writes-bic.md.
 */
extern "C" void *sub_801B10C(void *a0)
{
    char *obj = (char *)a0;
    unsigned int i;

    if (obj == 0) {
        obj = (char *)operator new(0x524);
        if (obj == 0)
            return obj;
    }

    sub_80154DC(obj + 0x1b4);

    {
        char *sub = obj + 0x500;
        unsigned int v = *(unsigned int *)(sub + 0x1c);
        v = (v >> 1) << 1;
        v &= ~0xfeu;
        v &= ~0x100u;
        v &= ~0x200u;
        v &= ~0x400u;
        v &= ~0x1000u;
        *(unsigned int *)(sub + 0x1c) = v;
    }

    {
        char *sub = obj + 0x520;
        sub[0] = 0;
        sub[1] = 0;
        sub[2] = 0;
    }

    for (i = 0; i < 100; i++)
        *(int *)(obj + i * 4 + 0x20) = 0;

    return obj;
}
