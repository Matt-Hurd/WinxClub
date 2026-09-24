	non_word_aligned_thumb_func_start sub_8004B7E
	ldr r2, [r0, #0x14]
	movs r3, #4
	bics r2, r3
	lsls r1, r1, #2
	orrs r1, r2
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_8004B7E

