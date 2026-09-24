	non_word_aligned_thumb_func_start sub_801549A
sub_801549A
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r2, #0x3c
	ldm r2!, {r1, r2}
	stm r0!, {r1, r2}
	bx lr

