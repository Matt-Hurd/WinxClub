	thumb_func_start sub_8016828
	push {r3, lr}
	ldr r0, [r1]
	ldr r2, _08016AB4
	movs r1, #0x11
	strb r1, [r2]
	ldrh r0, [r0, #4]
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, _08016AB8
	asrs r0, r0, #2
	strb r0, [r1]
	movs r0, #0xd
	bl SetNextGlobalFunction
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_8016828

