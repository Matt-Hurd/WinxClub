	thumb_func_start sub_802DD08
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	movs r6, #1
	lsls r6, r6, #0x1d
	ldr r5, [r4, #4]
	lsrs r7, r6, #4
	cmp r5, #0
	beq %65
	ldr r0, _0802DDD8
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	lsrs r3, r6, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x2c]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #4]
	bics r2, r3
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	lsls r2, r2, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1f
	lsrs r2, r2, #1
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	bics r2, r7
	lsls r1, r1, #0x1f
	lsrs r1, r1, #6
	orrs r1, r2
	orrs r1, r6
	str r1, [r4, #0x2c]
	ldrb r0, [r0, #5]
	cmp r0, #0x42
	bhi %65
	lsls r0, r3, #2
	orrs r0, r1
	str r0, [r4, #0x2c]
65
	ldr r5, [r4, #0x44]
	cmp r5, #0
	beq %66
	ldr r0, _0802DDD8
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	movs r3, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x30]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x30]
	ldr r0, [r4, #0x44]
	lsls r3, r3, #0x1c
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	bics r1, r7
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #0x30]
66
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_802DD08
