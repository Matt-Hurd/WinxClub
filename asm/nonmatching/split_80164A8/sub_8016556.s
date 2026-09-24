	non_word_aligned_thumb_func_start sub_8016556
sub_8016556
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #8
	bl sub_803DA80
	cmp r0, #0
	beq %8
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	subs r0, #8
8
	ldrh r1, [r5, #4]
	strh r1, [r0]
	str r6, [r0, #4]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq %9
	str r0, [r1, #4]
	str r0, [r4, #0x10]
	b %10
9
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
10
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

