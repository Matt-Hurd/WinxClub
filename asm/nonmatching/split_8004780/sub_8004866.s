	non_word_aligned_thumb_func_start sub_8004866
sub_8004866
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	beq %9
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq %9
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
9
	movs r3, #0
	str r3, [r4]
	lsls r1, r6, #1
	cmp r5, #0
	strh r3, [r4, #0x12]
	beq %10
	str r5, [r4]
	strb r3, [r4, #0x10]
	adds r0, r5, #0
	bl __16__rt_memclr_w
	b %11
10
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4]
	movs r0, #1
	strb r0, [r4, #0x10]
11
	strh r6, [r4, #0x12]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

