	thumb_func_start sub_803357C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xa8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq %20
	ldr r1, [r0]
	adds r5, r0, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	movs r0, #1
	ldr r1, [r5, #0x34]
	lsls r0, r0, #0x13
	bics r1, r0
	str r1, [r5, #0x34]
	ldr r0, [r5, #0x40]
	lsrs r1, r0, #1
	ldr r0, _08033648
	lsls r1, r1, #1
	ands r1, r0
	str r1, [r5, #0x40]
20
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x6c]
	ldr r2, [r0, #0x70]
	str r1, [r0, #0x74]
	movs r1, #3
	lsls r1, r1, #0x10
	str r2, [r0, #0x78]
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x17
	str r1, [r4, #0x78]
	movs r1, #0
	adds r5, r4, #0
	adds r5, #0xc0
	str r1, [r0, #0x1c]
	ldr r0, [r5, #0x3c]
	movs r1, #8
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0xf4
	str r0, [r5, #0x3c]
	adds r0, r4, #0
	bl sub_8033512
	ldr r0, [r4, #0x7c]
	movs r1, #0x98
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	strb r0, [r1, r4]
	ldr r0, [r5, #0x3c]
	movs r1, #0x16
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _08033644
	muls r1, r0
	ldrh r0, [r3, r1]
	strh r0, [r4, #0xe]
	adds r2, r0, #1
	strh r2, [r4, #0xa]
	adds r0, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, r1, r3
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_803357C
