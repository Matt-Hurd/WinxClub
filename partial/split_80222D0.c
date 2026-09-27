/* One function of split_80222D0; the rest of the unit, including
 * sub_8022306, is still assembly in asm/nonmatching/split_80222D0/.
 * cpp_evidence.py is undetermined for this unit and nothing here needs a
 * C++ type, so it stays .c. The two `adds r0, #0xff` / `adds r0, #0x79`
 * immediates are just 0x178 split across two 8-bit adds.
 */
#include "generated/functions.h"

extern void sub_8014864(void *a0, int a1);
extern void FadeToBlack(void);
extern void sub_8000DE6(void *a0, void *a1);
extern void *gUnknown_0300345C;
extern void *gUnknown_03003448;

void sub_80222D0(void *a0)
{
    sub_8014864((char *)a0 + 0x178, 0);
    sub_8028A7C(gUnknown_0300345C, 2, 0);
    FadeToBlack();
    sub_8000DE6(gUnknown_03003448, a0);
    sub_8000DE6(gUnknown_03003448, (char *)a0 + 4);
}
