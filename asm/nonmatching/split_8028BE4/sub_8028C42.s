	non_word_aligned_thumb_func_start sub_8028C42
sub_8028C42
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne %6
	adds r0, r4, #4
	bl sub_80122F0
	movs r0, #1
	strb r0, [r4]
6
	pop {r4}
	pop {r3}
	bx r3

