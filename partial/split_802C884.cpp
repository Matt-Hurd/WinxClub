/* One function of split_802C884; the rest of the unit is still assembly in
 * asm/nonmatching/split_802C884/. sub_802D274 (47 lines) was attempted and
 * parked -- see notes/parked.md.
 *
 * sub_802C8B0 (m00), sub_802C884 (the standalone allocate-then-construct
 * helper) and sub_802D23C (m10) were also attempted this batch and parked --
 * see notes/parked.md. sub_802C8B0/sub_802C884 both load
 * __VTABLE__312dword_803E578, whose only occurrence anywhere in this unit is
 * inside still-assembly sub_802C8D2's own interior pool, unreachable to the
 * splicer (unit_pool() only reads pool.s); sub_802D23C matched size and
 * shape but stopped on the fixed ADD-operand-order register-allocation
 * quirk (add-operand-order-follows-evaluation-not-source.md).
 */

extern "C" unsigned char sub_802D2D0(void *a0)
{
    return *((unsigned char *)a0 + 0x44);
}
