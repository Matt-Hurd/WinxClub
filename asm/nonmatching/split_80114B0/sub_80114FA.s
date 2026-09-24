	non_word_aligned_thumb_func_start sub_80114FA
sub_80114FA
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _08011730
	adds r1, r0, #0
	adds r7, #0x24
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq %7
	movs r0, #0x1f
	ldrb r0, [r0, r7]
	movs r4, #1
	lsls r4, r4, #9
	cmp r0, #2
	bls %1
	lsls r4, r0, #8
1
	cmp r1, #0
	bne %2
	lsrs r1, r4, #5
2
	lsls r0, r4, #4
	bl Div
	subs r1, r4, r0
	lsrs r5, r1, #1
	adds r6, r5, r0
	subs r4, #1
	bmi %7
	subs r0, r6, r5
	str r0, [sp]
3
	cmp r4, r5
	bge %4
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	strb r1, [r0, r4]
	b %6
4
	cmp r4, r6
	blt %5
	ldr r0, [r7, #0x14]
	movs r1, #0x7f
	strb r1, [r0, r4]
	b %6
5
	subs r0, r4, r5
	lsls r0, r0, #8
	ldr r1, [sp]
	bl Div
	ldr r1, [r7, #0x14]
	adds r0, #0x80
	strb r0, [r1, r4]
6
	subs r4, #1
	bpl %3
7
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

