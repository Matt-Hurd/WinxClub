	thumb_func_start sub_8008008
sub_8008008
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x18
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r2, #1
	strb r2, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
2
	add sp, #4
	pop {r3}
	bx r3

