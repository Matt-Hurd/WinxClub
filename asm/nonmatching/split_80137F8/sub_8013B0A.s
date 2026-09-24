	non_word_aligned_thumb_func_start sub_8013B0A
	push {r3, lr}
	ldrh r2, [r0, #0xe]
	lsls r2, r2, #0x1f
	bmi %23
	ldr r2, [r0, #0x48]
	cmp r2, #0
	bne %24
	ldr r2, [r0]
	ldr r3, [r2, #0x4c]
	adds r2, r3, r2
	bl __call_via_r2
23
	add sp, #4
	pop {r3}
	bx r3
24
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	beq %25
	cmp r1, #1
	beq %26
	cmp r1, #2
	bne %23
	ldr r1, [r0]
	ldr r2, [r1, #0x40]
	adds r1, r2, r1
	bl __call_via_r1
	b %23
25
	ldr r1, [r0]
	ldr r2, [r1, #0x38]
	adds r1, r2, r1
	bl __call_via_r1
	b %23
26
	ldr r1, [r0]
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl __call_via_r1
	b %23
	thumb_func_end sub_8013B0A
