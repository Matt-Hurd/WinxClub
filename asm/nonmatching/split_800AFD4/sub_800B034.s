	thumb_func_start sub_800B034
	movs r0, #1
	lsls r0, r0, #0xc
	lsls r2, r0, #0xe
	cmp r1, #0
	ldrh r1, [r2]
	beq %4
	orrs r0, r1
	strh r0, [r2]
	bx lr
4
	bics r1, r0
	strh r1, [r2]
	bx lr
	thumb_func_end sub_800B034

