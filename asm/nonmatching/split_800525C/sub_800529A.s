	non_word_aligned_thumb_func_start sub_800529A
sub_800529A
	push {r4, lr}
	adds r0, r1, #0
	adds r4, r3, #0
	beq %4
	adds r1, r0, #0
	adds r0, r4, #0
	bl __16__rt_memcpy
	adds r0, r4, #0
4
	pop {r4}
	pop {r3}
	bx r3
