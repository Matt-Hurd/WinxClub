extern void *gUnknown_03003E84;
extern void sub_800529A(void *a0, int a1, int a2, void *a3);
extern void sub_803D9A8(void *a0, int a1, int a2);

void sub_8000C7C(int *a0, int a1) {
  void *g = gUnknown_03003E84;
  sub_800529A(g, a1, 0x3c, a0 + 1);
  *(a0 + 6) += a1;
  *(a0 + 7) += a1;
  *(a0 + 8) += a1;
  *(a0 + 9) += a1;
  *(a0 + 10) += a1;
  *(a0 + 11) += a1;
  *(a0 + 12) += a1;
  *(a0 + 13) += a1;
  *(a0 + 18) = a1;
}

void sub_8000CC6(int *a0, int a1) { a0[19] = a1; }

void sub_8000CCA(int *a0, int a1) { a0[20] = a1; }

void sub_8000CCE(int *a0) {
  if (a0[16]) {
    sub_803D9A8((void *)a0[16], 0, 0);
    a0[16] = 0;
  }
  if (a0[17]) {
    sub_803D9A8((void *)a0[17], 0, 0);
    a0[17] = 0;
  }
  if (a0[22]) {
    sub_803D9A8((void *)a0[22], 0, 0);
    a0[22] = 0;
  }
  if (a0[23]) {
    sub_803D9A8((void *)a0[23], 0, 0);
    a0[23] = 0;
  }
  if (a0[24]) {
    sub_803D9A8((void *)a0[24], 0, 0);
    a0[24] = 0;
  }
  if (a0[25]) {
    sub_803D9A8((void *)a0[25], 0, 0);
    a0[25] = 0;
  }
  if (a0[26]) {
    sub_803D9A8((void *)a0[26], 0, 0);
    a0[26] = 0;
  }
  if (a0[27]) {
    sub_803D9A8((void *)a0[27], 0, 0);
    a0[27] = 0;
  }
}

void *sub_8000D5A(void *a0) { return (void *)((int)a0 + 4); }

void nullsub_3(void) {}
