	thumb_func_start sub_80048B0
	adds r1, r0, #0
	ldrh r1, [r1, #8]
	movs r0, #1
	cmp r1, #0
	bne %12
	movs r0, #0
12
	bx lr
	thumb_func_end sub_80048B0

