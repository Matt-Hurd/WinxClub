	thumb_func_start sub_800AFD4
sub_800AFD4
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #0xc
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	ldr r1, _0800B0C8
	str r1, [r0]
	ldr r1, _0800B0CC
	str r0, [r1]
	ldr r1, _0800B0D0
	str r1, [r0]
	movs r1, #1
	lsls r1, r1, #0x1a
	ldrh r2, [r1]
	movs r3, #0x40
	orrs r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #0x80
	bics r2, r3
	strh r2, [r1]
	ldr r1, _0800B0D4
	movs r2, #5
	lsls r2, r2, #0x18
	strh r1, [r2]
	lsls r1, r3, #1
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #8]
2
	add sp, #4
	pop {r3}
	bx r3

