	thumb_func_start sub_8001A60
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x2c
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strb r1, [r0, #0x10]
	str r1, [r0, #0x14]
	strb r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	movs r2, #0x20
	strb r1, [r2, r0]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
2
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_8001A60

