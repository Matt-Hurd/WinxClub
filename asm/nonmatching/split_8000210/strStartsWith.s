	thumb_func_start strStartsWith
strStartsWith
	b %2
1
	adds r0, #1
	adds r1, #1
2
	ldrb r3, [r0]
	cmp r3, #0
	beq %3
	ldrb r2, [r1]
	cmp r2, #0
	beq %4
	cmp r3, r2
	beq %1
	b %4
3
	ldrb r0, [r1]
	cmp r0, #0
	bne %4
	movs r0, #1
	bx lr
4
	movs r0, #0
	bx lr

