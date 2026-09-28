#include "dword_803E374.hpp"

/* obj's vtable slots 0x4c/0x50/0x54/0x58 are dword_803E374's m4C/m50/m54/m58
 * (include/dword_803E374.hpp), but the call itself is the same self-relative
 * table idiom as sub_8013DEA and sub_8018160 (offset read from the table,
 * added back to the table's own base), not a plain virtual dispatch through
 * the header -- so only the data fields are typed here, the call shape stays.
 */
extern "C" void sub_80402F8(dword_803E374 *obj, int arg1) {
  if (obj->field_30 == 0)
    goto check_bit1;

  {
    unsigned short flags = obj->field_0e;
    if (flags & 1)
      goto call_4c;
    if (!(flags & 8))
      goto check_bit3_2;
    if (obj->field_48 != 0)
      goto check_bit3_2;
  }

call_4c: {
  int *vt = *(int **)obj;
  int off = vt[0x4c / 4];
  ((void (*)(dword_803E374 *, int))((char *)vt + off))(obj, arg1);
}

check_bit3_2: {
  unsigned short flags = obj->field_0e;
  if (!(flags & 8))
    goto check_bit1;
  if (obj->field_48 == 0)
    goto check_bit1;
  {
    int *vt = *(int **)obj;
    int off = vt[0x58 / 4];
    ((void (*)(dword_803E374 *, int))((char *)vt + off))(obj, arg1);
  }
}

check_bit1: {
  unsigned short flags = obj->field_0e;
  if (!(flags & 2))
    goto check_bit2;
  {
    int *vt = *(int **)obj;
    int off = vt[0x50 / 4];
    ((void (*)(dword_803E374 *, int))((char *)vt + off))(obj, arg1);
  }
}

check_bit2: {
  unsigned short flags = obj->field_0e;
  if (!(flags & 4))
    return;
  {
    int *vt = *(int **)obj;
    int off = vt[0x54 / 4];
    ((void (*)(dword_803E374 *, int))((char *)vt + off))(obj, arg1);
  }
}
}
