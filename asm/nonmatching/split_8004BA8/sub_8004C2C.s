	thumb_func_start sub_8004C2C
	cmp r1, #0
	beq %7
	cmp r1, #1
	bne %8
	lsls r0, r1, #0xd
	bx lr
7
	movs r0, #1
	lsls r0, r0, #9
	bx lr
8
	movs r0, #0
	bx lr
	ALIGN
	thumb_func_end sub_8004C2C

