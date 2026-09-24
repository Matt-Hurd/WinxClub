	thumb_func_start sub_80268C8
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x20
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	movs r4, #0
	str r4, [r0]
	adds r5, r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r3}
	movs r1, #0x98
	str r1, [r0, #8]
	mvns r1, r2
	str r1, [r0, #0x10]
	movs r1, #0xff
	adds r1, #1
	str r1, [r0, #0x14]
	movs r1, #5
	str r1, [r0, #0xc]
	ldr r1, _08026CDC
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
2
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_80268C8

