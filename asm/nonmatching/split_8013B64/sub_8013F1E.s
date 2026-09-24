	non_word_aligned_thumb_func_start sub_8013F1E
	strh r1, [r0, #0x22]
	ldrh r1, [r0, #0xe]
	movs r2, #8
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr
	thumb_func_end sub_8013F1E

