	non_word_aligned_thumb_func_start sub_80046EE
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_80046EE

