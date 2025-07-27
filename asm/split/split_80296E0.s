    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0300327E
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_8017884
	IMPORT sub_80179BE
	IMPORT sub_80187A0
	IMPORT sub_801E124
	IMPORT sub_801EBCA
	IMPORT sub_801F65C
	IMPORT sub_8023FE4
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802936C
	IMPORT sub_802BA4C
	IMPORT sub_802BFBC
	IMPORT sub_802C884
	IMPORT sub_802D2E8
	IMPORT sub_802DFF4
	IMPORT sub_8031D00
	IMPORT sub_803772C
	IMPORT sub_803AB80
	IMPORT sub_803AE68
	IMPORT __call_via_r1
	IMPORT __call_via_r6
	IMPORT __call_via_r7
	IMPORT rand
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803EF1C
	IMPORT sub_803F72C
	IMPORT sub_803FC14
	IMPORT sub_803FF24


	thumb_func_start sub_80296E0
sub_80296E0 ;@ 0x080296E0
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne _0802972A
	adds r1, #1
	cmp r1, #5
	bne _080296F8
	movs r1, #0
_080296F8
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne _0802972A
	adds r1, #1
	cmp r1, #5
	bne _0802970A
	movs r1, #0
_0802970A
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne _0802972A
	adds r1, #1
	cmp r1, #5
	bne _0802971C
	movs r1, #0
_0802971C
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne _0802972A
	movs r0, #1
	bx lr
