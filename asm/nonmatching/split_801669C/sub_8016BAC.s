	thumb_func_start sub_8016BAC
	push {r4, lr}
	ldr r0, [r1]
	ldr r2, _08016D64
	ldrh r1, [r0, #4]
	ldr r3, [r2]
	movs r2, #0x90
	strb r1, [r2, r3]
	ldrh r2, [r0, #6]
	ldr r4, _08016D78
	adds r1, r4, #0
	cmp r2, r4
	beq %26
	lsls r1, r2, #0x10
26
	adds r3, #0x80
	str r1, [r3, #0x14]
	ldrh r0, [r0, #8]
	cmp r0, r4
	beq %27
	lsls r4, r0, #0x10
27
	movs r0, #0xf
	str r4, [r3, #0x18]
	bl SetNextGlobalFunction
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_8016BAC

