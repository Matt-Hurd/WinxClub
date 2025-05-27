#ifndef MONSTER_H
#define MONSTER_H

#include "HostileCreature.hpp"

class Monster: public HostileCreature {
public:
    static Monster* Create(Monster* preallocated_memory) {
        Monster* new_obj;
        
        new_obj = preallocated_memory;
        
        if (!new_obj) {
            new_obj = (Monster *)maybeMallocEWRAM(172);
            if (!new_obj) {
                return (Monster *)0;
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

    virtual int unknown_script40_handler(int a2);
    virtual int intersect(int a2, int a3, char a4);
};

#endif // MONSTER_H