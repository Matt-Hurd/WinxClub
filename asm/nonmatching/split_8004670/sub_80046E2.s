	non_word_aligned_thumb_func_start sub_80046E2
	adds r1, #0xa
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	bx lr
	thumb_func_end sub_80046E2

