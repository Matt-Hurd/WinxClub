	non_word_aligned_thumb_func_start sub_801404E
	push {r4, lr}
	ldr r3, [r0]
	ldr r4, [r3, #0x10]
	adds r3, r4, r3
	bl __call_via_r3
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_801404E

