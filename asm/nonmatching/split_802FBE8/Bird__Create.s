	thumb_func_start Bird__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %3
	movs r0, #0xb8
	bl __nw__FUi
	adds r4, r0, #0
	bne %3
	adds r0, r4, #0
2
	pop {r4}
	pop {r3}
	bx r3
3
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _0802FFD8
	ldr r2, _0802FFDC
	str r0, [r4]
	movs r0, #6
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	add r1, pc, #0x36C
	str r1, [r4, #0x4c]
	movs r1, #0
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	subs r0, #0x10
	movs r2, #0x1e
	strb r2, [r0, #0xd]
	strb r1, [r0, #0xc]
	adds r0, r4, #0
	b %2
	thumb_func_end Bird__Create

