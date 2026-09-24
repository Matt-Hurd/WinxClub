	thumb_func_start sub_80123B4
	cmp r0, #0
	beq %14
	ldr r2, _08012460
	movs r3, #0x4c
	ldrb r1, [r2, #0xf]
	ldrb r2, [r2, #0xe]
	muls r1, r3
	ldr r3, _08012464
	adds r1, r1, r3
	cmp r2, #0
	beq %13
11
	ldr r3, [r1, #0x10]
	cmp r3, r0
	bne %12
	adds r0, r1, #0
	bx lr
12
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne %11
13
	movs r1, #1
	str r1, [r0]
14
	movs r0, #0
	bx lr
	thumb_func_end sub_80123B4

