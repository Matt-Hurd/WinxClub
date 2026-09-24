	thumb_func_start sub_80158E0
sub_80158E0
	adds r1, r0, #0
	adds r1, #0xf0
	ldrb r1, [r1, #8]
	movs r0, #1
	cmp r1, #0
	bne %1
	movs r0, #0
1
	bx lr

