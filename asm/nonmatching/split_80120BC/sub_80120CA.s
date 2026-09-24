	non_word_aligned_thumb_func_start sub_80120CA
	ldr r1, _08012328
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq %2
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	bx lr
2
	movs r0, #0
	bx lr
	thumb_func_end sub_80120CA

