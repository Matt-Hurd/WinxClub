    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT sub_8017884
	IMPORT sub_801D788
	IMPORT sub_801D9B0
	IMPORT sub_801DA46
	IMPORT sub_801DAA0
	IMPORT sub_801DAEC
	IMPORT sub_801DB90
	IMPORT sub_803B8CC
	IMPORT sub_803BE1C
	IMPORT sub_803C04C
	IMPORT sub_803F6B4
	IMPORT sub_8040594

	thumb_func_start sub_801DCFC
sub_801DCFC ;@ 0x0801DCFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	beq _0801DD3A
	bl sub_803BE1C
	adds r1, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	bl sub_803C04C
	ldr r0, [r5, #8]
	str r4, [sp]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r1, r0
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x7c]
	lsrs r1, r1, #0x10
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	ldr r0, _0801DFC8 ;@ =gUnknown_03003454
	movs r3, #1
	ldr r0, [r0]
	bl sub_8017884
_0801DD3A
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_801DD40
sub_801DD40 ;@ 0x0801DD40
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r2, [r0]
	subs r2, #0x1c
	cmp r2, #0x11
	bhs _0801DD58
	add r3, pc, #0x10 ;@ =_0801DD60
	adds r3, r3, r2
	ldrh r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
_0801DD58
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0801DD60
	DCB 0x33, 0x00
_0801DD62
	DCB 0x15, 0x00
_0801DD64
	DCB 0x14, 0x00
_0801DD66
	DCB 0xAE, 0x00
_0801DD68
	DCB 0xB2, 0x00
_0801DD6A
	DCB 0x14, 0x00
_0801DD6C
	DCB 0xC1, 0x00
_0801DD6E
	DCB 0xB9, 0x00
_0801DD70
	DCB 0x14, 0x00
_0801DD72
	DCB 0x14, 0x00
_0801DD74
	DCB 0x14, 0x00
_0801DD76
	DCB 0xE4, 0x00
_0801DD78
	DCB 0x14, 0x00
_0801DD7A
	DCB 0xE8, 0x00
_0801DD7C
	DCB 0xC8, 0x00
_0801DD7E
	DCB 0xEC, 0x00
_0801DD80
	DCB 0xF0, 0x00
loc_801dd82
	b _0801DD58
loc_801dd84
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	beq _0801DD58
	bl sub_803BE1C
	adds r1, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	bl sub_803C04C
	ldr r0, [r5, #8]
	str r4, [sp]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r1, r0
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x7c]
	lsrs r1, r1, #0x10
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	ldr r0, _0801DFC8 ;@ =gUnknown_03003454
	movs r3, #1
	ldr r0, [r0]
	bl sub_8017884
	b _0801DD58
