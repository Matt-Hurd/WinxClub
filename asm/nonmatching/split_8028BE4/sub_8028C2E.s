	non_word_aligned_thumb_func_start sub_8028C2E
sub_8028C2E
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #4
	bl sub_801220C
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r3}
	bx r3

