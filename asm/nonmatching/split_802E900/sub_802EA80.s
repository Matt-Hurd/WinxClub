	thumb_func_start sub_802EA80
	push {r4}
	ldr r1, [r1]
	adds r0, #0xa0
	ldrh r2, [r1, #6]
	strh r2, [r0, #8]
	ldrh r3, [r1, #8]
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	strh r3, [r0, #2]
	ldrh r3, [r1, #0xa]
	strh r3, [r0, #4]
	movs r3, #1
	lsls r3, r4
	cmp r2, #0
	beq %9
	lsrs r2, r2, #5
	ldr r4, _0802EC34
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	ands r2, r3
	bne %9
	ldrh r1, [r1, #4]
	strh r1, [r0, #6]
8
	pop {r4}
	bx lr
9
	movs r1, #0
	strh r1, [r0, #6]
	b %8
	thumb_func_end sub_802EA80

