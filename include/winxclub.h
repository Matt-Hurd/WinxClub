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
  int field_0;
  struct Player *field_4; 
};