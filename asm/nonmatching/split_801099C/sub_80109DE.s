	non_word_aligned_thumb_func_start sub_80109DE
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x5c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r0, r1, r0
	subs r0, #1
	bx lr
	thumb_func_end sub_80109DE

