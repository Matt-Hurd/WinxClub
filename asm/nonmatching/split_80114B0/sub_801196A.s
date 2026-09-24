	non_word_aligned_thumb_func_start sub_801196A
	ldr r1, _08011A14
	push {r3, lr}
	adds r1, #0x24
	strh r0, [r1, #0x1c]
	bl sub_80114FA
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_801196A

