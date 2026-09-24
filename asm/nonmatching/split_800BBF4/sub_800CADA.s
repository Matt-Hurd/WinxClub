	non_word_aligned_thumb_func_start sub_800CADA
sub_800CADA
	ldr r0, [r0, #0x78]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

