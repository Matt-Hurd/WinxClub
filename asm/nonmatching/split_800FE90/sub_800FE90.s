	thumb_func_start sub_800FE90
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x20
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x1c]
	mvns r1, r1
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
2
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_800FE90

