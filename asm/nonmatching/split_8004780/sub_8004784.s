	thumb_func_start sub_8004784
	ldrh r3, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	lsrs r3, r3, #6
	lsls r3, r3, #6
	orrs r1, r3
	movs r3, #0x3f
	lsls r3, r3, #8
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x12
	bics r1, r3
	orrs r1, r2
	strh r1, [r0]
	bx lr
	thumb_func_end sub_8004784

