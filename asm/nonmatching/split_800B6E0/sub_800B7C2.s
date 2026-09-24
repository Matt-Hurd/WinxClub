	non_word_aligned_thumb_func_start sub_800B7C2
sub_800B7C2
	ldr r2, [r0, #8]
	movs r3, #0x10
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1b
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #8]
	bx lr

