#include "HostileCreature.hpp"
#include "Stub.hpp"

unsigned int HostileCreature::unknown_script3C_handler() {
  struct GameObjUnknown *p_flags; // r5
  int x_pos; // r0
  int *v4; // r0
  unsigned int result; // r0
  int v6[5]; // [sp+4h] [bp-14h] BYREF

  p_flags = &this->flags;
  x_pos = this->x_pos;
  v6[1] = this->y_pos - p_flags[1].unk04;
  v6[0] = x_pos;
  sub_803FF24(this->unk2C[0], v6);
  v4 = this->unk2C[1];
  if ( v4 )
    sub_803FF24(v4, &this->x_pos);
  result = p_flags->unk14 << 14;
  if ( (p_flags->unk14 & 0x20000) != 0 )
  {
    result = (3072 * ((16 * this->directionAndMore.flags) >> 28)) & 0x3FFF | p_flags[1].unk14 & 0xFFFFC3FF;
    p_flags[1].unk14 = result;
  }
  return result;
}

int HostileCreature::unknown_script40_handler(int a2) {
    return a2 - 5;
}

int HostileCreature::player_iframe() {
    return (this->unk30) << 28 >> 31;
}