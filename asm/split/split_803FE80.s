	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000324
	IMPORT sub_80003F4
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA

	thumb_func_start sub_803FE80
sub_803FE80
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r7, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x13
	ldr r6, _0803FEF4
	bpl _0803FE98
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800C1CA
_0803FE98
	str r7, [r4, #0x10]
	movs r7, #1
	adds r0, r4, #0
	str r5, [r4, #0x18]
	bl sub_80003F4
	adds r0, r4, #0
	bl sub_8000324
	ldr r0, [r5, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0803FEB6
	movs r7, #0
_0803FEB6
	ldrh r0, [r4, #0x26]
	movs r1, #1
	lsls r1, r1, #0xd
	bics r0, r1
	lsls r1, r7, #0x1f
	lsrs r1, r1, #0x12
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803FEE4
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_0803FEE4
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803FEF4 DCDU gUnknown_03003EA0
	END