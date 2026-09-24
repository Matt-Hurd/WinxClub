extern "C" void sub_80402F8(int *obj, int arg1) {
  if (obj[0x30 / 4] == 0)
    goto check_bit1;

  {
    unsigned short flags = *(unsigned short *)((char *)obj + 0xe);
    if (flags & 1)
      goto call_4c;
    if (!(flags & 8))
      goto check_bit3_2;
    if (obj[0x48 / 4] != 0)
      goto check_bit3_2;
  }

call_4c: {
  int *vt = (int *)obj[0];
  int off = vt[0x4c / 4];
  ((void (*)(int *, int))((char *)vt + off))(obj, arg1);
}

check_bit3_2: {
  unsigned short flags = *(unsigned short *)((char *)obj + 0xe);
  if (!(flags & 8))
    goto check_bit1;
  if (obj[0x48 / 4] == 0)
    goto check_bit1;
  {
    int *vt = (int *)obj[0];
    int off = vt[0x58 / 4];
    ((void (*)(int *, int))((char *)vt + off))(obj, arg1);
  }
}

check_bit1: {
  unsigned short flags = *(unsigned short *)((char *)obj + 0xe);
  if (!(flags & 2))
    goto check_bit2;
  {
    int *vt = (int *)obj[0];
    int off = vt[0x50 / 4];
    ((void (*)(int *, int))((char *)vt + off))(obj, arg1);
  }
}

check_bit2: {
  unsigned short flags = *(unsigned short *)((char *)obj + 0xe);
  if (!(flags & 4))
    return;
  {
    int *vt = (int *)obj[0];
    int off = vt[0x54 / 4];
    ((void (*)(int *, int))((char *)vt + off))(obj, arg1);
  }
}
}
