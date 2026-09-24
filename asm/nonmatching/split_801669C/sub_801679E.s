	non_word_aligned_thumb_func_start sub_801679E
sub_801679E
	push {r3, lr}
	movs r0, #0x14
	bl SetNextGlobalFunction
	add sp, #4
	pop {r3}
	bx r3

