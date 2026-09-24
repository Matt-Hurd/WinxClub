	non_word_aligned_thumb_func_start sub_802F926
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %4
	movs r1, #1
	bl sub_80401E4
4
	ldr r0, _0802FBD4
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %5
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
5
	lsls r0, r1, #0x10
	movs r1, #0x57
	lsls r1, r1, #3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %6
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
6
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %7
	bl sub_8000914
7
	ldr r0, [r4, #0x2c]
	movs r5, #1
	ldrb r1, [r0, #5]
	cmp r1, #0x60
	beq %8
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	lsls r3, r5, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0x60
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %8
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
8
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %9
	ldr r1, _0802FBD8
	ldr r1, [r1]
	adds r1, #0x90
	ldrb r1, [r1]
	cmp r1, #6
	beq %9
	movs r1, #1
	bl sub_80401E4
9
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #3
	str r1, [r4, #0x58]
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x5c]
	ldr r1, [r0, #0x14]
	movs r2, #1
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r0, #0x14]
	movs r0, #0xa2
	strh r5, [r0, r4]
	adds r1, r4, #0
	adds r1, #0x58
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_802F926

