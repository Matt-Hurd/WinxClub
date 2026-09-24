	thumb_func_start sub_8005170
sub_8005170
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	adds r2, r1, #7
	lsrs r2, r2, #3
	ldr r4, [r0]
	lsls r2, r2, #3
	movs r3, #0
	cmp r4, #0
	beq %9
	adds r5, r2, #0
	adds r5, #0xc
7
	ldr r2, [r0, #8]
	ldr r4, [r0]
	lsrs r2, r2, #8
	adds r2, #7
	lsrs r2, r2, #3
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xc
	subs r2, r4, r2
	cmp r3, r2
	bge %8
	adds r3, r2, #0
8
	cmp r2, r5
	blt %11
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	adds r2, #7
	lsrs r2, r2, #3
	lsls r2, r2, #3
	adds r4, r2, r0
	adds r2, r1, #0
	adds r1, r0, #0
	adds r4, #0xc
	adds r0, r4, #0
	bl sub_803F07C
	ldr r0, [r4]
	cmp r0, #0
	bne %12
9
	movs r0, #0
10
	pop {r3, r4, r5}
	pop {r3}
	bx r3
11
	ldr r2, [r4]
	adds r0, r4, #0
	cmp r2, #0
	beq %9
	b %7
12
	adds r0, r4, #0
	b %10

