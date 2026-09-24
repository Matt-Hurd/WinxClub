	thumb_func_start sub_80046B8
	ldrh r1, [r1]
	sub sp, #4
	add r3, sp, #0
	strh r1, [r3]
	ldrh r3, [r3]
	strh r3, [r0, #8]
	ldrh r3, [r2]
	strh r3, [r0, #0xa]
	ldrh r3, [r2, #2]
	movs r2, #4
	strh r3, [r0, #0xc]
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	add sp, #4
	bx lr
	thumb_func_end sub_80046B8

