#ifndef GAMEOBJ_H
#define GAMEOBJ_H

#include <cstdint>

# include "Stub.hpp"

// extern "C" {
//     void* maybeMallocEWRAM(int size);
//     void *Init_and_add_some_object(void* obj);
// }

enum GameObjDirection {
  RIGHT = 0x0,
  DOWN = 0x1,
  LEFT = 0x2,
  UP = 0x3
};

struct GameObjDirectionAndMore {
  int16_t unk1;
  char unk3;
  enum GameObjDirection direction;
};

enum GameObjDirectionAndMoreEnum {
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
  unkBool_80000000 = 0x80000000
};

union GameObjDirectionAndMoreUnion {
  enum GameObjDirectionAndMoreEnum flags;
  struct GameObjDirectionAndMore struc;
};

enum EnemyAction {
  ATTACKING = 0x9,
  BLOCKING = 0xE,
  DYING = 0xF,
  DEAD = 0x10
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

struct GameObjStateInfo
{
  unsigned char unk00;
  unsigned char unk01;
  unsigned char health;
  unsigned char unkn03;
};

enum GameObjState
{
  GameObjState_1 = 0x1,
  GameObjState_2 = 0x2,
  GameObjState_4 = 0x4,
  GameObjState_8 = 0x8,
  GameObjState_10 = 0x10,
  GameObjState_20 = 0x20,
  GameObjState_40 = 0x40,
  GameObjState_80 = 0x80,
  GameObjState_100 = 0x100,
  GameObjState_200 = 0x200,
  GameObjState_400 = 0x400,
  GameObjState_800 = 0x800,
  GameObjState_1000 = 0x1000,
  GameObjState_2000 = 0x2000,
  Active = 0x4000,
  GameObjState_8000 = 0x8000
};



union GameObjStateUnion
{
  enum GameObjState flags;
  struct GameObjStateInfo bytes;
};


class GameObj {
public:
    static GameObj* Create(GameObj* preallocated_memory) {
        GameObj* new_obj;
        
        new_obj = preallocated_memory;
        
        if (!new_obj) {
            new_obj = (GameObj *)maybeMallocEWRAM(172);
            if (!new_obj) {
                return (GameObj *)0;
            }
        }
        Init_and_add_some_object(new_obj);
        // ((void **)new_obj)[0] = ObjectScriptGroup;
        new_obj->unk04 = 17;
        (unsigned int)(new_obj->directionAndMore.flags) &= 0xF0FFFFFF;
        (int)(new_obj->flags.CurrentAction) = 17;
        new_obj->flags.unk00 = (new_obj->flags.unk00 & 0xFF8007FF) + 2613248;
        // BYTE1(new_obj->directionAndMore.flags) = 60;
        // LOBYTE(new_obj->directionAndMore.flags) = 20;
        *new_obj[1].gap06 = 0;
        new_obj->flags.unk0C &= ~0x1000u;
        return new_obj;
    }

    virtual int unknown_script04_handler() { return 0; }
    virtual int unknown_script08_handler() { return 0; }
    virtual int unknown_script0C_handler() { return 0; }
    virtual int unknown_script10_maybe_tick_handler() { return 0; }
    virtual int unknown_script14_handler() { return 0; }
    virtual int unknown_script18_handler() { return 0; }
    virtual int unknown_script1C_handler() { return 0; }
    virtual int unknown_script20_handler() { return 0; }
    virtual int damage_player(int damage_amount) { return 0; }
    virtual int player_iframe() { return 0; }
    virtual int attack(GameObj* target) { return 0; }
    virtual int take_damage() { return 0; }
    virtual int intersect(int a2, int a3, char a4) {
        // Placeholder for intersection logic
        return 123;
    }
    virtual int unknown_script38_handler() { return 0; }
    virtual unsigned int unknown_script3C_handler() { return 0; }
    virtual int unknown_script40_handler(int a2) {
        // Placeholder for script handling logic
        return a2 + 5;
    }
    virtual int unknown_script44_handler()  { return 0; }
    virtual int dying()  { return 0; }
    virtual int dead()  { return 0; }
    virtual int start_attack()  { return 0; }
    virtual int start_attack2()  { return 0; }
    virtual int unknown_script58_handler()  { return 0; }
    virtual int unknown_script5C_handler()  { return 0; }
    virtual int unknown_script60_handler()  { return 0; }

    virtual ~GameObj() {}

    int16_t unk04;
    char gap06[2];
    uint16_t unkShort08;
    uint16_t unkShort0a;
    uint16_t unkShort0c;
    uint16_t unkShort0e;
    char gap10[8];
    int16_t unk18;
    int16_t unk1A;
    int unk1C;
    char unk20[12];
    int *unk2C[5];
    int gap40;
    int gap44;
    int gap48;
    char *ScriptGroupName;
    char gap50[8];
    int x_pos;
    int y_pos;
    int x_speed;
    int y_speed;
    int unk68;
    int unk6C;
    int unk70;
    int unk74;
    int unk78;
    GameObjDirectionAndMoreUnion directionAndMore;
    GameObjUnknown flags;
};

#endif // GAMEOBJ_H