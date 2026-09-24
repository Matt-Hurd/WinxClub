	thumb_func_start sub_80019C4
sub_80019C4
	ldr r1, _08001A5C
	push {r3, lr}
	adds r0, r0, r1
	bl sub_80154CE
	add sp, #4
	pop {r3}
	bx r3

