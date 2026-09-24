	arm_func_start sub_8004D98
sub_8004D98
	mov r1, #1
	mov r2, #0
17
	sub r0, r0, r1
	cmp r0, #0
	add r1, r1, #2
	add r2, r2, #1
	bgt %17
	sub r0, r2, #1
	bx lr
