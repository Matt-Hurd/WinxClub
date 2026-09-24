	thumb_func_start sub_80399A4
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xec
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
	bl Boss__Create
	ldr r0, _08039D6C
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xe0
	strb r1, [r0, #8]
	movs r1, #2
	strb r1, [r0, #9]
	adds r0, r4, #0
	b %1
	thumb_func_end sub_80399A4

