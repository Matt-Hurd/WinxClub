	non_word_aligned_thumb_func_start sub_80120E2
sub_80120E2
	ldr r1, _08012328
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq %3
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #4]
	ldrb r0, [r1, r0]
	bx lr
3
	ldr r0, _0801232C
	ldrb r0, [r0, #0xf]
	bx lr

