	non_word_aligned_thumb_func_start sub_8004716
sub_8004716
	push {r3, lr}
	cmp r0, #0
	bne %5
	movs r0, #0xc
	bl __nw__FUi
	cmp r0, #0
	beq %6
5
	movs r2, #1
	ldr r1, [r0]
	lsls r2, r2, #0x19
	orrs r1, r2
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
	movs r2, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
6
	add sp, #4
	pop {r3}
	bx r3

