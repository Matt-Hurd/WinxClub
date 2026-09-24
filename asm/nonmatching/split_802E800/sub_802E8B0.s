	thumb_func_start sub_802E8B0
	push {r4, r5, r6, lr}
	ldr r5, [r0, #4]
	adds r4, r0, #0
	ldr r0, [r5]
	movs r6, #0
	lsls r0, r0, #0x1c
	bpl %4
	ldr r0, _0802E8FC
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
4
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r6
	str r1, [r0]
	ldr r0, [r4, #0x34]
	lsls r1, r2, #0x12
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	lsls r1, r2, #7
	adds r0, r0, r1
	str r0, [r4, #0x34]
	str r6, [r4, #0xc]
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_802E8B0

