	thumb_func_start sub_8001B80
sub_8001B80
	push {r4, r5, r6}
	ldr r5, [r0, #8]
	movs r4, #0
	movs r3, #0
	cmp r5, #0
	bls %10
	ldr r0, [r0, #0x20]
6
	lsls r6, r3, #2
	ldr r6, [r0, r6]
	ldr r6, [r6]
	lsls r6, r6, #0x1c
	lsrs r6, r6, #0x1c
	cmp r6, r2
	bne %9
	cmp r4, r1
	bne %8
	lsls r1, r3, #2
	ldr r0, [r0, r1]
7
	pop {r4, r5, r6}
	bx lr
8
	adds r4, #1
9
	adds r3, #1
	cmp r5, r3
	bhi %6
10
	movs r0, #0
	b %7

