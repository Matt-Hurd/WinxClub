	thumb_func_start sub_8018688
sub_8018688
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r1, r0, #0
	muls r1, r0
	ldr r0, [r4, #4]
	adds r2, r0, #0
	muls r0, r2
	adds r1, r1, r0
	ldr r0, [r4, #8]
	adds r2, r0, #0
	muls r2, r0
	adds r0, r1, r2
	bl sub_8004C44
	adds r5, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl Div
	str r0, [sp]
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl Div
	adds r7, r0, #0
	ldr r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl Div
	ldr r1, [sp]
	str r0, [r6, #8]
	stm r6!, {r1, r7}
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

