	thumb_func_start sub_800476C
sub_800476C
	ldrh r2, [r0]
	movs r3, #0xc0
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	strh r1, [r0]
	bx lr
