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

struct ScriptGroup {
  //&ScriptGroup + script_offset = ROM code
  int init_script;
  int unknown_script04;
  int unknown_script08;
  int unknown_script0C;
  int unknown_script10;
  int unknown_script14;
  int unknown_script18;
  int unknown_script1C;
  int unknown_script20;
  int damage_player; // triggered when player takes damage
  int player_iframe; // ran every frame while player is invincible after taking damage
  int attack; // ran every frame while attacking
  int take_damage; // ran single frame when hit by player
  int intersect; // ran every frame while intersecting with another object
  int unknown_script38;
  int unknown_script3C;
  int unknown_script40;
  int unknown_script44;
  int dying; // triggered for a few frames during death animation
  int dead; // triggered for single frame after death animation
  int start_attack; // triggered for single frame when starting an attack
  int start_attack2; // called after start_attack
  int unknown_script58;
  int unknown_script5C;
  int unknown_script60;
};

struct GameObj
{
  struct ScriptGroup *Scripts;
  char unk04[124];
  int unknown80;
  char unk64[0x32];
  char health;
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

