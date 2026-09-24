	non_word_aligned_thumb_func_start sub_800527E
sub_800527E
	push {r3, lr}
	ldr r2, _080052B4
	ldr r3, _080052B8
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq %3
	bl sub_803DA18
3
	add sp, #4
	pop {r3}
	bx r3

