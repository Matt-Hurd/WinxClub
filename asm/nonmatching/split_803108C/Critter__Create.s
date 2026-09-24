	thumb_func_start Critter__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xb4
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
	ldr r0, _080313D4
	ldr r2, _080313D8
	str r0, [r4]
	movs r0, #7
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	movs r3, #0x1e
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	add r1, pc, #0x314
	str r1, [r4, #0x4c]
	movs r2, #0
	str r2, [r0, #0x28]
	adds r1, r4, #0
	adds r1, #0x70
	str r2, [r0, #0x2c]
	strb r3, [r1, #0xd]
	strb r2, [r1, #0xc]
	movs r2, #1
	ldr r1, [r0, #0xc]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b %1
	thumb_func_end Critter__Create

