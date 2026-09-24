	thumb_func_start sub_80019FC
	push {r3, lr}
	ldr r3, _08001A5C
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, r1, r3
	bl sub_80154BA
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_80019FC

