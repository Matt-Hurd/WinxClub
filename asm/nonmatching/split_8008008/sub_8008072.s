	non_word_aligned_thumb_func_start sub_8008072
sub_8008072
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

