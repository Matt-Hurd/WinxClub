/* One function of split_8000D64; the rest of the unit is still assembly in
 * asm/nonmatching/split_8000D64/.
 */
#include "generated/functions.h"

extern "C" void sub_8000CC6(int *a0, int a1);
extern "C" void sub_8000CCA(int *a0, int a1);
extern "C" void sub_8000C7C(int *a0, int a1);
extern "C" void sub_800B9B6(void *a0);

extern "C" void sub_8000F4C(void *a0, int a1, unsigned int a2, int a3)
{
    unsigned short *list = *(unsigned short **)((char *)a0 + 0x19DC);

    if (list) {
        operator delete[](list);
        *(unsigned short **)((char *)a0 + 0x19DC) = 0;
    }

    if (a2) {
        unsigned int i;

        *(int *)((char *)a0 + 0x19D8) = 0;
        *(unsigned short **)((char *)a0 + 0x19DC) =
            (unsigned short *)sub_803DA9C(a2 * 2, GetEWRAMStart(), 0, 0);

        for (i = 0; i < a2 - 1; i++) {
            (*(unsigned short **)((char *)a0 + 0x19DC))[i] = i + 1;
        }
        (*(unsigned short **)((char *)a0 + 0x19DC))[a2 - 1] = -1;
    }

    sub_8000CC6((int *)((char *)a0 + 4), a2);
    sub_8000CCA((int *)((char *)a0 + 4), a3);
    sub_8000C7C((int *)((char *)a0 + 4), a1);
    sub_800B9B6((char *)a0 + 4);
}
