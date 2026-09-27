/* Two functions of split_803A050; the rest of the unit is still assembly in
 * asm/nonmatching/split_803A050/, including Scanner__ctor and
 * Scanner__Create (parked -- see notes/parked.md). m48 is Scanner's
 * override of Default's Dying slot (working label ScannerScriptGroup__Dying);
 * its default case forwards to the base implementation exactly like it,
 * with the same argument, since Scanner has no C++ base of its own here
 * (same reasoning as split_803490C.cpp's Monster__10 call).
 *
 * sub_803A476 is not a vtable slot, so it stays a free function.
 */
#include "Scanner.hpp"

extern "C" void HostileCreature__Dying(void *a0, void *a1);

extern "C" int sub_803A476(void *a0)
{
    unsigned int i;

    for (i = 0; i < 5; i++) {
        if (*(int *)((char *)a0 + i * 4 + 0x38) != 0)
            return 1;
    }
    return 0;
}

void Scanner::m48(void *a1)
{
    void *msg = *(void **)a1;
    int type = *(unsigned short *)((char *)msg + 8);
    int x;
    char *scriptGroup = (char *)this + 0xc0;

    switch (type) {
    case 0xf:
        x = *(int *)((char *)msg + 4);
        *(int *)(scriptGroup + 0x30) = (*(int *)(scriptGroup + 0x30) & ~8) | ((x & 1) << 3);
        break;
    case 0x11:
        x = *(int *)((char *)msg + 4);
        *(int *)(scriptGroup + 0x30) = (*(int *)(scriptGroup + 0x30) & ~7) | (x & 7);
        break;
    case 0x12:
        x = *(int *)((char *)msg + 4);
        *(int *)(scriptGroup + 0x30) = (*(int *)(scriptGroup + 0x30) & ~0x10000) | ((x & 1) << 16);
        break;
    default:
        HostileCreature__Dying(this, a1);
        break;
    }
}
