	thumb_func_start sub_801DB80
	ldr r1, _0801DCE8
	movs r2, #0x27
	ldr r1, [r1]
	lsls r2, r2, #6
	ldr r0, [r0, #0x2c]
	adds r1, r1, r2
	str r0, [r1, #0xc]
	bx lr
	thumb_func_end sub_801DB80

