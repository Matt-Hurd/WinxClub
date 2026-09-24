	thumb_func_start sub_801F640
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq %1
	ldr r2, [r0]
	lsls r3, r2, #0x15
	lsrs r3, r3, #0x1f
	beq %1
	movs r3, #1
	lsls r3, r3, #0xb
	bics r2, r3
	lsls r1, r1, #0xb
	orrs r1, r2
	str r1, [r0]
1
	bx lr
	thumb_func_end sub_801F640

