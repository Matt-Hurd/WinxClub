	non_word_aligned_thumb_func_start sub_80260AE
sub_80260AE
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne %4
	movs r0, #0x13
	str r0, [r4, #0x1c]
4
	pop {r4}
	pop {r3}
	bx r3

