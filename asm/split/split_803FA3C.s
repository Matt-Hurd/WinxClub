    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000324
	IMPORT sub_80003F4
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA

	thumb_func_start sub_803FA3C
sub_803FA3C ;@ 0x0803FA3C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r5, r1, #0
	adds r7, r3, #0
	lsls r0, r0, #0x13
	sub sp, #4
	ldr r6, _0803FAB4 ;@ =gUnknown_03003EA0
	bpl _0803FA56
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800C1CA
_0803FA56
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x10]
	movs r0, #0
	cmp r7, #0
	beq _0803FA62
	adds r0, r5, #0
_0803FA62
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_80003F4
	adds r0, r4, #0
	bl sub_8000324
	ldr r1, [r5, #4]
	movs r0, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #9
	beq _0803FA7E
	movs r0, #0
_0803FA7E
	ldrh r1, [r4, #0x26]
	movs r2, #1
	lsls r2, r2, #0xd
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x12
	bics r1, r2
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803FAAC
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
_0803FAAC
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803FAB4 DCDU gUnknown_03003EA0
	END