	thumb_func_start GetNextGlobalFunction
	ldr r0, _080183B8
	subs r0, #4
	ldrb r0, [r0]
	bx lr
	thumb_func_end GetNextGlobalFunction

