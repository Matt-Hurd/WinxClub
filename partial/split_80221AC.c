/* One function of split_80221AC; sub_802222C is parked (notes/parked.md),
 * still assembly in asm/nonmatching/split_80221AC/. The callees and the one
 * global besides gUnknown_0300345C/gUnknown_03003D20 (already in
 * generated/globals.h) are declared locally, config/symbols.yml being out
 * of scope for this batch.
 *
 * a0 is a Default* (winx-qhyt.15), but Default.hpp is a C++ class and this
 * is a plain .c TU -- tcc cannot parse it (tried: "class" alone fails to
 * compile). a0->flags is struct GameObjUnknown, which winxclub.h declares
 * as a plain struct, so that part reads through it; the sprite_18..1e
 * halfwords, declared only on the Default class itself, stay byte casts.
 *
 * CurrentAction itself stays a word-cast through flags too: it is read and
 * written here as a full word, but the member is declared `enum
 * EnemyAction`, whose named values (0x9..0x10) fit a byte, and ADS 1.2 lays
 * an unqualified enum out at the width its values need, not at `int` --
 * `flags->CurrentAction` compiles to STRB/LDRB here and moves a byte
 * (notes/quirks/ads-sizes-an-unqualified-enum-to-its-values-not-to-int.md).
 */

#include "generated/globals.h"
#include "winxclub.h"

extern void sub_8028C2E(void *a0);
extern void TakeDamage__7DefaultFv(void *a0);
extern void *gUnknown_03003E98;

void sub_80221AC(void *a0)
{
    struct GameObjUnknown *flags = (struct GameObjUnknown *)((char *)a0 + 0x80);
    unsigned int action = *(unsigned int *)&flags->CurrentAction;
    unsigned int v;

    if (action != 5 && *(unsigned char *)&gUnknown_03003D20 != 0) {
        *(unsigned short *)((char *)a0 + 0x1e) = 0x44;
        *(unsigned short *)((char *)a0 + 0x1a) = 0x45;
        *(unsigned short *)((char *)a0 + 0x1c) = 0x46;
        *(unsigned short *)((char *)a0 + 0x18) = 0x46;
        *(unsigned int *)&flags->CurrentAction = 0xd;
    } else if (action != 5 && action != 0xb) {
        *(unsigned short *)((char *)a0 + 0x1e) = 0x57;
        *(unsigned short *)((char *)a0 + 0x1a) = 0x58;
        *(unsigned short *)((char *)a0 + 0x1c) = 0x59;
        *(unsigned short *)((char *)a0 + 0x18) = 0x59;
        *(unsigned int *)&flags->CurrentAction = 0xd;
    }

    v = *(unsigned int *)((char *)gUnknown_03003E98 + 8);
    v = (v << 0x1e) >> 0x1e;
    if (v < 2) {
        sub_8028C2E((char *)gUnknown_0300345C + (((v + 0x4d) << 0x18) >> 0x13));
    }

    flags->unk0C = (flags->unk0C & 0x8007ffff) + (0xf << 0x16);

    if (*(unsigned int *)&flags->CurrentAction != 5) {
        TakeDamage__7DefaultFv(a0);
    }
}
