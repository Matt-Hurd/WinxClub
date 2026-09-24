	thumb_func_start sub_800510C
sub_800510C
	ldr r2, [r0]
	cmp r2, r1
	bhi %3
	ldr r0, [r0, #4]
	cmp r0, r1
	bls %3
	movs r0, #1
	bx lr
3
	movs r0, #0
	bx lr

