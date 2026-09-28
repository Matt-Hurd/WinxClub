/* Functions of split_801669C; the rest of the unit is still assembly in
 * asm/nonmatching/split_801669C/. SetNextGlobalFunction, sub_801CBAA,
 * sub_8028A7C and sub_8028C2E are declared via config/symbols.yml's decl:
 * (config/symbols.yml also gained a decl: for gUnknown_03003C58, which
 * neither functions.h nor globals.h had a type for); everything else this
 * file calls is declared locally, config/symbols.yml decls for those being
 * out of scope for this batch.
 *
 * sub_801678C and sub_80166FE (also in this batch) were tried and parked --
 * see notes/parked.md -- for a pool-splice tooling gap: the value they load
 * lives nearer in a still-assembly neighbour's own trailing pool than in
 * this unit's pool.s, and the splicer has no way to prefer the near one.
 */
#include "generated/functions.h"
#include "generated/globals.h"
#include "Default.hpp"
#include "winxclub.h"

extern "C" void sub_80268AC(void *a0);

extern "C" void sub_801679E(void)
{
    SetNextGlobalFunction(0x14);
}

extern "C" void sub_8016D0E(void *a0, void **a1)
{
    struct Default *node = (struct Default *)*a1;
    gUnknown_03003C58 = node->field_04;
    SetNextGlobalFunction(0x15);
}

extern "C" int sub_800B6A8(void);

extern "C" void sub_8016CB6(void *a0, void **a1)
{
    struct Default *node = (struct Default *)*a1;
    void *base = gUnknown_03003460;

    if (base == 0)
        return;
    /* node->field_04 is signed in Default.hpp; comparing it straight against
     * an int forces tcc to sign-extend with LDRSH (no immediate-offset
     * encoding, +2 bytes) instead of the ROM's zero-extending LDRH. Reading
     * it through an unsigned short lvalue keeps the immediate-offset load. */
    if (sub_800B6A8() == *(unsigned short *)&node->field_04)
        return;
    unsigned char b = (unsigned char)*(unsigned short *)&node->field_04;
    sub_8028A7C(gUnknown_0300345C, 6, b);
}

extern "C" void sub_8016CE0(void *a0, void **a1)
{
    struct Default *node = (struct Default *)*a1;
    short idx = node->field_04;
    void *base = gUnknown_0300345C;

    if (idx >= 0)
        sub_8028C2E((char *)base + (unsigned char)idx * 0x20);
    else
        sub_80268AC((char *)base + (unsigned char)(-idx) * 0x20);
}

extern "C" void sub_80247A4(void *a0, int a1);

extern "C" void sub_8016D24(void *a0, void **a1)
{
    struct Player *player = (struct Player *)gPlayerEntity;
    struct Default *node = (struct Default *)*a1;

    if (player->field_80.field_4 < 7) {
        player->field_ad = player->field_b0;
        player->field_ae = 0;
    }

    sub_80247A4(gUnknown_030034F8, node->field_04 != 0);
}
