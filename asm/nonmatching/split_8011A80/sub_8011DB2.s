	non_word_aligned_thumb_func_start sub_8011DB2
sub_8011DB2
	ldr r2, _0801209C
	push {r4}
	ldrh r0, [r2]
	lsls r1, r0, #0x1e
	bpl %43
	movs r1, #2
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080120A0
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq %43
	ldr r2, _080120A4
42
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r2
	adds r3, #4
	ldrh r4, [r3]
	bics r4, r1
	strh r4, [r3]
	cmp r0, #0
	bne %42
43
	pop {r4}
	bx lr