_0802972A
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_802972E
sub_802972E ;@ 0x0802972E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	sub sp, #0x1c
	lsls r0, r0, #0xe
	bmi _08029822
	adds r0, r4, #0
	bl sub_801EBCA
	movs r6, #0
	ldr r1, [r5, #0x1c]
	mvns r6, r6
	movs r7, #0
	cmp r1, #0xe
	ldr r0, _08029B28 ;@ =gUnknown_03003EA0
	bne _08029824
	ldr r7, [r4, #0x2c]
	ldr r0, [r0]
	ldr r1, [r7, #0x44]
	cmp r1, #0
	beq _08029768
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r6, r0, #3
_08029768
	ldr r0, [r4, #0x7c]
	lsls r1, r6, #0x10
	lsls r2, r0, #4
	lsrs r2, r2, #0x1c
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2, #0x18]
	lsrs r1, r1, #0x10
	cmp r1, r2
	beq _080297C4
	ldr r1, _08029B2C ;@ =gUnknown_03003454
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r1, r0, r1
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #0x18]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080297C4
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_080297C4
	ldr r6, [r4, #0x2c]
	ldrh r0, [r6, #0x28]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsrs r1, r1, #0x1c
	cmp r1, #2
	bne _080297E0
	ldr r2, [r5]
	lsls r2, r2, #0x1d
	bpl _080297E0
	movs r2, #1
	b _080297E2
_080297E0
	movs r2, #0
_080297E2
	cmp r0, r2
	beq _080298C6
	cmp r1, #2
	bne _080297F4
	ldr r0, [r5]
	lsls r0, r0, #0x1d
	bpl _080297F4
	movs r1, #1
	b _080297F6
_080297F4
	movs r1, #0
_080297F6
	ldrh r2, [r6, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	bl sub_80003F4
	ldr r0, [r6]
	movs r7, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _080298AC
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	blt _0802983A
	movs r2, #0xf
	lsls r2, r2, #0x14
	ldr r1, [r6, #0x34]
	b _08029826
_08029822
	b _080298F0
_08029824
	b _080298F8
_08029826
	cmp r1, r2
	bge _0802983A
	ldr r1, [r6, #0x40]
	cmp r1, #0
	blt _0802983A
	movs r2, #5
	ldr r1, [r6, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt _08029856
_0802983A
	lsls r0, r0, #0x16
	bmi _080298AC
	ldr r0, _08029B28 ;@ =gUnknown_03003EA0
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r6]
	b _080298AC
_08029856
	lsls r0, r0, #0x16
	bpl _08029876
	ldr r0, _08029B28 ;@ =gUnknown_03003EA0
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6]
_08029876
	ldr r0, [r6, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r6, #0x28]
	ldr r0, [r6, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r6, #0x26]
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
_080298AC
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080298C6
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_080298C6
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _080298F0
	ldr r1, _08029B2C ;@ =gUnknown_03003454
	movs r2, #2
	ldr r0, [r1]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #0xb
	lsls r0, r0, #7
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	bics r0, r2
	strh r0, [r1, #0x18]
	movs r0, #4
	str r0, [r5, #0x1c]
_080298F0
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080298F8
	cmp r1, #0x10
	bne _080299E2
	ldr r6, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _08029B30 ;@ =0x00000F42
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _080298F0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r5, #0x10]
	lsls r0, r0, #3
	lsrs r1, r0, #0x17
	beq _08029948
	ldr r6, _08029B34 ;@ =gUnknown_0300345C
	lsls r0, r0, #1
	lsrs r0, r0, #0x18
	ldr r1, [r6]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	beq _08029948
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_08029948
	ldr r1, _08029B38 ;@ =0xE00FFFFF
	ldr r0, [r5, #0x10]
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	beq _080298F0
	ldr r0, _08029B2C ;@ =gUnknown_03003454
	movs r6, #4
	ldr r2, [r0]
	add r0, pc, #0x1DC ;@ =_08029B3C
	str r0, [sp, #8]
	str r2, [sp, #4]
	b _08029970
_08029966
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x40
	bhs _0802997C
_08029970
	ldr r2, [sp, #4]
	lsls r0, r6, #2
	adds r0, r0, r2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _08029966
_0802997C
	ldr r0, _08029B58 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xfd
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #5
	bl sub_803DA9C
	ldr r2, [sp, #4]
	lsls r1, r6, #2
	adds r1, r1, r2
	adds r7, r1, #0
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	ldr r2, [sp, #4]
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r2, #0xff
	movs r1, #0xfd
	lsls r1, r1, #5
	adds r2, #0x99
	strh r1, [r2, r0]
	movs r1, #0xff
	adds r1, #0x19
	movs r3, #0
	strh r3, [r1, r0]
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r0, r1
	strh r3, [r1, #0x18]
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r3, [r0, #0x18]
	movs r2, #9
	lsls r2, r2, #7
	ldr r0, [sp, #8]
	adds r1, r7, r2
	str r0, [r1, #0x18]
	movs r0, #0x61
	ldr r2, [sp, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	b _080299E4
_080299E2
	b _08029A08
_080299E4
	ldrb r1, [r0, #8]
	movs r3, #1
	adds r1, #1
	strb r1, [r0, #8]
	str r4, [sp]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r0, _08029B2C ;@ =gUnknown_03003454
	adds r2, r6, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r1, _08029B5C ;@ =0xFFFF000F
	ldr r0, [r5, #0x2c]
	ands r0, r1
	str r0, [r5, #0x2c]
	b _080298F0
_08029A08
	cmp r1, #9
	beq _08029A10
_08029A0C
	bl sub_802AC4E
_08029A10
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x1f
	bpl _08029A0C
	ldr r1, [r4, #0x2c]
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x44]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x48]
	subs r0, r1, r0
	asrs r1, r0, #2
	ldr r0, [r5, #0x2c]
	lsls r2, r0, #0x1d
	lsrs r2, r2, #0x1a
	adds r2, r2, r4
	adds r2, #0x80
	ldr r2, [r2, #0x3c]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1b
	cmp r1, r2
	blo _08029A0C
	lsls r1, r0, #0xf
	bpl _08029A0C
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq _08029A6C
_08029A68
	bl _0802A990
_08029A6C
	lsls r1, r0, #5
	lsrs r1, r1, #0x17
	subs r1, #0x27
	cmp r1, #0x17
	bhs _08029A80
	add r3, pc, #0xC ;@ =_08029A84
	adds r3, r3, r1
	ldrh r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_08029A80
	b _08029A68
	ALIGN
_08029A84
	DCB 0x18, 0x00
_08029A86
	DCB 0x7D, 0x00
_08029A88
	DCB 0xC0, 0x00
_08029A8A
	DCB 0xC0, 0x00
_08029A8C
	DCB 0x87, 0x07
_08029A8E
	DCB 0x87, 0x07
_08029A90
	DCB 0x87, 0x07
_08029A92
	DCB 0x46, 0x01
_08029A94
	DCB 0x87, 0x07
_08029A96
	DCB 0x87, 0x07
_08029A98
	DCB 0x87, 0x07
_08029A9A
	DCB 0xB5, 0x03
_08029A9C
	DCB 0x87, 0x07
_08029A9E
	DCB 0x03, 0x01
_08029AA0
	DCB 0x89, 0x01
_08029AA2
	DCB 0xE3, 0x02
_08029AA4
	DCB 0x87, 0x07
_08029AA6
	DCB 0x87, 0x07
_08029AA8
	DCB 0x87, 0x07
_08029AAA
	DCB 0xF8, 0x03
_08029AAC
	DCB 0x88, 0x04
_08029AAE
	DCB 0x13, 0x05
_08029AB0
	DCB 0x6F, 0x06
loc_8029ab2
	ldr r0, _08029B60 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029AD4
	adds r0, r7, #0
	bl sub_8031D00
_08029AD4
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029B64 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]

	thumb_func_start sub_8029B18
sub_8029B18 ;@ 0x08029B18
	ldr r1, [r4, #0x7c]
	movs r0, #7
	lsls r0, r0, #0x1c
	adds r2, r1, #0
	bics r1, r0
	adds r2, r2, r3
	b _08029B68
	ALIGN
_08029B28 DCDU gUnknown_03003EA0
_08029B2C DCDU gUnknown_03003454
_08029B30 DCDU 0x00000F42
_08029B34 DCDU gUnknown_0300345C
_08029B38 DCDU 0xE00FFFFF
_08029B3C DCDU 0x6D656E45
_08029B40 DCDU 0x65442079
_08029B44 DCDU 0x20687461
_08029B48 DCDU 0x69726353
_08029B4C DCDU 0x47207470
_08029B50 DCDU 0x70756F72
_08029B54 DCDU 0x00000000
_08029B58 DCDU gUnknown_03003468
_08029B5C DCDU 0xFFFF000F
_08029B60 DCDU gUnknown_0300346C
_08029B64 DCDU gUnknown_03003458
_08029B68
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029A80
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029A68
loc_8029b7c
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029B9E
	adds r0, r7, #0
	bl sub_802D2E8
_08029B9E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029C86
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029C86
loc_8029c02
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029C24
	adds r0, r7, #0
	bl sub_802C884
_08029C24
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029C86
	bics r1, r0
	str r1, [r4, #0x7c]
_08029C86
	b _08029D92
loc_8029c88
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029CAA
	adds r0, r7, #0
	bl sub_8031D00
_08029CAA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029D92
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029D92
loc_8029d0e
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029D30
	adds r0, r7, #0
	bl sub_803772C
_08029D30
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029D92
	bics r1, r0
	str r1, [r4, #0x7c]
_08029D92
	b _08029EFC
loc_8029d94
	lsls r0, r0, #0x1d
	bne _08029E1E
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029DBA
	adds r0, r7, #0
	bl sub_8031D00
_08029DBA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029EFC
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029EFC
_08029E1E
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _08029EFC
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029E4A
	adds r0, r6, #0
	bl sub_8031D00
_08029E4A
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x18]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _08029EB2
	bics r0, r2
	str r0, [r4, #0x7c]
_08029EB2
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029ED4
	adds r0, r6, #0
	bl sub_8031D00
_08029ED4
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r3, #1
	b _08029EFE
_08029EFC
	b _0802A0DA
_08029EFE
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _08029F38
	bics r0, r2
	str r0, [r4, #0x7c]
_08029F38
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029F64
	adds r0, r6, #0
	bl sub_8031D00
	b _08029F64
	ALIGN
_08029F5C DCDU gUnknown_0300346C
_08029F60 DCDU gUnknown_03003458
_08029F64
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _08029FC4
	bics r0, r2
	str r0, [r4, #0x7c]
_08029FC4
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029FE6
	adds r0, r6, #0
	bl sub_8031D00
_08029FE6
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A0DA
	bics r0, r2
	str r0, [r4, #0x7c]
	b _0802A0DA
loc_802a048
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A0DC
	cmp r0, #1
	beq _0802A136
	cmp r0, #2
	bne _0802A0DA
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A078
	adds r0, r7, #0
	bl sub_802C884
_0802A078
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A0DA
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A0DA
	b _0802A1EA
_0802A0DC
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A0FE
	adds r0, r7, #0
	bl sub_8031D00
_0802A0FE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	b _0802A138
_0802A136
	b _0802A166
_0802A138
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A1EA
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A1EA
_0802A166
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A188
	adds r0, r7, #0
	bl sub_802C884
_0802A188
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A1EA
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A1EA
	b _0802A300
loc_802a1ec
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A20E
	adds r0, r7, #0
	bl sub_802D2E8
_0802A20E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A300
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A300
loc_802a272
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A302
	cmp r0, #1
	bne _0802A300
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A29E
	adds r0, r7, #0
	bl sub_802DFF4
_0802A29E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A300
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A300
	b _0802A420
_0802A302
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A324
	adds r0, r7, #0
	bl sub_802BFBC
_0802A324
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	bics r1, r0
	b _0802A378
	ALIGN
_0802A370 DCDU gUnknown_03003458
_0802A374 DCDU gUnknown_0300346C
_0802A378
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r2, r2, r3
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A420
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A420
loc_802a392
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A422
	cmp r0, #1
	bne _0802A420
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A3BE
	adds r0, r7, #0
	bl sub_803AE68
_0802A3BE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A420
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A420
	b _0802A536
_0802A422
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A444
	adds r0, r7, #0
	bl sub_802C884
_0802A444
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #5
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A536
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A536
loc_802a4a8
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A538
	cmp r0, #1
	bne _0802A536
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A4D4
	adds r0, r7, #0
	bl sub_802C884
_0802A4D4
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #6
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A536
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A536
	b _0802A626
_0802A538
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _0802A626
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A564
	adds r0, r6, #0
	bl sub_802BA4C
_0802A564
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x14]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A5CC
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A5CC
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A5EE
	adds r0, r6, #0
	bl sub_802BA4C
_0802A5EE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	b _0802A628
_0802A626
	b _0802A838
_0802A628
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A652
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A652
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A674
	adds r0, r6, #0
	bl sub_802BA4C
_0802A674
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A6D4
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A6D4
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A6F6
	adds r0, r6, #0
	bl sub_802BA4C
_0802A6F6
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A838
	bics r0, r2
	str r0, [r4, #0x7c]
	b _0802A838
	ALIGN
_0802A758 DCDU gUnknown_0300346C
_0802A75C DCDU gUnknown_03003458
loc_802a760
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A83A
	cmp r0, #1
	beq _0802A83C
	cmp r0, #2
	bne _0802A838
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _0802A838
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A79A
	adds r0, r6, #0
	bl sub_803AB80
_0802A79A
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0xc]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A802
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A802
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A824
	adds r0, r6, #0
	bl sub_803AB80
_0802A824
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	b _0802A83E
_0802A838
	b _0802A990
_0802A83A
	b _0802A99E
_0802A83C
	b _0802AA24
_0802A83E
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A88C
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A88C
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A8AE
	adds r0, r6, #0
	bl sub_803AB80
_0802A8AE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A90E
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A90E
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A930
	adds r0, r6, #0
	bl sub_803AB80
_0802A930
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A990
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A990
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
_0802A99A
	bl _080298F0
_0802A99E
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A9C0
	adds r0, r7, #0
	bl sub_802C884
_0802A9C0
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #7
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A990
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A990
_0802AA24
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _0802A990
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802AA50
	adds r0, r6, #0
	bl sub_802BA4C
_0802AA50
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x10]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802AAB8
	bics r0, r2
	str r0, [r4, #0x7c]
_0802AAB8
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802AADA
	adds r0, r6, #0
	bl sub_802BA4C
_0802AADA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802AB3A
	bics r0, r2
	str r0, [r4, #0x7c]
_0802AB3A
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	b _0802AB60
	ALIGN
_0802AB58 DCDU gUnknown_0300346C
_0802AB5C DCDU gUnknown_03003458
_0802AB60
	beq _0802AB68
	adds r0, r6, #0
	bl sub_802BA4C
_0802AB68
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AF70 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802ABC8
	bics r0, r2
	str r0, [r4, #0x7c]
_0802ABC8
	ldr r0, _0802AF74 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802ABEA
	adds r0, r6, #0
	bl sub_802BA4C
_0802ABEA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AF70 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	beq _0802AC48
	b _0802A990
_0802AC48
	bics r0, r2
	str r0, [r4, #0x7c]
	b _0802A990

	non_word_aligned_thumb_func_start sub_802AC4E
sub_802AC4E ;@ 0x0802AC4E
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	bne _0802AC56
_0802AC54
	b _0802A99A
_0802AC56
	ldr r1, _0802AF78 ;@ =gUnknown_03003478
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne _0802AC54
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x11
	bpl _0802AC54
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x60]
	adds r1, r2, r1
	bl __call_via_r1
	b _0802A99A

	thumb_func_start sub_802AC74
sub_802AC74 ;@ 0x0802AC74
	push {r4, r5, r6, r7}
	ldr r2, [r1]
	ldr r3, [r0, #0x58]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	ldr r3, [r0, #0x5c]
	NEGS r4, r2
	subs r3, r1, r3
	cmp r2, #0
	blt _0802AC8A
	adds r4, r2, #0
_0802AC8A
	NEGS r5, r3
	cmp r3, #0
	blt _0802AC92
	adds r5, r3, #0
_0802AC92
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r7, [r0, #0x7c]
	mvns r1, r1
	movs r6, #1
	lsls r6, r6, #0x19
	ands r1, r7
	cmp r4, r5
	ble _0802ACB4
	cmp r2, #0
	ble _0802ACAE
	str r1, [r0, #0x7c]
_0802ACAA
	pop {r4, r5, r6, r7}
	bx lr
_0802ACAE
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACB4
	cmp r5, r4
	ble _0802ACD0
	cmp r3, #0
	ble _0802ACC6
	movs r2, #1
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACC6
	movs r2, #3
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACD0
	cmp r2, #0
	ble _0802ACD8
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACD8
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _0802ACAA

	non_word_aligned_thumb_func_start sub_802ACDE
sub_802ACDE ;@ 0x0802ACDE
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #0x7c]
	movs r7, #0
	movs r6, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq _0802AD50
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	cmp r0, #4
	bne _0802AD50
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x16
	lsrs r2, r0, #0x1e
	beq _0802AD30
	adds r0, r4, #0
	ldr r1, _0802AF70 ;@ =gUnknown_03003458
	adds r0, #0x58
	cmp r2, #1
	ldr r1, [r1]
	beq _0802ADD8
	cmp r2, #2
	bne _0802AD50
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x3c
	bhs _0802ADF4
	movs r6, #1
	b _0802AEBC
_0802AD30
	bl rand
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble _0802AD58
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r5, #0x34]
_0802AD50
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802AD58
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	ble _0802AD64
	movs r0, #0
	b _0802AD6A
_0802AD64
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0802AD6A
	ldr r1, [r5, #0x34]
	lsls r2, r1, #0x12
	lsrs r2, r2, #0x1c
	adds r0, r2, r0
	bpl _0802AD78
	adds r0, #0xc
	b _0802AD7E
_0802AD78
	cmp r0, #0xc
	blt _0802AD7E
	subs r0, #0xc
_0802AD7E
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r3
	orrs r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	beq _0802AD50
	lsrs r2, r1, #0x18
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C ;@ =gUnknown_0300327E
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne _0802ADA8
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802ADA8
	ldr r0, _0802AF84 ;@ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_0802ADD6
	b _0802AD50
_0802ADD8
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x32
	bls _0802ADF6
	movs r0, #1
	str r0, [sp, #8]
	b _0802AE26
_0802ADF4
	b _0802AEA8
_0802ADF6
	bl rand
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble _0802AE0C
	movs r7, #1
	b _0802AE26
_0802AE0C
	cmp r0, #0x75
	ble _0802AE22
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	subs r1, #0xff
	subs r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x34]
	b _0802AE26
_0802AE22
	movs r0, #1
	str r0, [sp, #8]
_0802AE26
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0802AEBC
	ldr r0, _0802AF70 ;@ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq _0802ADD6
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C ;@ =gUnknown_0300327E
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne _0802AE78
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802AE78
	ldr r0, _0802AF84 ;@ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_0802AEA6
	b _0802AD50
_0802AEA8
	bl rand
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble _0802AEBE
	movs r7, #1
_0802AEBC
	b _0802AED0
_0802AEBE
	cmp r0, #0x75
	ble _0802AECE
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	str r0, [r5, #0x34]
	b _0802AED0
_0802AECE
	movs r6, #1
_0802AED0
	cmp r6, #0
	beq _0802AF88
	ldr r1, _0802AF70 ;@ =gUnknown_03003458
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #4
	lsrs r0, r0, #0x1c
	adds r0, #2
	bpl _0802AEFA
	adds r0, #4
	b _0802AF00
_0802AEFA
	cmp r0, #4
	blt _0802AF00
	subs r0, #4
_0802AF00
	movs r2, #0xf
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	str r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq _0802AEA6
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C ;@ =gUnknown_0300327E
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne _0802AF40
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802AF40
	ldr r0, _0802AF84 ;@ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_0802AF6E
	b _0802AD50
	ALIGN
_0802AF70 DCDU gUnknown_03003458
_0802AF74 DCDU gUnknown_0300346C
_0802AF78 DCDU gUnknown_03003478
_0802AF7C DCDU gUnknown_0300327E
_0802AF80 DCDU gUnknown_03003454
_0802AF84 DCDU gUnknown_03003E88
_0802AF88
	cmp r7, #0
	beq _0802AEA6
	ldr r1, _0802B268 ;@ =gUnknown_03003458
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r1, r0, #0x18
	beq _0802AF6E
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne _0802AFB8
	ldr r0, _0802B26C ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802AFB8
	ldr r0, _0802B270 ;@ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x21
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	movs r1, #1
	strb r1, [r0, #4]
	movs r1, #0
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802B26C ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b _0802AD50

	non_word_aligned_thumb_func_start sub_802AFEA
sub_802AFEA ;@ 0x0802AFEA
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r0, #0x58]
	ldr r1, [r5, #0x24]
	ldr r2, [r4, #0x5c]
	sub sp, #0xc
	subs r1, r2, r1
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0802B016
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
_0802B016
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0xe
	bpl _0802B036
	ldr r0, [r4, #0x7c]
	movs r2, #0xf
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r2, r2, #0xa
	ldr r1, [r5, #0x34]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r2
	orrs r0, r1
	str r0, [r5, #0x34]
_0802B036
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B03E
sub_802B03E ;@ 0x0802B03E
	adds r0, #0x80
	ldr r1, [r0, #0x2c]
	movs r2, #8
	orrs r1, r2
	str r1, [r0, #0x2c]
	bx lr

	non_word_aligned_thumb_func_start sub_802B04A
sub_802B04A ;@ 0x0802B04A
	adds r0, #0x80
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_802B054
sub_802B054 ;@ 0x0802B054
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_801E124
	ldr r1, _0802B274 ;@ =gUnknown_03003478
	movs r0, #0x10
	ldr r1, [r1]
	ands r1, r0
	beq _0802B070
	ldr r0, _0802B278 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8023FE4
_0802B070
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x24]
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r2, r1
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	beq _0802B098
	cmp r0, #0x10
	beq _0802B098
	adds r0, r4, #0
	bl sub_802936C
_0802B098
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start nullsub_52
nullsub_52 ;@ 0x0802B0A0
	bx lr

	non_word_aligned_thumb_func_start sub_802B0A2
sub_802B0A2 ;@ 0x0802B0A2
	ldr r0, _0802B27C ;@ =gUnknown_03003E98
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _0802B0B4
	movs r0, #0
_0802B0B4
	ldr r1, _0802B280 ;@ =gUnknown_0300345C
	adds r0, #0x42
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B0CA
sub_802B0CA ;@ 0x0802B0CA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801F65C
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _0802B284 ;@ =0x8007FFFF
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x1c]
	cmp r1, #9
	bne _0802B10A
	ldr r1, [r0, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x1f
	bmi _0802B10A
	ldr r1, _0802B268 ;@ =gUnknown_03003458
	movs r2, #0x29
	ldr r1, [r1]
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrb r2, [r1, #2]
	adds r2, #0xff
	strb r2, [r1, #2]
_0802B10A
	movs r1, #0xf
	str r1, [r0, #0x1c]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_802B114
sub_802B114 ;@ 0x0802B114
	push {r4, r5, r6, lr}
	ldr r6, _0802B268 ;@ =gUnknown_03003458
	adds r4, r0, #0
	ldr r0, [r6]
	sub sp, #8
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x18
	cmp r2, r0
	bhi _0802B150
	lsls r0, r1, #9
	bpl _0802B1C4
_0802B150
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r1, [r0, #0x38]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _0802B198
	movs r2, #7
	ldr r1, [r5, #0x14]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r5, #0x14]
	ldr r1, [r0, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #8
	str r1, [r4, #0x78]
	ldr r1, [r4, #0x70]
	asrs r2, r1, #1
	str r1, [r4, #0x74]
	adds r1, r1, r2
	str r1, [r4, #0x70]
_0802B198
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r6]
	movs r1, #0x29
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	adds r4, #0x90
	adds r1, #1
	strb r1, [r0, #2]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
_0802B1C4
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_802B1CC
sub_802B1CC ;@ 0x0802B1CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802B268 ;@ =gUnknown_03003458
	sub sp, #0xc
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x1c]
	cmp r1, #9
	beq _0802B25E
	ldr r1, [r4, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	bne _0802B25E
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs _0802B25E
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r5, #0x2c]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r2, r0, #1
	strh r2, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #1
	lsls r0, r0, #0x10
	orrs r0, r1
	str r0, [r5, #0x2c]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r1, #1
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #0x14]
_0802B25E
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0802B268 DCDU gUnknown_03003458
_0802B26C DCDU gUnknown_03003454
_0802B270 DCDU gUnknown_03003E88
_0802B274 DCDU gUnknown_03003478
_0802B278 DCDU gUnknown_030034F8
_0802B27C DCDU gUnknown_03003E98
_0802B280 DCDU gUnknown_0300345C
_0802B284 DCDU 0x8007FFFF
	END