	thumb_func_start sub_8005164
sub_8005164
	ldr r1, [r0, #4]
	ldr r2, [r0]
	ldr r0, [r0, #0xc]
	subs r1, r1, r2
	subs r0, r1, r0
	bx lr

