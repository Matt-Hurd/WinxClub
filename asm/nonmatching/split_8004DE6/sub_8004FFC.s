	thumb_func_start sub_8004FFC
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	bl sub_8004F42
	cmp r0, #0
	bne %22
21
	pop {r4}
	pop {r3}
	bx r3
22
	ldr r1, [r4, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	lsrs r0, r0, #3
	adds r0, r1, r0
	b %21
	thumb_func_end sub_8004FFC

