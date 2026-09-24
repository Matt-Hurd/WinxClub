	thumb_func_start sub_8001A10
	movs r2, #0x67
	lsls r2, r2, #6
	adds r0, r0, r2
	movs r3, #1
	lsls r3, r3, #0x14
	ldr r2, [r0, #0x28]
	lsls r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_8001A10

