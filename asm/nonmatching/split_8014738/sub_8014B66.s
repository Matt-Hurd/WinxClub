	non_word_aligned_thumb_func_start sub_8014B66
	push {r3, lr}
	str r1, [r0, #0x40]
	ldr r1, [r0]
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	movs r1, #0x2e
	ldrb r1, [r1, r0]
	bl __call_via_r2
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_8014B66

