	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300333C
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__374dword_803ED70
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_800116A
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803F38C
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_8040594

	thumb_func_start sub_8031D00
sub_8031D00
	push {r4, lr}
	adds r4, r0, #0
	bne _08031D18
	movs r0, #0x54
	bl __nw__FUi
	adds r4, r0, #0
	bne _08031D18
	adds r0, r4, #0
_08031D12
	pop {r4}
	pop {r3}
	bx r3
_08031D18
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _080320FC
	movs r1, #0x1e
	str r0, [r4]
	ldr r0, [r4, #0x4c]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	b _08031D12

	non_word_aligned_thumb_func_start sub_8031D3E
sub_8031D3E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080320FC
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _08031D5A
	adds r0, r4, #0
	bl sub_803DA18
_08031D5A
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8031D60
sub_8031D60
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r5, [r3]
	ldr r3, [r3, #4]
	adds r7, r4, #0
	str r3, [r4, #0x20]
	adds r7, #0x1c
	adds r3, r0, #1
	str r5, [r4, #0x1c]
	bne _08031DA6
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031DB4
_08031DA6
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_08031DB4
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r2, _08032100
	lsls r1, r0, #1
	ldrh r1, [r2, r1]
	cmp r0, #5
	str r1, [r4, #0x38]
	bhs _08031DDE
	add r3, pc, #0x8
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08031DDE
	b _0803225A
_08031DE0
	DCB 0x05, 0x00
_08031DE2
	DCB 0x88, 0x00
_08031DE4
	DCB 0x14, 0x01
_08031DE6
	DCB 0xBC, 0x01
_08031DE8
	DCB 0x3E, 0x02
loc_8031dea
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _08031E7E
	cmp r1, #1
	beq _08031E2C
	cmp r1, #2
	beq _08031E5A
	cmp r1, #3
	bne _08031E7C
	movs r2, #5
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032104
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031E7C
_08031E2C
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #1
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	lsrs r1, r2, #2
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031E7C
_08031E5A
	movs r2, #3
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032104
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08031E7C
	b _08031EA2
_08031E7E
	movs r2, #3
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08031EA2
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #5
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x1b
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	adds r1, #2
	str r1, [r4, #0x50]
	ldr r1, _08032108
	ands r0, r1
	ldr r1, _0803210C
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032104
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032110
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032114
	str r0, [r4, #0x48]
	b _0803225A
loc_8031ef0
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _08031F90
	cmp r1, #1
	beq _08031F32
	cmp r1, #2
	beq _08031F62
	cmp r1, #3
	bne _08031F8E
	movs r2, #0xb
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032118
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031F8E
_08031F32
	movs r2, #0x15
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0x1f
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031F8E
_08031F62
	movs r2, #7
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xf
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032118
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08031F8E
	b _08031FBC
_08031F90
	movs r2, #7
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08031FBC
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032108
	ands r0, r1
	ldr r1, _0803211C
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032120
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032124
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032128
	str r0, [r4, #0x48]
	b _0803225A
loc_8032008
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _080320A8
	cmp r1, #1
	beq _0803204A
	cmp r1, #2
	beq _0803207A
	cmp r1, #3
	bne _080320A6
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #7
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803212C
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _080320A6
_0803204A
	movs r2, #1
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0x11
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _080320A6
_0803207A
	movs r2, #1
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803212C
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_080320A6
	b _080320D6
_080320A8
	movs r2, #1
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_080320D6
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032108
	b _08032130
	ALIGN
_080320FC DCDU __VTABLE__374dword_803ED70
_08032100 DCDU gUnknown_0300333C
_08032104 DCDU 0xFFFE0000
_08032108 DCDU 0xFC001FFF
_0803210C DCDU 0x00D5C000
_08032110 DCDU 0xFFEE0000
_08032114 DCDU 0x00028CCC
_08032118 DCDU 0xFFFF0000
_0803211C DCDU 0x02A0A000
_08032120 DCDU 0xFFFD0000
_08032124 DCDU 0xFFFC0000
_08032128 DCDU 0x0002A664
_0803212C DCDU 0xFFFF8000
_08032130
	ands r0, r1
	ldr r1, _0803245C
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032460
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032464
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032468
	str r0, [r4, #0x48]
	b _0803225A
loc_8032158
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _080321E4
	cmp r1, #1
	beq _08032190
	cmp r1, #2
	beq _080321B6
	cmp r1, #3
	bne _08032212
	movs r2, #3
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803246C
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08032212
_08032190
	movs r2, #5
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08032212
_080321B6
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803246C
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08032212
_080321E4
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08032212
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032470
	ands r0, r1
	ldr r1, _0803245C
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032474
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032478
	str r0, [r4, #0x40]
	movs r0, #0xb
	lsls r0, r0, #0xe
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	str r0, [r4, #0x34]
_0803225A
	b _08032374
loc_803225c
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _080322FC
	cmp r1, #1
	beq _0803229E
	cmp r1, #2
	beq _080322CE
	cmp r1, #3
	bne _080322FA
	movs r2, #0xb
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803247C
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _080322FA
_0803229E
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0x21
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _080322FA
_080322CE
	movs r2, #9
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803247C
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_080322FA
	b _0803232A
_080322FC
	movs r2, #5
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0803232A
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032470
	ands r0, r1
	ldr r1, _08032480
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032460
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032464
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032468
	str r0, [r4, #0x48]
_08032374
	ldr r0, _08032484
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_803F38C
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, _08032484
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08032488
	str r0, [r4, #8]
	bl sub_800065C
	movs r1, #1
	ldr r0, [r4, #8]
	bl sub_803F38C
	ldr r0, [r4, #8]
	movs r5, #3
	ldrh r1, [r0, #0x26]
	lsls r5, r5, #0xa
	movs r2, #1
	lsls r2, r2, #0xa
	bics r1, r5
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r6, #0x80
	orrs r1, r6
	str r1, [r0]
	ldr r0, [r4, #8]
	adds r1, r7, #0
	bl sub_803FF24
	ldr r0, [r4, #8]
	lsls r3, r6, #4
	ldrh r1, [r0, #0x2a]
	movs r2, #0xbe
	bics r1, r5
	orrs r1, r3
	strh r1, [r0, #0x2a]
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0803244C
	orrs r1, r6
	str r1, [r0]
_0803244C
	movs r1, #1
	ldr r0, [r4, #8]
	bl sub_80401E4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803245C DCDU 0x00312000
_08032460 DCDU 0xFFFC0000
_08032464 DCDU 0xFFE80000
_08032468 DCDU 0x00043330
_0803246C DCDU 0xFFFF0000
_08032470 DCDU 0xFC001FFF
_08032474 DCDU 0xFFFD0000
_08032478 DCDU 0xFFFA0000
_0803247C DCDU 0xFFFF8000
_08032480 DCDU 0x02BDC000
_08032484 DCDU gUnknown_03003EB8
_08032488 DCDU 0x000011EF
	END
