	thumb_func_start sub_803F38C
sub_803F38C
	movs r2, #0xff
	adds r2, #1
	push {r4}
	movs r3, #2
	cmp r1, #0
	ldr r4, [r0]
	beq %2
	orrs r4, r3
	adds r1, r4, #0
	bics r1, r2
	str r1, [r0]
1
	pop {r4}
	bx lr
2
	bics r4, r3
	bics r4, r2
	str r4, [r0]
	b %1
	ALIGN

