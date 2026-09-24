	thumb_func_start sub_8001BB4
	push {r4, r5, r6, lr}
	ldr r0, [r1, #8]
	adds r6, r2, #0
	adds r4, r1, #0
	cmp r0, #0
	beq %11
	ldr r1, [r6, #4]
	cmp r1, #0
	beq %11
	adds r0, r4, #0
	bl __call_via_r1
11
	ldr r2, [r4, #8]
	movs r1, #0
	movs r0, #0
	movs r3, #0
	cmp r2, #0
	bls %15
	ldr r4, [r4, #0x20]
12
	lsls r5, r0, #2
	ldr r5, [r4, r5]
	ldr r5, [r5]
	lsls r5, r5, #0x1c
	lsrs r5, r5, #0x1c
	cmp r5, #2
	bne %14
	cmp r1, #0
	bne %13
	lsls r0, r0, #2
	ldr r3, [r4, r0]
	b %15
13
	adds r1, #1
14
	adds r0, #1
	cmp r2, r0
	bhi %12
15
	adds r4, r3, #0
	beq %17
	ldr r0, [r6, #4]
	cmp r0, #0
	beq %17
	ldr r0, [r4, #4]
	movs r5, #0
	cmp r0, #0
	bls %17
16
	ldr r0, [r4, #0x10]
	ldr r1, [r6, #8]
	bl __call_via_r1
	ldr r0, [r4, #4]
	adds r5, #1
	cmp r0, r5
	bhi %16
17
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_8001BB4

