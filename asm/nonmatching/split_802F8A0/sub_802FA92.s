	non_word_aligned_thumb_func_start sub_802FA92
sub_802FA92
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x80
	ldr r5, [r6, #0xc]
	ldr r3, [r2]
	ldr r2, [r2, #4]
	ldm r1!, {r0, r1}
	sub sp, #4
	movs r7, #1
	lsls r7, r7, #0xe
	str r0, [r6, #0x30]
	str r1, [r6, #0x34]
	bics r5, r7
	str r5, [r6, #0xc]
	str r0, [r4, #0x58]
	str r1, [r4, #0x5c]
	str r2, [r6, #0x50]
	str r3, [r6, #0x4c]
	adds r1, r4, #0
	adds r5, r4, #0
	adds r5, #0xb0
	adds r1, #0xcc
	ldr r0, [r1]
	ldr r2, [r5]
	ldr r1, [r1, #4]
	subs r0, r0, r2
	ldr r2, [r5, #4]
	str r0, [r6, #0x44]
	subs r1, r1, r2
	str r1, [r6, #0x48]
	movs r1, #0
	movs r0, #0x7d
	strb r1, [r0, r4]
	adds r0, r4, #0
	adds r0, #0xc4
	bl sub_8018620
	adds r7, r4, #0
	adds r7, #0xc0
	ldr r0, [r7, #4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	add r2, pc, #0xEC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	add r2, pc, #0xD8
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r7, #8]
	ldr r0, _0802FBE4
	movs r1, #0
	str r0, [r7]
	str r1, [r6, #0x3c]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	blt %13
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #9]
	beq %17
	cmp r0, #1
	beq %18
	cmp r0, #2
	bne %13
	movs r0, #0xff
	adds r0, #0xd3
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0xa
	strb r0, [r5, #8]
13
	adds r1, r5, #0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xff
	beq %14
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xff
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %14
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
14
	ldr r0, _0802FBD4
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %15
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
15
	lsls r0, r1, #0x10
	movs r1, #0x57
	lsls r1, r1, #3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %16
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
16
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	movs r0, #0xff
	adds r0, #0xd5
	strh r0, [r4, #0x18]
	movs r1, #0
	strh r1, [r4, #0x1a]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r5, #8]
	b %13
18
	movs r0, #0xff
	adds r0, #0xd4
	strh r0, [r4, #0x18]
	movs r1, #0
	strh r1, [r4, #0x1a]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #5
	strb r0, [r5, #8]
	b %13
