	thumb_func_start sub_80016D8
	push {r4}
	ldr r3, [r1]
	ldrh r2, [r0, #0xe]
	lsrs r4, r3, #0x10
	lsls r4, r4, #0x10
	subs r2, r3, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r4
	movs r3, #0x67
	lsls r3, r3, #6
	str r2, [r1]
	adds r0, r0, r3
	ldr r3, [r0, #0x18]
	ldr r4, [r0, #0x1c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xf
	strh r3, [r4, r2]
	ldr r2, [r1]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [r0, #0x18]
	ldr r0, [r1]
	ldr r2, _080017E0
	orrs r0, r2
	str r0, [r1]
	pop {r4}
	bx lr
	thumb_func_end sub_80016D8

