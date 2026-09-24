	thumb_func_start sub_8013E64
sub_8013E64
	movs r2, #0x2d
	strb r1, [r2, r0]
	ldrh r1, [r0, #0xe]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

