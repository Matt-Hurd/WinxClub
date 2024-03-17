#include "winxclub.h"

extern int gUnknown_0300344C;
extern int gUnknown_03003454;
extern int gUnknown_03003464;
extern struct Player gPlayerEntity;
extern struct PlayerPointer gPlayerPointer;
extern int gUnknown_03003E88;
extern int *gUnknown_03003E98;

extern char *gUnknown_08051038;

extern int sub_8005106(void);
extern int sub_80237DA(unsigned char *);
extern int *sub_8024084(struct Player*);
extern int *sub_802416A(void *);
extern int sub_80244C6(void *, int);
extern int sub_803B860(int, int, ...);
extern int sub_803DA18(struct Player*);
extern int sub_803DA9C(int, int, int, int);
extern unsigned int sub_803FEF8(unsigned int, int);
extern int sub_8040684(int);
extern void sub_803F464(char *, int, int);
extern int sub_803F904(int, int, int, int);
extern int sub_8017A0A(int, short, int, int, int);
extern int sub_800B314(int, int, unsigned int, char *, int);
extern int sub_803F72C(int, int, int);

// Matching
void sub_80239EC()
{
	char buffer[512];
	sub_803F464(buffer, 512, 0);
	sub_800B314(gUnknown_03003464, 1, (gPlayerPointer.field_0 << 9) + 32, buffer, 512);
	if (gPlayerPointer.field_4 != 0) {
		sub_803DA18(gPlayerPointer.field_4);
	}

	gPlayerPointer.field_4 = 0;
	sub_803FEF8(4, 0);
}

// Matching
void ModifyPlayerHealth(unsigned char* r0, int r1) {
	signed int r2 = *r0 + r1;

	if (r1 >= 0 || !r0[14]) {
		if (r2 < 0) {
			*r0 = 0;
		}
		else if (r0[3] < r2) {
			*r0 = r0[3];
		}
		else {
			*r0 = r2;
		}
		sub_80244C6(gPlayerEntity.field_0, r1 >> 31);
	}
}

// Matching
void sub_8023A70(char* r0, int r1)
{
	int r4 = r0[1] + r1;
	if (r4 < 0) {
		r0[1] = 0;
	}
	else {
		int r1 = r0[4];
		if (r4 < r1)
			r0[1] = r1;
		else
			r0[1] = r4;
	}

	sub_802416A(gPlayerEntity.field_0);
	r0[20] = *(char*)(8 + (int)gUnknown_03003E98);
}

// Matching
int  sub_8023AA2(unsigned char *a1, int a2)
{
  int v3; // r0
  int v4; // r1
  int result; // r0

  v3 = *(a1 + 2) + a2;
  if ( v3 < 0 || gPlayerPointer.field_4->field_80.field_4 == 1 )
  {
	*(a1 + 2) = 0;
  }
  else
  {
	v4 = *(a1 + 5);
	if ( v3 < v4 )
	  *(a1 + 2) = v3;
	else
	  *(a1 + 2) = v4;
  }
  sub_8024084(&gPlayerEntity);
  result = *(int *)((int)gUnknown_03003E98 + 8);
  *(int *)(a1 + 24) = result;
  return result;
}

// Matching
int sub_8023AE0(char *r0, int r1) {
    signed char r2 = r0[8];
	char result;

    r2 += r1;
    if (r2 < 0) {
        r0[8] = 0;
    } else {
        char r3 = r0[7];
        if (r3 < r2) {
            r0[8] = r3;
        } else {
            r0[8] = r2;
        }
    }
	
    r2 = 6 * r0[8];

    r0[3] = r2;
    r0[0] = r2;

    result = (r1 > 0) ? 1 : 0;
    return sub_80244C6(gPlayerEntity.field_0, result);
}

