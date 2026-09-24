	non_word_aligned_thumb_func_start sub_8001432
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	ldr r6, [r4]
	subs r0, r5, r6
	bl sub_8040550
	ldrh r2, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0x40
	cmp r1, r2
	bne %13
	ldrh r0, [r0, #0x18]
	strh r0, [r4, #0xc]
	b %15
13
	ldrh r1, [r0, #0x16]
	cmp r1, #0
	beq %14
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	ldrh r2, [r0, #0x18]
	adds r1, r6, r1
	adds r1, #0x40
	strh r2, [r1, #0x18]
14
	ldrh r2, [r0, #0x18]
	cmp r2, #0
	beq %15
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	ldrh r0, [r0, #0x16]
	adds r1, r1, r2
	adds r1, #0x40
	strh r0, [r1, #0x16]
15
	ldrh r0, [r4, #0xe]
	subs r0, #1
	strh r0, [r4, #0xe]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8001432

