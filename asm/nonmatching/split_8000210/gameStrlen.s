	non_word_aligned_thumb_func_start gameStrlen
	ldrb r2, [r0]
	movs r1, #0
	cmp r2, #0
	beq %15
14
	adds r0, #1
	ldrb r2, [r0]
	adds r1, #1
	cmp r2, #0
	bne %14
15
	adds r0, r1, #0
	bx lr
	thumb_func_end gameStrlen

