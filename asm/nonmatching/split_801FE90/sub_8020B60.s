	thumb_func_start sub_8020B60
	ldr r0, [r0, #0x2c]
	movs r1, #1
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	subs r0, r1, r0
	bx lr
	thumb_func_end sub_8020B60

