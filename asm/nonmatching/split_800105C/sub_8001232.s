	non_word_aligned_thumb_func_start sub_8001232
sub_8001232
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
	ldrh r2, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x40
	cmp r1, r2
	bne %8
	ldrh r0, [r0, #0x14]
	strh r0, [r4, #4]
	b %10
8
	ldrh r1, [r0, #0x12]
	cmp r1, #0
	beq %9
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	ldrh r2, [r0, #0x14]
	adds r1, r6, r1
	adds r1, #0x40
	strh r2, [r1, #0x14]
9
	ldrh r2, [r0, #0x14]
	cmp r2, #0
	beq %10
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	ldrh r0, [r0, #0x12]
	adds r1, r1, r2
	adds r1, #0x40
	strh r0, [r1, #0x12]
10
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

