	non_word_aligned_thumb_func_start sub_8011E46
	ldr r0, _0801209C
	movs r1, #0xff
	ldrh r0, [r0]
	adds r1, #1
	ands r0, r1
	bx lr
	thumb_func_end sub_8011E46

