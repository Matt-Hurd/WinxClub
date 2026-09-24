	non_word_aligned_thumb_func_start sub_80154AA
sub_80154AA
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r2, #0x44
	ldm r2!, {r1, r2}
	stm r0!, {r1, r2}
	bx lr

