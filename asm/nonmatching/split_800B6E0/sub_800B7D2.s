	non_word_aligned_thumb_func_start sub_800B7D2
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr
	ALIGN
	thumb_func_end sub_800B7D2

