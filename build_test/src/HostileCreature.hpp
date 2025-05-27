#ifndef HOSTILECREATURE_H
#define HOSTILECREATURE_H

#include "GameObj.hpp"

class HostileCreature : public GameObj {
    public:
    static HostileCreature* Create(HostileCreature* preallocated_memory) {
        HostileCreature* new_obj;
        
        new_obj = preallocated_memory;
        
        if (!new_obj) {
            new_obj = (HostileCreature *)maybeMallocEWRAM(172);
            if (!new_obj) {
                return (HostileCreature *)0;
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

    virtual unsigned int unknown_script3C_handler();
    virtual int unknown_script40_handler(int a2);
    virtual int player_iframe();

    char unk24[6];
    short unk2A;
    int **unk2C;
    int unk30;
    union GameObjStateUnion state;
    char unkpadding[44];
};

#endif // HOSTILECREATURE_H