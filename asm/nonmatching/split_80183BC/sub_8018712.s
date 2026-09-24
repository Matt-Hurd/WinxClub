	non_word_aligned_thumb_func_start sub_8018712
	push {r3, lr}
	ldr r1, [r0]
	adds r2, r1, #0
	muls r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	adds r3, r1, #0
	muls r1, r3
	adds r1, r2, r1
	adds r2, r0, #0
	muls r0, r2
	adds r0, r1, r0
	bl sub_8004C44
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_8018712

