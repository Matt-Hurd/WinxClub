/* One function of split_8040104; the rest of the unit is still assembly in
 * asm/nonmatching/split_8040104/.
 */

extern "C" void sub_8041274(void *a0, void *a1, int a2, int a3);

extern "C" void sub_8040104(void *a0, short a1, short a2)
{
    if (*(void **)((char *)a0 + 0x44) == 0) {
        if (*(void **)((char *)a0 + 0x50) != 0) {
            sub_8041274(*(void **)((char *)a0 + 0x50),
                        *(void **)((char *)a0 + 0x48), 0, 0);
        } else {
            operator delete[](*(void **)((char *)a0 + 0x48));
        }
        *(void **)((char *)a0 + 0x48) = 0;
    }
    *(short *)((char *)a0 + 0x20) = a1;
    *(short *)((char *)a0 + 0x1e) = a2;
    *(short *)((char *)a0 + 0x2a) = a1;
    *(short *)((char *)a0 + 0x28) = a2;
    *(int *)((char *)a0 + 0x24) = 0;
    *(unsigned short *)((char *)a0 + 0xe) |= 1;
}
