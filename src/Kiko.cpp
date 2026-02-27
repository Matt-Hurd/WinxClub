// Kiko ScriptGroup — derived from Default
// Full C++ port of split_803166C.s

#include "Default.hpp"

extern "C" void sub_800065C(void *obj, unsigned short val);
struct Singleton_3EA0_Data;
extern "C" Singleton_3EA0_Data *sub_8000D5A(void *ptr);
extern "C" int sub_80404B4(int val);
extern "C" int rand(void);
extern "C" void *sub_803DA18(void *obj);

extern "C" unsigned short gUnknown_08051096[];
#include "Singleton_3EA0.hpp"

class Kiko : public Default {
public:
  Kiko();
  ~Kiko();
  virtual void m04();
  virtual void m08();
  virtual void m10();

  unsigned short mask_a0;
  unsigned short pad_a2;
};

Kiko::Kiko() {
  name = "Kiko Group";

  field_04 = 5;

  // OAM attribute 0x84
  flags.unk04 = (flags.unk04 & 0xF000FFFF) + 0x02000000;

  // OAM attribute 0x8c
  unsigned int val2 = flags.unk0C;
  val2 &= ~(0xF << 15);
  val2 += (3 << 15);

  // offset 0x7d and 0x7c — accessed via base+0x70
  unsigned char *p70 = (unsigned char *)&field_70;
  p70[0xd] = 0x3c;
  p70[0xc] = 0x14;

  // OAM attribute 0x80
  flags.unk00 = (flags.unk00 & 0xFF8007FF) + 0x0027B000;

  unsigned int shifted = (val2 >> 12) << 12;
  shifted += 0x00000505;

  // OAM attribute 0x88
  flags.unk08 = (flags.unk08 & 0xFF8003FF) + 0x00443800;

  // offset 0x97 — byte 3 of unk14 (0x94+3)
  ((unsigned char *)&flags.unk14)[3] = 4;

  shifted |= (4 << 0xa);
  flags.unk0C = shifted;

  // Sprite data from gUnknown_08051096
  unsigned short *sprData = gUnknown_08051096;
  sprite_08 = sprData[2];
  sprite_0a = sprData[1];
  sprite_0c = sprData[2];
  sprite_0e = sprData[0];
  sprite_18 = sprData[5];
  sprite_1a = sprData[4];
  sprite_1c = sprData[5];
  sprite_1e = sprData[3];

  mask_a0 = 0xcf;
}

Kiko::~Kiko() {}

void Kiko::m04() { Default::m04(); }

void Kiko::m08() { Default::m08(); }

void Kiko::m10() {
  if (rand() & mask_a0) {
  } else {
    unsigned char idx = sub_80404B4(rand()) + 1;
    // NOTE: tcpp puts idx*3 in r0, but original uses r1.
    // preprocess_compiler_labels.py patches the register allocation.
    int off = idx * 3;
    unsigned short *sprData = gUnknown_08051096;
    unsigned short *entry = sprData + off;
    sprite_18 = entry[2];
    sprite_1a = entry[1];
    sprite_1c = entry[2];
    sprite_1e = sprData[off];
  }

  unsigned int action = *(unsigned int *)((char *)this + 0x9c);
  if (action == 0) {
    unsigned int r5_30 = field_30;
    Singleton_3EA0_Data *cam = sub_8000D5A((void *)gUnknown_03003EA0);
    unsigned int cam_x = cam->field_20;
    unsigned int obj_x = *(unsigned int *)(r5_30 + 0x10);
    unsigned int r5_2c = field_2c;
    int diff = (int)(obj_x - cam_x);
    int shifted = diff >> 3;
    unsigned short r6 = (unsigned short)shifted;

    cam = sub_8000D5A((void *)gUnknown_03003EA0);
    unsigned int p44_val = *(unsigned int *)(r5_2c + 0x44);
    unsigned int cam_y = cam->field_28;
    unsigned int field4 = *(unsigned int *)(p44_val + 4);
    field4 = (field4 << 16) >> 14;
    cam_y += field4;
    unsigned int p48_val = *(unsigned int *)(r5_2c + 0x48);
    unsigned short *sprData2 = gUnknown_08051096;
    int diff2 = (int)(p48_val - cam_y);
    int idx2 = (diff2 >> 2) << 1;
    unsigned short *lookup = (unsigned short *)((char *)sprData2 + 0x18);
    unsigned short val = *(unsigned short *)((char *)lookup + idx2);
    if (r6 != val) {
      unsigned int r6_2c = field_2c;
      cam = sub_8000D5A((void *)gUnknown_03003EA0);
      unsigned int cam_y2 = cam->field_28;
      unsigned int p44_val2 = *(unsigned int *)(r6_2c + 0x44);
      unsigned int field4_2 = *(unsigned int *)(p44_val2 + 4);
      field4_2 = (field4_2 << 16) >> 14;
      cam_y2 += field4_2;
      unsigned int p48_val2 = *(unsigned int *)(r6_2c + 0x48);
      int diff3 = (int)(p48_val2 - cam_y2);
      int idx3 = (diff3 >> 2) << 1;
      unsigned short lookupVal = *(unsigned short *)((char *)lookup + idx3);
      sub_800065C((void *)field_30, lookupVal);
    }
  }

  Default::m10();
}
