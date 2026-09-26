/* Functions of split_802E418; the rest of the unit is still assembly in
 * asm/nonmatching/split_802E418/. Slots per config/vtables.yml's
 * dword_803E2A0 entry: m00 = sub_802E4AA, m04 = sub_802E4EA,
 * m08 = sub_802E4EC, m0C = sub_802E4EE, m10 = sub_802E47A.
 */
#include "dword_803E2A0.hpp"
#include "Singleton_3EB8.hpp"

void dword_803E2A0::m08()
{
}

/* m04: the empty body is the bare `bx lr` the ROM has. */
void dword_803E2A0::m04()
{
}

extern "C" void sub_8000DE6(void *a0, void *a1);
extern "C" void sub_803DA18(void *a0);

/* The vtable is declared, not defined, here -- a real constructor
 * definition in this TU would make tcpp emit __VTABLE__300dword_803E2A0
 * itself (notes/quirks/a-member-function-alone-in-a-tu-emits-no-vtable.md),
 * which is why sub_802E418 below stores its address by hand instead of
 * being a real dword_803E2A0::dword_803E2A0().
 */
extern "C" int __VTABLE__300dword_803E2A0;

/* m00 releases the two owned resources at +4 and +8, resets the vtable to
 * this class's own (undoing whatever a derived class installed), and -- if
 * asked -- destroys the object. This is the scalar deleting destructor
 * slot, which is why it takes a flag argument the .hpp had not declared.
 */
void dword_803E2A0::m00(int a0)
{
    *(int *)this = (int)&__VTABLE__300dword_803E2A0;
    if (this->field_04 != 0) {
        sub_8000DE6(gUnknown_03003EB8, &this->field_04);
        this->field_04 = 0;
    }
    if (this->field_08 != 0) {
        sub_8000DE6(gUnknown_03003EB8, &this->field_08);
        this->field_08 = 0;
    }
    if (a0) {
        sub_803DA18(this);
    }
}

/* m10: same resource release as the first half of m00, without the
 * vtable reset or the optional delete.
 */
void dword_803E2A0::m10()
{
    if (this->field_04 != 0) {
        sub_8000DE6(gUnknown_03003EB8, &this->field_04);
        this->field_04 = 0;
    }
    if (this->field_08 != 0) {
        sub_8000DE6(gUnknown_03003EB8, &this->field_08);
        this->field_08 = 0;
    }
}

/* sub_802E418 (the constructor) is parked -- see notes/parked.md -- and
 * stays assembly in asm/nonmatching/split_802E418/sub_802E418.s.
 */
