	thumb_func_start sub_800B154
sub_800B154
	movs r0, #1
	lsls r0, r1
	ldr r1, _0800B2B4
	push {r4}
	ldrh r3, [r1, #8]
	movs r4, #0
	strh r4, [r1, #8]
	ldrh r4, [r1]
	cmp r2, #0
	beq %1
	orrs r4, r0
	strh r4, [r1]
	b %2
1
	bics r4, r0
	strh r4, [r1]
2
	strh r3, [r1, #8]
	cmp r0, #4
	bgt %3
	ldr r3, _0800B2B8
	ldrh r1, [r3]
	lsls r0, r0, #3
	bics r1, r0
	strh r1, [r3]
	cmp r2, #0
	beq %3
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
3
	pop {r4}
	bx lr

