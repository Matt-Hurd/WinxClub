	thumb_func_start sub_8002004
sub_8002004
	movs r1, #0x13
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	adds r0, #0x38
	bx lr

