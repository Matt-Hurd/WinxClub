	thumb_func_start SetGlobalFunction
	ldr r2, _080183B8
	lsls r1, r1, #2
	str r0, [r2, r1]
	movs r0, #1
	bx lr
	thumb_func_end SetGlobalFunction

