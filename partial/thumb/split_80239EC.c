#include "winxclub.h"

extern int gUnknown_0300344C;
extern int gUnknown_03003454;
extern int gUnknown_03003464;
extern struct Unknown_030034F8 *gUnknown_030034F8;
extern struct PlayerPointer gPlayerPointer;
extern int gUnknown_03003E88;
extern int *gUnknown_03003E98;

extern char *gUnknown_08051038;

extern int sub_8005106(void);
extern int sub_80237DA(unsigned char *);
extern int *sub_8024084(struct Unknown_030034F8*);
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
		sub_80244C6(gUnknown_030034F8, (unsigned int)r1 >> 31);
	}
}

void sub_8023A70(unsigned char *a1, int a2)
{
	int v3; // r0
	int v4; // r1

	v3 = a1[1] + a2;
	if ( v3 < 0 )
	{
		a1[1] = 0;
	} else {
		v4 = a1[4];
		if ( v4 < v3 )
			a1[1] = v4;
		else
			a1[1] = v3;
	}

	sub_802416A(gUnknown_030034F8);
	*((int *)a1 + 5) = *(int*)(8 + (int)gUnknown_03003E98);
}

int  sub_8023AA2(struct struct_8023AA2_a *a1, int a2)
{
  int v3; // r0
  int v4; // r1
  int result; // r0

  v3 = a1->unk1 + a2;
  if ( v3 < 0 || gPlayerPointer.field_4->field_80.field_4 == 1 )
  {
	a1->unk1 = 0;
  }
  else
  {
	v4 = a1->unk2;
	if ( v4 < v3 )
	  a1->unk1 = v4;
	else
	  a1->unk1 = v3;
  }
  sub_8024084(gUnknown_030034F8);
  result = *(int *)((int)gUnknown_03003E98 + 8);
  a1->dword18 = result;
  return result;
}

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
    return sub_80244C6(gUnknown_030034F8, result);
}