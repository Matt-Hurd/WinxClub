	thumb_func_start GenericObject__08
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	movs r5, #1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq %24
	cmp r0, #0x1f
	beq %25
	cmp r0, #0x26
	bne %27
	movs r0, #1
23
	pop {r3, r4, r5}
	pop {r3}
	bx r3
24
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq %23
	movs r0, #0
	b %23
25
	adds r0, r4, #0
	bl sub_801DB90
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne %26
	movs r1, #0x13
	str r1, [r0, #0x1c]
26
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq %23
	movs r0, #0
	b %23
27
	adds r0, r4, #0
	bl m08__7DefaultFv
	b %23
	thumb_func_end GenericObject__08
