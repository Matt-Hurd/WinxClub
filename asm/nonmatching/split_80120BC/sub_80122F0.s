	thumb_func_start sub_80122F0
sub_80122F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq %22
	ldr r1, [r0, #4]
	movs r2, #2
	orrs r1, r2
	str r1, [r0, #4]
	str r1, [r4]
22
	pop {r4}
	pop {r3}
	bx r3

