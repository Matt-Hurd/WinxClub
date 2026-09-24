	non_word_aligned_thumb_func_start sub_8016D0E
sub_8016D0E
	push {r3, lr}
	ldr r0, [r1]
	ldr r1, _08016D88
	ldrh r0, [r0, #4]
	strh r0, [r1]
	movs r0, #0x15
	bl SetNextGlobalFunction
	add sp, #4
	pop {r3}
	bx r3

