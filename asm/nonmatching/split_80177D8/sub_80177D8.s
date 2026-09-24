	thumb_func_start sub_80177D8
sub_80177D8
	ldrh r2, [r1, #4]
	lsls r2, r2, #2
	adds r0, r2, r0
	movs r2, #3
	lsls r2, r2, #9
	adds r0, r0, r2
	str r1, [r0, #0x1c]
	bx lr

