	non_word_aligned_thumb_func_start sub_80048BE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	beq %13
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq %13
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
13
	movs r0, #0
	str r6, [r4]
	strb r0, [r4, #0x10]
	adds r0, r6, r5
	subs r0, #0x20
	strh r5, [r4, #0x12]
	ldrh r0, [r0, #0x1e]
	strh r0, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_80048BE

