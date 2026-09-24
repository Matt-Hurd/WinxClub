	thumb_func_start sub_80019B4
sub_80019B4
	ldr r1, _08001A58
	push {r3, lr}
	adds r0, r0, r1
	bl sub_800F1DA
	add sp, #4
	pop {r3}
	bx r3

