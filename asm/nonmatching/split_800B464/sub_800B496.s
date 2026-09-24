	non_word_aligned_thumb_func_start sub_800B496
sub_800B496
	adds r2, r0, #0
	ldr r0, _0800B6CC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #8
	cmp r2, #0
	beq %4
	cmp r2, #1
	beq %5
	cmp r2, #2
	bne %6
	ldr r2, [r0]
	movs r3, #2
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #4]
	movs r1, #0x51
	lsls r1, r1, #5
	adds r0, r0, r1
	bx lr
4
	ldr r2, [r0]
	movs r3, #1
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #4]
	bx lr
5
	ldr r2, [r0]
	movs r3, #4
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #4]
	movs r1, #7
	lsls r1, r1, #8
	adds r0, r0, r1
	bx lr
6
	movs r0, #0
	bx lr

