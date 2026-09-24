	non_word_aligned_thumb_func_start sub_803A476
sub_803A476
	movs r1, #0
19
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	beq %20
	movs r0, #1
	bx lr
20
	adds r1, #1
	cmp r1, #5
	blo %19
	movs r0, #0
	bx lr
