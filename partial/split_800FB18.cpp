/* Three functions of split_800FB18; the rest of the unit is still assembly in
 * asm/nonmatching/split_800FB18/. cpp_evidence.py: C++ likely (vtable
 * reference); none of these three are vtable slots (no Class__NN label), so
 * they stay free functions in this .cpp (tcpp).
 *
 * sub_800FB18's two memset calls: the first clears a pointer read out of
 * *(a0+4), typed void* (BL __rt_memclr); the second clears a0+0x14, typed
 * int* (BL __rt_memclr_w) --
 * notes/quirks/a-thumb-bl-to-__rt_memclr_w-lands-on-__16__rt_memclr_w.md.
 *
 * sub_800FCF0 parks -- see notes/parked.md -- it calls sub_800FB18 and then
 * two more functions through a vtable_base+offset function pointer, and
 * stays assembly in asm/nonmatching/split_800FB18/sub_800FCF0.s.
 */
extern "C" void *memset(void *, int, unsigned int);

extern "C" void sub_800FB18(void *a0)
{
    void *p = *(void **)((char *)a0 + 4);

    if (p) {
        memset(p, 0, (1 << *(int *)((char *)a0 + 8)) + 0x10);
    }
    *(int *)((char *)a0 + 0xc) = 0;
    *(int *)((char *)a0 + 0x10) = 0;
    {
        /* pointer arithmetic on a plain int* (not a cast at the call site)
         * is what makes tcpp reach __rt_memclr_w for this one. */
        int *ip = (int *)a0;
        memset(ip + 5, 0, 0x48);
    }
    *(int *)((char *)a0 + 0x5c) = 8;
}

extern "C" void sub_800FC6C(void *a0, int a1, int a2)
{
    *(int *)((char *)a0 + 4) = a1;
    *(int *)((char *)a0 + 8) = a2;
}

extern "C" int sub_800FD2C(void)
{
    return 0;
}
