/* Two functions of split_80137F8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80137F8/. sub_80137F8 was tried but parked -- see
 * notes/parked.md.
 */
#include <stdarg.h>
#include "generated/functions.h"

extern "C" void vsprintf(char *s, const char *fmt, va_list ap);
extern "C" void sub_80137F8(void *a0, void *a1, int a2);

extern "C" void sub_801390A(void *a0, const char *fmt, ...)
{
    char buf[0x400];
    va_list ap;

    va_start(ap, fmt);
    vsprintf(buf, fmt, ap);
    va_end(ap);
    sub_80137F8(a0, buf, 1);
}

/* Field 0x40 setter; unreferenced by any converted source, called only
 * through data not text (or a table not yet ported). */
extern "C" void sub_80139A4(void *a0, int a1)
{
    *(int *)((char *)a0 + 0x40) = a1;
}

extern "C" int sub_80139A8(void)
{
    return 1;
}
