	thumb_func_start sub_8014B58
	adds r1, r0, #0
	ldr r1, [r1, #0x54]
	movs r0, #1
	cmp r1, #0
	bne %42
	movs r0, #0
42
	bx lr
	thumb_func_end sub_8014B58

