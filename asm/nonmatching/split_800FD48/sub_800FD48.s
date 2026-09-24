	thumb_func_start sub_800FD48
sub_800FD48
	ldr r1, _0800FE6C
	push {r3, lr}
	ldrh r2, [r1, #0xa]
	movs r3, #0x1d
	lsls r3, r3, #9
	bics r2, r3
	strh r2, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	lsrs r3, r1, #0xb
	bics r2, r3
	strh r2, [r1, #0xa]
	ldrh r1, [r1, #0xa]
	ldr r2, _0800FE70
	movs r1, #0
	str r1, [r2, #4]
	str r1, [r2]
	ldr r1, _0800FE74
	ldrh r2, [r1]
	movs r3, #3
	lsls r3, r3, #8
	bics r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #4
	ands r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #3
	lsls r3, r3, #0xc
	bics r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #8
	bics r2, r3
	strh r2, [r1]
	str r3, [r0, #0x5c]
	ldr r0, _0800FE78
	movs r3, #1
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_800B12C
	add sp, #4
	pop {r3}
	bx r3

