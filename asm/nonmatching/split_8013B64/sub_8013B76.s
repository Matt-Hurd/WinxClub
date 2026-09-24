	non_word_aligned_thumb_func_start sub_8013B76
sub_8013B76
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x4c]
	movs r5, #0
	cmp r0, #0
	beq %1
	bl sub_803DA18
	str r5, [r4, #0x4c]
1
	movs r0, #0x2c
	strb r5, [r0, r4]
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x3a]
	movs r0, #1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

