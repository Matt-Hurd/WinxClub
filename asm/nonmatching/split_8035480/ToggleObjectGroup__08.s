	non_word_aligned_thumb_func_start ToggleObjectGroup__08
ToggleObjectGroup__08
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	movs r5, #1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq %25
	cmp r0, #0x1f
	bne %26
	adds r0, r4, #0
	bl sub_801DB90
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne %23
	movs r1, #0x13
	str r1, [r0, #0x1c]
23
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq %24
	movs r0, #0
24
	pop {r3, r4, r5}
	pop {r3}
	bx r3
25
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq %24
	movs r0, #0
	b %24
26
	adds r0, r4, #0
	bl m08__7DefaultFv
	b %24

