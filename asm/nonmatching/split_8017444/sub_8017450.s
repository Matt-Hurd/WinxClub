	thumb_func_start sub_8017450
sub_8017450
	ldr r1, _08017468
	push {r3, lr}
	str r1, [r0]
	adds r1, r0, #0
	ldr r0, _08017470
	ldr r0, [r0]
	bl sub_80177E8
	add sp, #4
	pop {r3}
	bx r3
