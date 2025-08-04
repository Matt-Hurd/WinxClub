#ifndef GAMEOBJ_HPP
#define GAMEOBJ_HPP

#include <cstdint>
#include "winxclub.h"

class GameObj {
public:
    int16_t unk04;
    char    gap06[2];
    uint16_t unkShort08;
    uint16_t unkShort0a;
    uint16_t unkShort0c;
    uint16_t unkShort0e;
    char    gap10[8];
    int16_t unk18;
    int16_t unk1A;
    int     unk1C;
    char    unk20[12];
    int* unk2C[5];
    int     gap40;
    int     gap44;
    int     gap48;
    char* ScriptGroupName;
    char    gap50[8];
    int     x_pos;
    int     y_pos;
    int     x_speed;
    int     y_speed;
    int     unk68;
    int     unk6C;
    int     unk70;
    int     unk74;
    int     unk78;
    union   GameObjDirectionAndMoreUnion directionAndMore;
    struct  GameObjUnknown flags;

public:
    GameObj(int a2);

    static GameObj* Create(GameObj* memory_slot);

    virtual int init();
    virtual int unknown_script04();
    virtual int unknown_script08();
    virtual int unknown_script0C();
    virtual int unknown_script10MaybeTick();
    virtual int unknown_script14();
    virtual int unknown_script18();
    virtual int unknown_script1C();
    virtual int unknown_script20();
    virtual int damage_player();
    virtual int player_iframe();
    virtual int attack();
    virtual int take_damage();
    virtual int intersect();
    virtual int unknown_script38();
    virtual int unknown_script3C();
    virtual int unknown_script40();
    virtual int unknown_script44();
    virtual int dying();
    virtual int dead();
    virtual int start_attack();
    virtual int start_attack2();
    virtual int unknown_script58();
    virtual int unknown_script5C();
    virtual int unknown_script60();
};

#endif // GAMEOBJ_HPP
