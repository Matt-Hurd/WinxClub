# ifndef WINXCLUB_H
# define WINXCLUB_H

struct PlayerUnk1Unk1 {
  int field_0;
  int field_4;
};

struct PlayerUnk1 {
  char field_0[0x80];
  struct PlayerUnk1Unk1 field_80;
};

struct PlayerUnk2 {
  char field_0[0x4];
  char field_4;
};

struct Player {
  void *field_0;
  struct PlayerUnk1 *field_4;
  char field_8[0x78];
  struct PlayerUnk2 field_80;
};

struct PlayerPointer {
  char field_0;
  char field_1[0x3];
  struct Player *field_4; 
};

struct Unknown_030034F8 {
  int field_0; //non-zero during hit-stun, freezing breaks heart flashing animation
  int field_4; //Boolean if have 1 partial and 1 full heart?
  int field_8;
  int field_C;
  int field_10[6];
  void *field_30[8]; //EWRAM Pointers
};

struct Unknown_03003458 {
  int field_0;
  int field_4;
  int screen_x_offset;
  int screen_y_offset;
  char field_10[0x10]; //buffer
  struct GameObj* objects[0x40]; //Unsure actual limit
  char field_210[0x40C];
  char total_object_count; //0x51C, object_count*2
};

struct struct_8023AA2_a
{
  char gap0[2];
  unsigned char unk1;
  char gap3[2];
  unsigned char unk2;
  char gap6[18];
  int dword18;
};


enum GameObjDirectionAndMoreEnum
{
  Direction = 0x3,
  GameObjDirectionAndMore_4 = 0x4,
  GameObjDirectionAndMore_8 = 0x8,
  GameObjDirectionAndMore_10 = 0x10,
  GameObjDirectionAndMore_20 = 0x20,
  GameObjDirectionAndMore_40 = 0x40,
  GameObjDirectionAndMore_80 = 0x80,
  GameObjDirectionAndMore_100 = 0x100,
  GameObjDirectionAndMore_200 = 0x200,
  GameObjDirectionAndMore_400 = 0x400,
  GameObjDirectionAndMore_800 = 0x800,
  GameObjDirectionAndMore_1000 = 0x1000,
  GameObjDirectionAndMore_2000 = 0x2000,
  GameObjDirectionAndMore_4000 = 0x4000,
  GameObjDirectionAndMore_8000 = 0x8000,
  GameObjDirectionAndMore_10000 = 0x10000,
  GameObjDirectionAndMore_20000 = 0x20000,
  GameObjDirectionAndMore_40000 = 0x40000,
  GameObjDirectionAndMore_80000 = 0x80000,
  GameObjDirectionAndMore_100000 = 0x100000,
  GameObjDirectionAndMore_200000 = 0x200000,
  GameObjDirectionAndMore_400000 = 0x400000,
  GameObjDirectionAndMore_800000 = 0x800000,
  GameObjDirectionAndMore_1000000 = 0x1000000,
  GameObjDirectionAndMore_2000000 = 0x2000000,
  GameObjDirectionAndMore_4000000 = 0x4000000,
  GameObjDirectionAndMore_8000000 = 0x8000000,
  GameObjDirectionAndMore_10000000 = 0x10000000,
  GameObjDirectionAndMore_20000000 = 0x20000000,
  GameObjDirectionAndMore_40000000 = 0x40000000,
  unkBool_80000000 = 0x80000000,
};

enum EnemyAction
{
  ATTACKING = 0x9,
  BLOCKING = 0xE,
  DYING = 0xF,
  DEAD = 0x10,
};

enum GameObjDirection
{
  RIGHT = 0x0,
  DOWN = 0x1,
  LEFT = 0x2,
  UP = 0x3,
};


struct GameObjDirectionAndMore
{
  short unk1;
  char unk3;
  enum GameObjDirection direction;
};

struct GameObjUnknown {
    int unk00;
    int unk04;
    int unk08;
    int unk0C;
    int unk10;
    int unk14;
    char unk18[4];
    enum EnemyAction CurrentAction;
};

union GameObjDirectionAndMoreUnion
{
  enum GameObjDirectionAndMoreEnum flags;
  struct GameObjDirectionAndMore struc;
};

#endif // WINXCLUB_H
