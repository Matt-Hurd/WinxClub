	non_word_aligned_thumb_func_start sub_800FE3A
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #1
	lsls r1, r1, #0x18
	bl __16__rt_udiv
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800FDCE
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_800FE3A

