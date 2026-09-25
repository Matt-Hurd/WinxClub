/* One function of split_800E4D8; the rest of the unit is still assembly in
 * asm/nonmatching/split_800E4D8/. cpp_evidence.py: C++ likely (vtable
 * reference elsewhere in the unit). sub_800E4D8's working label is plain
 * sub_XXXXXXX, not a vtable slot (Class__NN), so it stays a free function
 * with extern "C" linkage.
 *
 * sub_800E500, the unit's other candidate, is parked: see notes/parked.md.
 */
extern "C" void *sub_80412A8(void *a0, void *a1, int a2);
extern "C" void *sub_803D984(void *a0, int a1, int a2);

extern "C" void *sub_800E4D8(void *a0)
{
    void *tmp = sub_803D984(sub_80412A8(a0, 0, 0), 0, 0);
    sub_80412A8(a0, tmp, 2);
    return tmp;
}
