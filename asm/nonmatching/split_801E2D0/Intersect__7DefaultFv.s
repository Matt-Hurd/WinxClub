	non_word_aligned_thumb_func_start Intersect__7DefaultFv
Intersect__7DefaultFv
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #1
	str r1, [r0, #0x7c]
	movs r1, #0
	str r1, [r0, #0x34]
	movs r0, #0
	bx lr

