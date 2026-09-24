	non_word_aligned_thumb_func_start sub_800B772
sub_800B772
	push {r3, lr}
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_80120FA
	add sp, #4
	pop {r3}
	bx r3

