#include "generated/functions.h"

/* SoftReset is AgbSysArmSoftReset.o out of lib/libagbsyscall_arm.alf, not a
 * ROM function, so config/symbols.yml has nothing to declare it from. */
extern void SoftReset(int resetFlags);

void CallSoftReset(void)
{
    SoftReset(0xFB);
}
