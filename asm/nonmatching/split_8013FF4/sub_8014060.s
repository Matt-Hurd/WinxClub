	thumb_func_start sub_8014060
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldrh r1, [r0, #0xe]
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr
	thumb_func_end sub_8014060

