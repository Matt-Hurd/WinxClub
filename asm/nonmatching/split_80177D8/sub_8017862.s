	non_word_aligned_thumb_func_start sub_8017862
sub_8017862
	lsls r1, r1, #2
	adds r0, r1, r0
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	push {r4, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %9
8
	ldr r4, [r0, #0x14]
	bl sub_803FBBC
	adds r0, r4, #0
	bne %8
9
	pop {r4}
	pop {r3}
	bx r3

