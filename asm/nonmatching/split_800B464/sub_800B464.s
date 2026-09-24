	thumb_func_start sub_800B464
sub_800B464
	adds r1, r0, #0
	ldr r0, _0800B6CC
	ldr r0, [r0]
	adds r0, #8
	cmp r1, #0
	beq %2
	cmp r1, #1
	beq %3
	cmp r1, #2
	bne %1
	ldr r1, [r0]
	movs r2, #2
	bics r1, r2
	str r1, [r0]
1
	bx lr
2
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
	bx lr
3
	ldr r1, [r0]
	movs r2, #4
	bics r1, r2
	str r1, [r0]
	bx lr

