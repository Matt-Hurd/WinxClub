#ifndef OBJ_H
#define OBJ_H

/* A playing sound channel. Promoted out of partial/split_800FD48.c's own
 * private typedef (which named field_04/field_08/field_5c/field_64) and
 * extended with the offsets proven by field_access.py over
 * partial/split_800FB18.cpp, split_800F1E8.cpp, split_800F72C.cpp and
 * split_800F4F0.c -- see
 * docs/decisions/drafts/2026-09-27-object-types-residue.md, family A.
 * field_04 is a raw sample-data address, field_08 a channel/voice shift
 * count; the rest of the new fields have no proven meaning yet beyond their
 * width and read/write use.
 */
typedef struct {
    unsigned int field_00;
    unsigned int field_04;
    unsigned int field_08;
    unsigned int field_0c;
    unsigned int field_10;
    char pad_14[0x18 - 0x14];
    unsigned int field_18;
    char pad_1c[0x34 - 0x1c];
    unsigned int field_34;
    char pad_38[0x5c - 0x38];
    unsigned int field_5c;
    unsigned int field_60;
    unsigned int field_64;
    unsigned int field_68;
    unsigned int field_6c;
    struct ObjBank *field_70;
    unsigned int field_74;
    unsigned int field_78;
    unsigned char field_7c;
    char pad_7d[0x80 - 0x7d];
    unsigned int field_80;
    unsigned short field_84;
    char pad_86[0x88 - 0x86];
    unsigned int field_88;
} Obj;

/* The per-channel table reached at Obj->0x70. Working name only -- no
 * anchor outside split_800F1E8.cpp's sub_800F312 and split_800F4F0.c's
 * sub_800F4F0 proves it; propose a better name (e.g. ChannelState,
 * VoiceRegion) once a caller ties it to something more specific. */
typedef struct ObjBank {
    char pad_00[0x1c - 0x00];
    unsigned int field_1c;
    unsigned int field_20;
    unsigned int field_24;
    unsigned int field_28;
    unsigned int field_2c;
    unsigned int field_30;
    char pad_34[0x88 - 0x34];
    unsigned int field_88;
    unsigned int field_8c;
    unsigned int field_90;
    unsigned int field_94;
} ObjBank;

#endif
