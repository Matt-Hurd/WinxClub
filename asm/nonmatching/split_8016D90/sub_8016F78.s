	thumb_func_start sub_8016F78
sub_8016F78
	ldr r0, _08017118
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	ldr r4, [r1]
	ldr r5, [r0, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %27
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #2
	bl sub_80405B4
	str r1, [r4, #4]
27
	ldr r0, [r4, #4]
	adds r0, r5, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

