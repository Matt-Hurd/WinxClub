    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT sub_80046F8
	IMPORT sub_800476C
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_80050FA
	IMPORT sub_800D912
	IMPORT sub_800EF2A
	IMPORT sub_80158E0
	IMPORT sub_8016108
	IMPORT sub_8017620
	IMPORT sub_80180BE
	IMPORT sub_801810E
	IMPORT sub_8018386
	IMPORT sub_8018390
	IMPORT sub_801B170
	IMPORT sub_801C7D2
	IMPORT sub_801CB4E
	IMPORT sub_801CC3C
	IMPORT sub_801CC72
	IMPORT sub_8023F88
	IMPORT sub_80241DA
	IMPORT sub_8028A7C
	IMPORT sub_8028BFC
	IMPORT sub_802B288
	IMPORT sub_802B382
	IMPORT sub_802B390
	IMPORT sub_802B3D6
	IMPORT sub_802BA20
	IMPORT sub_803D66C

	thumb_func_start sub_8028D60
sub_8028D60 ;@ 0x08028D60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #8
	add r6, sp, #8
	adds r0, r6, #0
	bl sub_802B288
	ldr r0, _08028F44 ;@ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0xc
	adds r0, r0, r1
	ldr r2, _08028F48 ;@ =gUnknown_03003478
	ldr r5, [r0, #0x1c]
	ldr r1, [r2]
	movs r0, #8
	orrs r0, r1
	str r0, [r2]
	mov r0, sp
	mov r4, sp
	bl sub_80046F8
	movs r1, #1
	adds r0, r4, #0
	bl sub_800476C
	ldr r7, _08028F4C ;@ =gUnknown_03003458
	movs r2, #0x3f
	ldr r0, [r7]
	ldrh r0, [r0, #0x1c]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_8004784
	ldr r0, [r7]
	adds r0, #0x10
	ldrb r1, [r0, #0xe]
	movs r0, #0x10
	subs r2, r0, r1
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	ldr r2, [r7]
	movs r1, #1
	lsls r1, r1, #0x1a
	ldrh r2, [r2, #0x1c]
	ldrh r0, [r1]
	lsls r2, r2, #8
	orrs r0, r2
	strh r0, [r1]
	bl sub_8018390
	cmp r0, #0x12
	bne _08028E76
_08028DD6
	ldr r0, _08028F44 ;@ =gUnknown_03003454
	movs r1, #0xff
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _08028F50 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	lsls r3, r0, #0x1c
	bmi _08028DEE
	ldrh r2, [r1, #6]
_08028DEE
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x1c
	adds r0, r5, #0
	bl sub_80158E0
	cmp r0, #0
	beq _08028E06
	adds r0, r5, #0
	bl sub_8016108
	b _08028E5C
_08028E06
	adds r0, r6, #0
	bl sub_802B382
	cmp r0, #0
	beq _08028E18
	adds r0, r6, #0
	bl sub_802BA20
	b _08028E5C
_08028E18
	movs r1, #5
	ldr r0, [r7]
	lsls r1, r1, #8
	adds r1, r0, r1
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	bne _08028E34
	lsls r2, r4, #0x1c
	bpl _08028E34
	adds r0, r6, #0
	bl sub_802B3D6
	b _08028E5C
_08028E34
	cmp r1, #0
	bne _08028E44
	lsls r1, r4, #0x1d
	bpl _08028E44
	movs r0, #4
	bl sub_8018386
	b _08028E5C
_08028E44
	adds r4, r7, #0
	bl sub_801C7D2
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	adds r0, #0x80
	ldr r0, [r0, #0x1c]
	cmp r0, #0x10
	bne _08028E5C
	movs r0, #0x16
	bl sub_8018386
_08028E5C
	ldr r0, [r7]
	bl sub_801CB4E
	ldr r0, _08028F54 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_80241DA
	bl sub_800EF2A
	bl sub_8018390
	cmp r0, #0x12
	beq _08028DD6
_08028E76
	ldr r2, _08028F48 ;@ =gUnknown_03003478
	movs r1, #0
	ldr r1, [r2]
	movs r0, #8
	bics r1, r0
	ldr r4, _08028F58 ;@ =gUnknown_0300345C
	str r1, [r2]
	ldr r0, [r4]
	bl sub_8028BFC
	ldr r5, _08028F54 ;@ =gUnknown_030034F8
	ldr r0, [r5]
	cmp r0, #0
	beq _08028E98
	movs r1, #1
	bl sub_8023F88
_08028E98
	movs r0, #0
	str r0, [r5]
	bl sub_800EF2A
	ldr r2, [r7]
	movs r1, #1
	lsls r1, r1, #0x1a
	ldrh r2, [r2, #0x1c]
	ldrh r0, [r1]
	lsls r2, r2, #8
	bics r0, r2
	strh r0, [r1]
	bl sub_8018390
	cmp r0, #4
	beq _08028EE6
	bl sub_8018390
	cmp r0, #0x15
	beq _08028EE6
	bl sub_8018390
	cmp r0, #0xd
	beq _08028EE6
	bl sub_8018390
	cmp r0, #0x14
	beq _08028EE6
	bl sub_801810E
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
	ldr r0, [r7]
	bl sub_801B170
	b _08028F18
_08028EE6
	bl sub_8018390
	cmp r0, #0x15
	bne _08028EFE
	bl sub_801810E
	movs r2, #0xff
	movs r1, #2
	ldr r0, [r4]
	bl sub_8028A7C
	b _08028F0C
_08028EFE
	bl sub_80180BE
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
_08028F0C
	ldr r0, [r7]
	bl sub_801CC3C
	ldr r0, [r7]
	bl sub_801CC72
_08028F18
	ldr r0, _08028F5C ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	ldr r0, _08028F60 ;@ =gUnknown_03003450
	movs r1, #1
	ldr r0, [r0]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	movs r1, #0
	adds r0, r6, #0
	bl sub_802B390
	add sp, #0x1fc
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08028F44 DCDU gUnknown_03003454
_08028F48 DCDU gUnknown_03003478
_08028F4C DCDU gUnknown_03003458
_08028F50 DCDU gUnknown_03003444
_08028F54 DCDU gUnknown_030034F8
_08028F58 DCDU gUnknown_0300345C
_08028F5C DCDU gUnknown_03003468
_08028F60 DCDU gUnknown_03003450
	END