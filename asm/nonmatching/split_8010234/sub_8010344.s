	thumb_func_start sub_8010344
sub_8010344
	push {r3, r4, r5, lr}
	ldr r5, _080103C4
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq %9
	ldr r1, [r0]
	ldr r2, [r1, #0x24]
	adds r1, r2, r1
	bl __call_via_r1
9
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl __call_via_r1
	movs r1, #1
	adds r0, r4, #0
	bl sub_8010B3E
	ldr r0, [r5]
	cmp r0, #0
	beq %10
	ldr r1, [r0]
	ldr r2, [r1, #0x28]
	adds r1, r2, r1
	bl __call_via_r1
10
	movs r0, #0xb9
	lsls r0, r0, #5
	adds r0, r4, r0
	ldrb r1, [r0, #0xc]
	cmp r1, #1
	bne %12
	movs r0, #1
11
	pop {r3, r4, r5}
	pop {r3}
	bx r3
12
	movs r1, #0
	strb r1, [r0, #0xc]
	adds r0, r4, #0
	bl sub_801115C
	cmp r0, #0
	bne %13
	movs r0, #1
	b %11
13
	movs r0, #0
	b %11

