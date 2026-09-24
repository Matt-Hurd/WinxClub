	thumb_func_start sub_800B0A0
sub_800B0A0
	lsls r3, r2, #0x10
	lsls r0, r2, #8
	lsls r2, r2, #0x18
	lsrs r3, r3, #0x1b
	lsls r3, r3, #5
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	orrs r0, r3
	lsls r2, r2, #0xa
	orrs r0, r2
	movs r2, #5
	lsls r2, r2, #0x18
	lsls r1, r1, #1
	adds r1, r1, r2
	strh r0, [r1]
	bx lr

