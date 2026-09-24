	non_word_aligned_thumb_func_start sub_800B08E
	push {r3, lr}
	bl VBlankIntrWait
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_800B08E

