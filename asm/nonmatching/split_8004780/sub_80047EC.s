	thumb_func_start sub_80047EC
sub_80047EC
	push {r3, lr}
	cmp r0, #0
	bne %4
	movs r0, #0x14
	bl __nw__FUi
	cmp r0, #0
	beq %5
4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strb r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strb r1, [r0, #0x10]
5
	add sp, #4
	pop {r3}
	bx r3

