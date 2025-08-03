	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_800C482
	IMPORT sub_800C4F0
	IMPORT __da__FPv
	IMPORT sub_8041274

	thumb_func_start sub_8040104
sub_8040104
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x44]
	movs r7, #0
	adds r6, r2, #0
	adds r5, r1, #0
	cmp r0, #0
	bne _0804012E
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08040126
	adds r3, r7, #0
	movs r2, #0
	ldr r1, [r4, #0x48]
	bl sub_8041274
	b _0804012C
_08040126
	ldr r0, [r4, #0x48]
	bl __da__FPv
_0804012C
	str r7, [r4, #0x48]
_0804012E
	strh r5, [r4, #0x20]
	strh r6, [r4, #0x1e]
	strh r5, [r4, #0x2a]
	strh r6, [r4, #0x28]
	str r7, [r4, #0x24]
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_8040148
sub_8040148
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r1, r2, #0
	ldrh r2, [r4, #0x26]
	ldr r0, _080401BC
	movs r7, #3
	lsls r7, r7, #8
	movs r6, #0x10
	lsls r3, r2, #0x16
	cmp r5, #0
	ldr r0, [r0]
	bne _08040186
	lsrs r1, r3, #0x1e
	beq _08040180
	ldrh r1, [r4, #0x28]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1b
	bl sub_800C4F0
	ldrh r0, [r4, #0x26]
	movs r1, #0x80
	bics r0, r7
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	bics r0, r6
	orrs r0, r1
	str r0, [r4]
_08040180
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08040186
	lsrs r2, r3, #0x1e
	bne _080401A4
	bl sub_800C482
	ldrh r1, [r4, #0x28]
	movs r2, #0x1f
	lsls r2, r2, #9
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x12
	bics r1, r2
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
_080401A4
	ldrh r0, [r4, #0x26]
	lsls r1, r5, #0x1e
	lsrs r1, r1, #0x16
	bics r0, r7
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b _08040180
	ALIGN
_080401BC DCDU gUnknown_03003EA0
	END
