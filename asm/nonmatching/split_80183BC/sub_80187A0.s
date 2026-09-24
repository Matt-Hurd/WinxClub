	thumb_func_start sub_80187A0
sub_80187A0
	push {r3, lr}
	ldr r2, [r0]
	ldr r3, [r1]
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	adds r2, r3, r2
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r2, r1
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0
	adds r0, r2, r1
	bl sub_8004C44
	add sp, #4
	pop {r3}
	bx r3

