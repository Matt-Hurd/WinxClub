	non_word_aligned_thumb_func_start sub_8004836
sub_8004836
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	beq %7
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq %7
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
7
	movs r0, #0
	str r0, [r4]
	strh r0, [r4, #0x12]
	cmp r5, #0
	beq %8
	adds r0, r4, #0
	bl sub_803DA18
8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

