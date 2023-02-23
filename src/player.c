#include "iwram.h"
#include "global.h"
#include "gba/m4a_internal.h"

extern char *sub_80244C6(void *, unsigned int);

unsigned char *modify_player_health(unsigned char *result, unsigned int a2)
{
  int v2;
  int v3;

  v2 = *result + a2;
  if ( (a2 & 0x80000000) == 0 || !result[14] )
  {
    if ( v2 >= 0 )
    {
      v3 = result[3];
      if ( v3 >= v2 )
        *result = v2;
      else
        *result = v3;
    }
    else
    {
      *result = 0;
    }
    return (unsigned char *)sub_80244C6((void *)gUnknown_030034F8, a2 >> 31);
  }
  return result;
}