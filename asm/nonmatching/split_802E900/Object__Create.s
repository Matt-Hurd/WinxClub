	thumb_func_start Object__Create
Object__Create
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
	ldr r0, _0802EC08
	movs r1, #0x11
	str r0, [r4]
	strh r1, [r4, #4]
	ldr r0, [r4, #0x7c]
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r0, r2
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0, #0x1c]
	ldr r1, [r0]
	ldr r2, _0802EC0C
	ands r1, r2
	ldr r2, _0802EC10
	adds r1, r1, r2
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0x3c
	strb r2, [r1, #0xd]
	movs r2, #0x14
	strb r2, [r1, #0xc]
	movs r2, #0xa6
	movs r1, #0
	strh r1, [r2, r4]
	movs r2, #1
	ldr r1, [r0, #0xc]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b %1

