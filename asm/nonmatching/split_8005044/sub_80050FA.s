	non_word_aligned_thumb_func_start sub_80050FA
	ldr r1, _08005258
	cmp r0, #0
	bne %2
	ldr r0, [r1, #4]
2
	str r0, [r1, #8]
	bx lr
	thumb_func_end sub_80050FA

