#ifndef OBJECT_HPP
#define OBJECT_HPP

#include "winxclub.h"
#include "GameObj.hpp"

extern "C" void* maybeMallocEWRAM(unsigned int size);
extern "C" void Init_and_add_some_object(void* obj);
extern "C" void* sub_803DA18(void* obj);

class Object : public GameObj {
public:
    Object(int a2);

    static Object* Create(Object* memory_slot);

    virtual int init();
    virtual int unknown_script04();
};

#endif // OBJECT_HPP
