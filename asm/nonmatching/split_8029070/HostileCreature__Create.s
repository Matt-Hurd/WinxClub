	thumb_func_start HostileCreature__Create
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xe0
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _08029354
	movs r2, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	str r2, [r0, #0x20]
	adds r1, r4, #0
	adds r1, #0xa0
	str r2, [r0, #0x24]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r1, [r0, #0x2c]
	movs r3, #8
	lsrs r1, r1, #3
	lsls r1, r1, #3
	bics r1, r3
	ldr r3, _08029358
	adds r5, r4, #0
	ands r1, r3
	movs r3, #0x33
	lsls r3, r3, #6
	adds r1, r1, r3
	movs r3, #1
	lsls r3, r3, #0x10
	orrs r1, r3
	lsls r3, r3, #1
	bics r1, r3
	ldr r3, _0802935C
	adds r5, #0xb8
	ands r1, r3
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	movs r3, #7
	lsrs r1, r1, #7
	lsls r1, r1, #7
	lsls r3, r3, #0x10
	bics r1, r3
	movs r3, #0xff
	lsls r3, r3, #0x13
	bics r1, r3
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x34]
	movs r3, #3
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsls r3, r3, #8
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0xe
	bics r1, r3
	str r1, [r0, #0x34]
	movs r1, #0xb6
	strb r2, [r1, r4]
	movs r1, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r3}
	ldr r1, _08029360
	movs r3, #0xf
	ldrb r1, [r1, #3]
	ldr r2, [r0, #0x34]
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x34]
	adds r0, r4, #0
	b %1
	thumb_func_end HostileCreature__Create

