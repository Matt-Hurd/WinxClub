	non_word_aligned_thumb_func_start sub_80015E6
sub_80015E6
	movs r3, #0x33
	lsls r3, r3, #7
	adds r0, r0, r3
	adds r0, #0x34
	stm r0!, {r1, r2}
	bx lr

