/* One function of split_8038528; the rest of the unit -- including
 * sub_8038544, sub_80385AC and sub_8038754 (parked, see notes/parked.md) --
 * stays assembly in asm/nonmatching/split_8038528/. cpp_evidence.py proves
 * the unit C++ via __vecmap1c__/__vecmap1ci__ elsewhere in it (winx-iez.51).
 */
#include "generated/functions.h"
#include "generated/globals.h"

extern "C" void sub_8000DE6(void *a0, void *a1);
extern "C" void FadeToBlack(void);

extern "C" void sub_8038528(void *a0)
{
    FadeToBlack();
    sub_8000DE6(gUnknown_03003448, (char *)a0 + 0x2d4);
}