void CollectFirefly(unsigned char *a1, char a2)
{
  int v3; // r0
  int v4; // r1
  int v5; // r5
  char v7; // r0
  struct Player *v8; // r2
  int v9; // r0
  char v10; // r5
  int *v11; // r6
  int v12; // r1
  int v13; // r3
  int v14; // r0
  int v15; // r4
  int v16; // r5
  short *v17; // r0
  int v18; // r0
  int v19; // r0
  short *v20; // r0
  int v21; // [sp+10h] [bp-30h]
  int v22; // [sp+14h] [bp-2Ch]
  int v23; // [sp+18h] [bp-28h]
  int v24; // [sp+1Ch] [bp-24h]
  int v25; // [sp+20h] [bp-20h]
  unsigned char v26; // [sp+24h] [bp-1Ch]
  unsigned char v27; // [sp+25h] [bp-1Bh]
  unsigned char v28; // [sp+26h] [bp-1Ah]
  unsigned char v29; // [sp+27h] [bp-19h]
  char v30[24]; // [sp+28h] [bp-18h]

  v3 = (signed char)(a1[6] + a2);

  if ( v3 < 0 )
  {
	a1[6] = 0;
  }
  else
  {
	v4 = a1[7];
	if ( v4 < v3 )
	  a1[6] = v4;
	else
	  a1[6] = v3;
  }
  v5 = a1[6];
  if ( !sub_8040684(v5) || v5 == 1 )
  {        
	v7 = 0;
    v8 = gPlayerPointer.field_4;
    do
    {
      v30[v7] = *((char *)v8 + v7 + 181);
      v7 = (char)(v7 + 1);
    }
	while ( v7 < 4 );
	sub_80237DA(a1);
   	v9 = 0;
	v26 = 0;
	v27 = 0;
	v28 = 0;
	v10 = 0;
	v29 = 0;
	v11 = (int *)gPlayerPointer.field_4;
    do
    {
      v12 = *((unsigned char *)v11 + v9 + 181);
      if ( (unsigned char)v30[v9] != v12 )
      {
        v13 = v10;
        v10 = (unsigned char)(v10 + 1);
        v13 = gUnknown_08051038[v9] + v12;
      }
      v9 = (char)(v9 + 1);
    }
    while ( v9 < 4 );

	v14 = sub_8005106();
	v25 = sub_803DA9C(200, v14, 0, 0);
	v24 = sub_803F904(gUnknown_0300344C, v29, 0, 255);
	v23 = sub_803F904(gUnknown_0300344C, v28, 0, 255);
	v22 = sub_803F904(gUnknown_0300344C, v27, 0, 255);
	v21 = sub_803F904(gUnknown_0300344C, v26, 0, 255);
	v15 = sub_803F904(gUnknown_0300344C, a1[13] + 149, 0, 255);
	v16 = sub_803F904(gUnknown_0300344C, v10 + 1257, 0, 255);
	sub_803B860(v25, v16, v15, v21, v22, v23, v24);
	v17 = (short *)sub_803F72C(gUnknown_03003E88, 4, 0);
	*v17 = 20;
	v17[1] = 4;
	sub_8017A0A(gUnknown_03003454, 1, (int)v17, 2, 0);
	v18 = sub_803F72C(gUnknown_03003E88, 16, 0);
	*(short *)v18 = 3;
	*(short *)(v18 + 2) = 16;
	*(int *)(v18 + 4) = 3;
	*(int *)(v18 + 8) = 0;
	sub_8017A0A(gUnknown_03003454, 1, (int)v18, 2, 0);
	v19 = sub_803F72C(gUnknown_03003E88, 16, 0);
	*(short *)v19 = 25;
	*(short *)(v19 + 2) = 16;
	*(int *)(v19 + 4) = v25;
	*(short *)(v19 + 10) = 0;
	*(short *)(v19 + 12) = 0;
	sub_8017A0A(gUnknown_03003454, 3, (int)v19, 2, 0);
	v20 = (short *)sub_803F72C(gUnknown_03003E88, 4, 0);
	*v20 = 27;
	v20[1] = 4;
	sub_8017A0A(gUnknown_03003454, 3, (int)v20, 2, 0);
  }
}