	non_word_aligned_thumb_func_start sub_8011D56
	ldr r1, _0801209C
	push {r3, r4, r5}
	ldrh r0, [r1]
	lsls r2, r0, #0x1f
	bpl %41
	movs r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _080120A0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq %40
	ldr r4, _080120A4
39
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	adds r3, #4
	ldrh r5, [r3]
	orrs r5, r2
	strh r5, [r3]
	cmp r0, #0
	bne %39
40
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne %41
	str r0, [sp]
	ldr r0, _080120A8
	mov r1, sp
	str r1, [r0]
	ldr r1, _080120A0
	adds r1, #0x10
	str r1, [r0, #4]
	ldr r1, _080120AC
	str r1, [r0, #8]
	ldr r2, [r0, #8]
	movs r2, #0
	str r2, [sp]
	mov r2, sp
	str r2, [r0]
	ldr r2, _080120B0
	str r2, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r0, #8]
41
	pop {r3, r4, r5}
	bx lr
	thumb_func_end sub_8011D56

