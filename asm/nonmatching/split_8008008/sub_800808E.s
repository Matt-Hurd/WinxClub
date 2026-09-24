	non_word_aligned_thumb_func_start sub_800808E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r1, #0xc]
	adds r5, r1, #0
	cmp r0, #1
	beq %6
	cmp r0, #2
	bne %9
	ldr r0, [r5, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	b %9
6
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bls %8
7
	ldr r0, [r4, #0x10]
	lsls r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	blo %7
8
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
9
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r5]
	bl __call_via_r2
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x10]
	ands r0, r1
	adds r2, r0, #0
	str r2, [r4, #0x14]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x14]
	ldr r3, [r4, #0xc]
	str r0, [r4, #0xc]
	subs r3, r0, r3
	adds r2, r2, r3
	ands r2, r1
	str r2, [r4, #0x14]
	ldrb r0, [r5, #0xc]
	strh r0, [r4, #4]
	pop {r3, r4, r5}
	pop {r3}
	movs r0, #0
	bx r3
	thumb_func_end sub_800808E

