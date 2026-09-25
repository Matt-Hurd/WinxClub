/* One function of split_8029070; the rest of the unit is still assembly in
 * asm/nonmatching/split_8029070/ -- including sub_8029290, parked, see
 * notes/parked.md.
 *
 * sub_802925C is a plain function, not a vtable slot (not a Class__NN
 * working label), even though it takes a HostileCreature-shaped `a0` and
 * forwards into `sub_802913E`. `a1` points to a pointer to the actual params
 * struct -- the ROM dereferences it once (`ldr r3,[r1]`) before reading any
 * field.
 */

struct AttackParams {
    unsigned char tag;
    unsigned char pad[3];
    unsigned short half_4;
    unsigned short half_6;
    unsigned short half_8;
    unsigned char byte_a;
    unsigned char byte_b;
    unsigned char byte_c;
    unsigned char byte_d;
};

extern "C" void sub_802913E(void *a0, unsigned short h8, unsigned short h6,
                             unsigned char a10, unsigned short h4,
                             unsigned char b, int zero1, unsigned char c,
                             unsigned char d, int zero2);

extern "C" void sub_802925C(void *a0, struct AttackParams **a1)
{
    struct AttackParams *p = *a1;
    sub_802913E(a0, p->half_8, p->half_6, p->byte_a, p->half_4, p->byte_b, 0,
                p->byte_c, p->byte_d, 0);
}
