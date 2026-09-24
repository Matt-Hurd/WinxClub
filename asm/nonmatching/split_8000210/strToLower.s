	thumb_func_start strToLower
strToLower
	ldrb r1, [r0]
	cmp r1, #0
	beq %18
16
	movs r3, #0
	ldrsb r1, [r0, r3]
	adds r2, r1, #0
	subs r2, #0x41
	cmp r2, #0x19
	bhi %17
	adds r1, #0x20
	strb r1, [r0]
17
	adds r0, #1
	ldrb r1, [r0]
	cmp r1, #0
	bne %16
18
	bx lr

