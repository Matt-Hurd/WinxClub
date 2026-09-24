	thumb_func_start sub_80301E8
sub_80301E8
	push {r4, r5, r6}
	ldr r1, [r0, #0xc]
	movs r3, #0x20
	cmp r1, #0
	beq %3
	adds r4, r0, #4
	ldm r4!, {r2, r4}
	ldr r6, [r0]
	adds r5, r4, #0
	lsrs r5, r2
	orrs r5, r6
	str r5, [r0]
	adds r5, r1, r2
	cmp r5, #0x20
	bls %2
	subs r2, r3, r2
	subs r1, r1, r2
	str r1, [r0, #0xc]
	lsls r4, r2
	adds r0, #4
	stm r0!, {r3, r4}
1
	pop {r4, r5, r6}
	bx lr
2
	adds r1, r2, r1
	str r1, [r0, #4]
3
	ldr r1, [r0, #0x10]
	adds r2, r1, #4
	str r2, [r0, #0x10]
	ldr r1, [r1]
	ldr r2, [r0, #4]
	cmp r2, #0x20
	bhs %4
	adds r5, r1, #0
	ldr r4, [r0]
	lsrs r5, r2
	orrs r4, r5
	str r4, [r0]
	subs r4, r3, r2
	lsls r1, r4
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #4]
	b %1
4
	adds r0, #8
	stm r0!, {r1, r3}
	b %1

