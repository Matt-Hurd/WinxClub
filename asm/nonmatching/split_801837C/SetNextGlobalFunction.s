	non_word_aligned_thumb_func_start SetNextGlobalFunction
	ldr r1, _080183B8
	subs r1, #4
	strb r0, [r1]
	movs r0, #1
	bx lr
	thumb_func_end SetNextGlobalFunction

