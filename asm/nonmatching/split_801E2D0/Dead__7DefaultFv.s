	non_word_aligned_thumb_func_start Dead__7DefaultFv
Dead__7DefaultFv
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	str r2, [r0, #0x58]
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	str r1, [r0, #0x5c]
	bx lr