loc_801ddc0
	ldrb r1, [r0, #5]
	movs r2, #0x9c
	lsls r1, r1, #0x10
	str r1, [r4, #0x78]
	movs r1, #0
	str r1, [r2, r4]
	ldrb r1, [r0, #4]
	cmp r1, #0xc
	bhs _0801DD58
	add r3, pc, #0x8 ;@ =_0801DDDC
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0801DDDC
	DCB 0x06
_0801DDDD
	DCB 0x06
_0801DDDE
	DCB 0x06
_0801DDDF
	DCB 0x06
_0801DDE0
	DCB 0x13
_0801DDE1
	DCB 0x1C
_0801DDE2
	DCB 0x28
_0801DDE3
	DCB 0x34
_0801DDE4
	DCB 0x40
_0801DDE5
	DCB 0x49
_0801DDE6
	DCB 0x55
_0801DDE7
	DCB 0x61
loc_801dde8
	ldrb r0, [r0, #4]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0xff
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de02
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #3
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de14
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #2
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de2c
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #3
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de44
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0
	adds r4, #0x90
	strb r0, [r4, #8]
_0801DE5A
	b _0801DD58
loc_801de5c
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #1
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de6e
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de86
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #1
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de9e
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #2
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801deb6
	adds r0, r4, #0
	bl sub_801DB90
	b _0801DD58
loc_801debe
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x4c]
	adds r2, r3, r2
	bl sub_803B8CC
	b _0801DD58
loc_801decc
	ldr r0, _0801DFCC ;@ =gUnknown_03003450
	movs r2, #0x27
	ldr r0, [r0]
	lsls r2, r2, #6
	ldr r1, [r4, #0x2c]
	adds r0, r0, r2
	str r1, [r0, #0xc]
	b _0801DD58
loc_801dedc
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl sub_803B8CC
	b _0801DD58
loc_801deea
	ldrh r1, [r0, #4]
	adds r4, #0x80
	ldr r2, [r4, #0x10]
	ldr r3, _0801DFD0 ;@ =0xE00FFFFF
	lsls r1, r1, #0x17
	lsrs r1, r1, #3
	ands r2, r3
	orrs r1, r2
	str r1, [r4, #0x10]
	ldrh r2, [r0, #6]
	asrs r3, r3, #9
	ands r1, r3
	lsls r2, r2, #0x17
	lsrs r2, r2, #0xc
	orrs r1, r2
	str r1, [r4, #0x10]
	ldrh r0, [r0, #8]
	lsls r0, r0, #7
	bl sub_8040594
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x15
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	lsrs r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #0x14]
	b _0801DD58
loc_801df22
	adds r0, r4, #0
	bl sub_801DAEC
	b _0801DD58
loc_801df2a
	adds r0, r4, #0
	bl sub_801DAA0
	b _0801DD58
loc_801df32
	adds r0, r4, #0
	bl sub_801DA46
	b _0801DD58
loc_801df3a
	adds r0, r4, #0
	ldr r1, [r4, #0x28]
	bl sub_801D9B0
	cmp r0, #0
	beq _0801DE5A
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_801D788
	b _0801DD58

	thumb_func_start sub_801DF50
sub_801DF50 ;@ 0x0801DF50
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	adds r5, r1, #0
	ldrb r0, [r0]
	subs r0, #0x1c
	cmp r0, #0x11
	bhs _0801DFC4
	add r3, pc, #0x4 ;@ =_0801DF68
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0801DF68
	DCB 0x0C
_0801DF69
	DCB 0x08
_0801DF6A
	DCB 0x2D
_0801DF6B
	DCB 0x12
_0801DF6C
	DCB 0x1C
_0801DF6D
	DCB 0x2D
_0801DF6E
	DCB 0x1C
_0801DF6F
	DCB 0x1C
_0801DF70
	DCB 0x2D
_0801DF71
	DCB 0x2D
_0801DF72
	DCB 0x2D
_0801DF73
	DCB 0x1E
_0801DF74
	DCB 0x2D
_0801DF75
	DCB 0x1C
_0801DF76
	DCB 0x1C
_0801DF77
	DCB 0x1C
_0801DF78
	DCB 0x1C, 0x00
loc_801df7a
	movs r0, #1
_0801DF7C
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_801df82
	ldr r1, [r4, #0x78]
	movs r0, #1
	cmp r1, #0
	beq _0801DF7C
	movs r0, #0
	b _0801DF7C
loc_801df8e
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801DB90
	ldr r1, [r4, #0x78]
	movs r0, #1
	cmp r1, #0
	beq _0801DF7C
	movs r0, #0
	b _0801DF7C
loc_801dfa2
	movs r0, #1
	b _0801DF7C
loc_801dfa6
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bne _0801DFB8
	movs r0, #1
	b _0801DF7C
_0801DFB8
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801DAEC
	movs r0, #0
	b _0801DF7C
_0801DFC4
	movs r0, #0
	b _0801DF7C
	ALIGN
_0801DFC8 DCDU gUnknown_03003454
_0801DFCC DCDU gUnknown_03003450
_0801DFD0 DCDU 0xE00FFFFF
	END