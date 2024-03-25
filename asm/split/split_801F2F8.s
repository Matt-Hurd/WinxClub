    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_08050FD4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_800116A
	IMPORT sub_8018620
	IMPORT sub_803B8CA
	IMPORT sub_803B92C
	IMPORT sub_803B940
	IMPORT sub_803F170
	IMPORT sub_803F2CC
	IMPORT sub_803FAB8
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	thumb_func_start sub_801F2F8
sub_801F2F8 ;@ 0x0801F2F8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0801F620 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x18]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	movs r2, #2
	ldr r1, [r0]
	lsls r7, r2, #7
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x14]
	lsls r6, r7, #6
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0801F354
	movs r1, #0xbf
	ldr r0, [r4, #0x2c]
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b _0801F36E
_0801F354
	cmp r0, #2
	ldr r0, [r4, #0x2c]
	bne _0801F368
	movs r1, #0x7f
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b _0801F36E
_0801F368
	movs r1, #0x82
	bl sub_80401C0
_0801F36E
	adds r1, r4, #0
	adds r1, #0x58
	adds r6, r1, #0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x2c]
	bl sub_80401E4
	ldrh r0, [r4, #4]
	cmp r0, #8
	beq _0801F392
	cmp r0, #4
	beq _0801F392
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0801F392
	ldr r0, _0801F620 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _0801F624 ;@ =gPlayerEntity
	str r0, [r4, #0x30]
	ldr r1, [r1]
	adds r1, #0x90
	ldrb r1, [r1]
	cmp r1, #6
	bne _0801F3B2
	movs r2, #0xf
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	str r1, [r5, #0xc]
_0801F3B2
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0xd
	lsrs r2, r1, #0x1c
	beq _0801F3CC
	lsrs r1, r1, #0x1c
	ldr r2, _0801F628 ;@ =gUnknown_08050FD4
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r1, #0x20
	ldrh r1, [r1, #0x1e]
	bl sub_800065C
	b _0801F3D2
_0801F3CC
	ldr r1, _0801F62C ;@ =0x000011EF
	bl sub_800065C
_0801F3D2
	ldr r0, [r4, #0x30]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x13
	bpl _0801F3F8
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_803F170
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
_0801F3F8
	movs r1, #0xbe
	ldr r0, [r4, #0x30]
	bl sub_80401C0
	adds r1, r6, #0
	ldr r0, [r4, #0x30]
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	beq _0801F432
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_80401E4
_0801F432
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x38]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl sub_803B8CA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801F450
sub_801F450 ;@ 0x0801F450
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r4, r0, #0
	adds r1, #0x58
	adds r5, r2, #0
	ldr r2, [r4, #0x58]
	ldm r1!, {r0, r1}
	subs r0, r2, r0
	ldr r2, [r4, #0x5c]
	sub sp, #0xc
	subs r1, r2, r1
	str r1, [sp, #8]
	cmp r0, #0
	str r0, [sp, #4]
	bne _0801F47E
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0801F47E
	movs r0, #1
	lsls r0, r0, #0xf
	str r0, [sp, #4]
	str r0, [sp, #8]
	b _0801F484
_0801F47E
	add r0, sp, #4
	bl sub_8018620
_0801F484
	ldr r1, [r6, #0x70]
	add r7, pc, #0x1A8 ;@ =_0801F630
	cmp r1, #0
	ble _0801F4BC
	adds r0, r5, #0
	bl sub_803B92C
	ldm r7!, {r2, r3}
	subs r7, #8
	bl sub_803B940
	adds r5, r0, #0
	ldr r1, [sp, #4]
	bl sub_803B92C
	ldm r7!, {r2, r3}
	subs r7, #8
	bl sub_803B940
	adds r6, r0, #0
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl sub_803B92C
	ldm r7!, {r2, r3}
	bl sub_803B940
	b _0801F4DC
_0801F4BC
	adds r0, r5, #0
	ldr r1, [sp, #4]
	bl sub_803B92C
	ldm r7!, {r2, r3}
	subs r7, #8
	bl sub_803B940
	adds r6, r0, #0
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl sub_803B92C
	ldm r7!, {r2, r3}
	bl sub_803B940
_0801F4DC
	ldr r2, [r4, #0x68]
	adds r2, r2, r6
	str r2, [r4, #0x68]
	ldr r2, [r4, #0x6c]
	adds r0, r2, r0
	str r0, [r4, #0x6c]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801F4F0
sub_801F4F0 ;@ 0x0801F4F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldr r1, [r0]
	ldr r2, [r4, #0x60]
	adds r5, r4, #0
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r0, #4]
	ldr r2, [r4, #0x64]
	adds r5, #0x80
	adds r1, r1, r2
	str r1, [r0, #4]
	movs r1, #1
	ldr r3, [r5, #0x14]
	lsls r1, r1, #0x11
	bics r3, r1
	str r3, [r5, #0x14]
	ldrh r0, [r4, #0x26]
	movs r2, #0xf
	lsls r2, r2, #0x18
	cmp r0, #0
	beq _0801F53A
	ldr r6, [r4, #0x5c]
	asrs r6, r6, #0x10
	cmp r6, r0
	bge _0801F53A
	lsls r0, r0, #0x10
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x7c]
	lsls r6, r1, #7
	bics r0, r2
	adds r0, r0, r6
	str r0, [r4, #0x7c]
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r5, #0x14]
_0801F53A
	ldrh r0, [r4, #0x22]
	cmp r0, #0
	beq _0801F55E
	ldr r3, [r4, #0x5c]
	asrs r3, r3, #0x10
	cmp r3, r0
	ble _0801F55E
	lsls r0, r0, #0x10
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r3, r3, #0x18
	bics r0, r2
	adds r0, r0, r3
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x14]
	orrs r0, r1
	str r0, [r5, #0x14]
_0801F55E
	ldrh r0, [r4, #0x24]
	cmp r0, #0
	beq _0801F57C
	ldr r3, [r4, #0x58]
	asrs r3, r3, #0x10
	cmp r3, r0
	bge _0801F57C
	lsls r0, r0, #0x10
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x7c]
	bics r0, r2
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x14]
	orrs r0, r1
	str r0, [r5, #0x14]
_0801F57C
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	beq _0801F5A0
	ldr r3, [r4, #0x58]
	asrs r3, r3, #0x10
	cmp r3, r0
	ble _0801F5A0
	lsls r0, r0, #0x10
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x7c]
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r0, r0, r2
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x14]
	orrs r0, r1
	str r0, [r5, #0x14]
_0801F5A0
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r5, #0xc]
	lsls r1, r0, #1
	lsrs r1, r1, #0x14
	beq _0801F5E6
	ldr r2, _0801F638 ;@ =0x8007FFFF
	adds r1, r0, #0
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x13
	subs r0, r0, r2
	ldr r2, _0801F63C ;@ =0x7FF80000
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	ldr r0, [r5, #0x10]
	bne _0801F5EC
	lsrs r0, r0, #5
	lsls r0, r0, #5
	adds r0, #5
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0801F5E6
	movs r1, #1
	bl sub_80401E4
_0801F5E6
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0801F5EC
	lsrs r1, r0, #5
	adds r0, #0x1f
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #0x10]
	lsls r1, r0, #0x1b
	bne _0801F5E6
	lsrs r0, r0, #5
	lsls r0, r0, #5
	adds r0, #5
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0801F616
	movs r1, #1
	bl sub_80401E4
	b _0801F5E6
_0801F616
	movs r1, #0
	bl sub_80401E4
	b _0801F5E6
	ALIGN
_0801F620 DCDU gUnknown_03003EB8
_0801F624 DCDU gPlayerEntity
_0801F628 DCDU gUnknown_08050FD4
_0801F62C DCDU 0x000011EF
_0801F630 DCDU 0x00010000
_0801F634 DCDU 0x00000000
_0801F638 DCDU 0x8007FFFF
_0801F63C DCDU 0x7FF80000
	END