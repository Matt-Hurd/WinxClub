	non_word_aligned_thumb_func_start sub_8021ADE
sub_8021ADE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl m20__7DefaultFv
	ldr r0, _08021E74
	ldr r0, [r0]
	bl sub_800116A
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #1
	str r0, [r1, #0x24]
	ldr r2, [r0]
	movs r3, #2
	orrs r2, r3
	lsls r3, r3, #7
	bics r2, r3
	str r2, [r0]
	ldr r0, [r1, #0x24]
	movs r1, #0x20
	bl sub_80401C0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	beq %5
	cmp r0, #0xed
	bne %7
5
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #0x26]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x1e
	beq %6
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
6
	ldr r0, [r4, #0x2c]
	ldrb r2, [r0, #5]
	ldr r0, [r4, #0x30]
	ldrb r3, [r0, #5]
	subs r2, #1
	adds r1, r2, #0
	cmp r2, r3
	beq %7
	bl sub_80401C0
7
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	beq %8
	cmp r0, #0x10
	beq %8
	adds r0, r4, #0
	bl sub_8020AB6
8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

