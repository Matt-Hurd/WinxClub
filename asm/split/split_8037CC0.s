    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_802E47A
	IMPORT sub_802E5D2
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401E4
	IMPORT sub_8040594

	thumb_func_start sub_8037CC0
sub_8037CC0 ;@ 0x08037CC0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037CDE
	ldr r0, _08037E3C ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08037CDE
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8037CE4
sub_8037CE4 ;@ 0x08037CE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _08037D38
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	movs r6, #0x5a
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
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
_08037D38
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _08037E22
	ldr r0, _08037E3C ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r7, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _08037E40 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	lsls r1, r7, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _08037E44 ;@ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	lsls r1, r1, #3
	lsrs r3, r1, #0x1f
	movs r1, #0xff
	adds r1, #1
	cmp r3, #0
	ldr r3, [r0]
	beq _08037D9E
	orrs r2, r3
	bics r2, r1
	str r2, [r0]
	b _08037DA4
_08037D9E
	bics r3, r2
	bics r3, r1
	str r3, [r0]
_08037DA4
	adds r1, r4, #0
	adds r1, #0x1c
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08037DD6
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08037DD6
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #0x3c]
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
	ldr r0, [r4, #0x30]
	lsls r0, r0, #7
	bpl _08037E1A
	ldr r0, [r4, #0x3c]
	bl sub_8000914
_08037E1A
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _08037E22
	b _08037E24
_08037E22
	b _08037E2C
_08037E24
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_08037E2C
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8037E34
sub_8037E34 ;@ 0x08037E34
	adds r0, #0x40
	ldrb r0, [r0]
	bx lr
	ALIGN
_08037E3C DCDU gUnknown_03003EB8
_08037E40 DCDU gUnknown_03003EA0
_08037E44 DCDU 0x0010BE20
	END