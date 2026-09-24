	thumb_func_start SomehowInitEWRAMLinkedList
SomehowInitEWRAMLinkedList
	push {r3, r4, r5, lr}
	cmp r1, #0
	bne %1
	subs r1, #4
	ldr r1, [r1, r0]
	lsrs r1, r1, #8
1
	movs r2, #0
	str r2, [r0, #4]
	str r2, [r0]
	ldr r3, [r0, #8]
	str r2, [r0, #0xc]
	movs r5, #1
	orrs r3, r5
	adds r2, r0, r1
	adds r4, r0, #0
	adds r1, r4, #0
	ands r3, r5
	str r3, [r0, #8]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_8005044
	adds r0, r4, #0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

