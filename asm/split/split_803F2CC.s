	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_80003F4
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA

	thumb_func_start sub_803F2CC
sub_803F2CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x28
	ldrh r2, [r0]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	movs r5, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _0803F37A
	ldr r1, [r4, #0x3c]
	lsls r6, r5, #2
	cmp r1, #0
	ldr r2, _0803F388
	blt _0803F314
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x14
	cmp r1, r3
	bge _0803F314
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt _0803F314
	movs r3, #5
	ldr r1, [r4, #0x38]
	lsls r3, r3, #0x15
	cmp r1, r3
	blt _0803F32A
_0803F314
	lsls r0, r0, #0x16
	bmi _0803F37A
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	orrs r0, r5
	str r0, [r4]
	b _0803F37A
_0803F32A
	lsls r0, r0, #0x16
	bpl _0803F344
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r6
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_0803F344
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_0803F37A
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0803F388 DCDU gUnknown_03003EA0
	END
