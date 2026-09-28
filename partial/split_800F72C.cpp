/* Ten functions of split_800F72C; the rest of the unit is still assembly in
 * asm/nonmatching/split_800F72C/.
 */
#include "Obj.h"

extern "C" int sub_800F77C(void)
{
    return 0x89 << 2;
}

extern "C" int sub_800F7A8(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    typedef unsigned int (*Fn)(void *);
    void *self = a0;
    int *vtbl = *(int **)a0;
    Fn fn = (Fn)(vtbl[6] + (int)vtbl);
    unsigned int pos = fn(self);
    unsigned short consumed = a0->field_84;
    int capacity;
    pos = (pos >> 1) << 1;
    if (consumed >= pos)
        goto wrapped;
    return pos - consumed;
wrapped:
    capacity = 1 << a0->field_08;
    return (capacity - consumed) + pos;
}

extern "C" void sub_80132F4(int *a0);

extern "C" void sub_800F944(void *a0v)
{
    Obj *a0 = (Obj *)a0v;

    a0->field_84 = 0;
    /* reads all 4 bytes of field_7c plus its trailing pad_7d as one word,
     * not the single-byte field_7c alone -- keep the cast. */
    a0->field_80 = *(int *)((char *)a0 + 0x7c);
    a0->field_88 = a0->field_78;

    sub_80132F4((int *)a0->field_6c);

    /* field_6c points at an object with no header of its own -- keep the
     * cast for what it points to. */
    *(int *)((char *)a0->field_6c + 0x200 + 0x20) = a0->field_78;
    *(int *)((char *)a0->field_6c + 0x200 + 0x1c) = 0;
}

extern "C" void sub_800F782(void *a0v, void *a1)
{
    Obj *a0 = (Obj *)a0v;
    a0->field_6c = (unsigned int)a1;
}

extern "C" void sub_800FB48(void *a0);
extern "C" int __VTABLE__314dword_803E5C8;

extern "C" void *sub_800F72C(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    if (a0 == 0) {
        a0 = (Obj *)operator new(0x8c);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_800FB48(a0);
    a0->field_00 = (unsigned int)&__VTABLE__314dword_803E5C8;
    a0->field_6c = 0;
    a0->field_88 = 0;
    return a0;
}

extern "C" void sub_800FB72(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);

extern "C" void sub_800F75A(void *a0v, int a1)
{
    Obj *a0 = (Obj *)a0v;
    a0->field_00 = (unsigned int)&__VTABLE__314dword_803E5C8;
    sub_800FB72(a0, 0);
    if (a1) {
        sub_803DA18(a0);
    }
}

extern "C" void nullsub_5(void *a0, int a1, int a2);
extern "C" void *gUnknown_03003E84;

extern "C" void sub_800F786(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    int v88 = a0->field_88;

    if (v88 != 0 && (a0->field_5c << 30) != 0) {
        void *g = gUnknown_03003E84;
        int pos = a0->field_80;
        nullsub_5(g, v88, pos);
    }
}
