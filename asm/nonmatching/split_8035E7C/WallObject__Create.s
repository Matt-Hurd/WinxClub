	thumb_func_start WallObject__Create
WallObject__Create
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xbc
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
	ldr r0, _08036128
	movs r1, #0
	str r0, [r4]
	add r0, pc, #0x288
	str r0, [r4, #0x4c]
	movs r0, #0x14
	strh r0, [r4, #4]
	movs r0, #0x7d
	strb r1, [r0, r4]
	adds r2, r4, #0
	adds r2, #0xa0
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r2, #8]
	ldr r3, [r0, #4]
	ldr r5, _08036140
	ands r3, r5
	str r3, [r0, #4]
	ldr r3, [r4, #0x7c]
	movs r5, #0xf
	lsls r5, r5, #0x18
	bics r3, r5
	str r3, [r4, #0x7c]
	movs r3, #0x11
	str r3, [r0, #0x1c]
	movs r3, #0xff
	strb r3, [r2]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	movs r3, #0x13
	lsls r3, r3, #5
	strh r1, [r4, #0x1e]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0xa]
	strh r3, [r4, #0xc]
	strh r3, [r4, #8]
	movs r3, #4
	movs r5, #0x97
	strb r3, [r5, r4]
	movs r5, #1
	ldr r3, [r0, #0xc]
	lsls r5, r5, #0xc
	orrs r3, r5
	str r3, [r0, #0xc]
	strh r1, [r2, #0x16]
	adds r0, r4, #0
	b %1

