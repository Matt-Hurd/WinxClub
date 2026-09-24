	thumb_func_start GenericObject__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xa4
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
	ldr r0, _080262AC
	movs r1, #0x3c
	str r0, [r4]
	add r0, pc, #0x264
	str r0, [r4, #0x4c]
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	adds r0, #0x10
	ldr r1, [r0, #4]
	ldr r2, _080262C8
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
	movs r0, #8
	movs r1, #0x97
	strb r0, [r1, r4]
	movs r0, #0xcf
	movs r1, #0xa0
	strh r0, [r1, r4]
	adds r0, r4, #0
	b %1
	thumb_func_end GenericObject__Create

