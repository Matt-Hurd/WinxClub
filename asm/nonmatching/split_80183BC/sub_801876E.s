	non_word_aligned_thumb_func_start sub_801876E
	push {lr}
	ldr r2, [r0]
	ldr r3, [r1]
	sub sp, #0xc
	subs r2, r2, r3
	str r2, [sp]
	ldr r2, [r0, #4]
	ldr r3, [r1, #4]
	subs r2, r2, r3
	str r2, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #8]
	subs r0, r0, r1
	ldr r1, [sp]
	str r0, [sp, #8]
	adds r0, r1, #0
	muls r1, r0
	adds r0, r2, #0
	muls r0, r2
	adds r0, r1, r0
	bl sub_8004C44
	add sp, #0xc
	pop {r3}
	bx r3
	thumb_func_end sub_801876E

