	non_word_aligned_thumb_func_start sub_8014B7E
sub_8014B7E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_803F55C
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8013E64
	pop {r3, r4, r5}
	pop {r3}
	bx r3

