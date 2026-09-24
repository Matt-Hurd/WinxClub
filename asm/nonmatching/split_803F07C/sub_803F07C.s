	thumb_func_start sub_803F07C
	str r1, [r0, #4]
	cmp r1, #0
	beq %1
	ldr r3, [r1]
	str r3, [r0]
	str r0, [r1]
	ldr r1, [r0]
	cmp r1, #0
	beq %2
	str r0, [r1, #4]
	b %2
1
	movs r1, #0
	str r1, [r0]
2
	ldr r1, [r0, #8]
	lsls r2, r2, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	orrs r1, r2
	lsrs r1, r1, #8
	lsls r1, r1, #8
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_803F07C

