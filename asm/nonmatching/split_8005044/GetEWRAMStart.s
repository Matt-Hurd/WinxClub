	non_word_aligned_thumb_func_start GetEWRAMStart
	ldr r0, _08005258
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end GetEWRAMStart

