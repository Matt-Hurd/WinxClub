	thumb_func_start sub_800CD04
sub_800CD04
	push {r4}
	lsls r4, r2, #1
	adds r0, r4, r0
	movs r4, #0x1d
	lsls r4, r4, #5
	ldr r3, _0800CD90
	adds r0, r0, r4
	strh r3, [r0]
	movs r3, #0x1f
	lsls r3, r3, #8
	ldr r0, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	bics r0, r3
	orrs r0, r2
	str r0, [r1]
	pop {r4}
	bx lr

