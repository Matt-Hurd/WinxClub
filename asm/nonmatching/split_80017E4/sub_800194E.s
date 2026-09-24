	non_word_aligned_thumb_func_start sub_800194E
sub_800194E
	movs r3, #0x67
	lsls r3, r3, #6
	push {r4, r5, r6}
	adds r4, r0, r3
	movs r3, #1
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x13
	bics r0, r3
	lsls r3, r1, #0x13
	orrs r0, r3
	str r0, [r4, #0x28]
	cmp r2, #0
	beq %22
	ldrh r2, [r4, #4]
	cmp r2, #0
	beq %22
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r0, [r4]
	lsls r2, r2, #5
	adds r0, r0, r2
	ldrh r2, [r4, #6]
	subs r2, #1
	blo %22
	lsls r5, r1, #0x11
	movs r6, #1
	lsls r6, r6, #0x11
20
	ldr r1, [r0]
	lsls r3, r1, #0x1e
	bpl %21
	bics r1, r6
	orrs r1, r5
	str r1, [r0]
21
	adds r0, #0x40
	ldrh r0, [r0, #0x14]
	ldr r1, [r4]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #5
	adds r0, r1, r0
	subs r2, #1
	bhs %20
22
	pop {r4, r5, r6}
	bx lr

