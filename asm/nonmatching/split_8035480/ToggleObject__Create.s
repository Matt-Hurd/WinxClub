	thumb_func_start ToggleObject__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xac
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _08035730
	ldr r2, _08035734
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x20]
	movs r3, #0x7d
	lsrs r1, r1, #0xc
	lsls r1, r1, #0xc
	ands r1, r2
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x24]
	lsrs r2, r2, #0xc
	lsrs r1, r1, #0xc
	lsls r1, r1, #0xc
	bics r1, r2
	lsls r2, r2, #8
	bics r1, r2
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x28]
	movs r2, #3
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsls r2, r2, #0x10
	bics r1, r2
	add r2, pc, #0x264
	str r2, [r4, #0x4c]
	movs r2, #0x13
	strh r2, [r4, #4]
	movs r2, #0x28
	strb r2, [r3, r4]
	movs r2, #0xff
	lsls r2, r2, #8
	bics r1, r2
	movs r2, #5
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r0, #0x28]
	ldr r1, [r0, #4]
	ldr r2, _0803574C
	ands r1, r2
	str r1, [r0, #4]
	ldr r1, [r4, #0x7c]
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r1, r2
	str r1, [r4, #0x7c]
	movs r1, #0x11
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b %1
	thumb_func_end ToggleObject__Create

