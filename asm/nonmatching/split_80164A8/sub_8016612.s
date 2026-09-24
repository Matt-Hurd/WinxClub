	non_word_aligned_thumb_func_start sub_8016612
sub_8016612
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrb r0, [r5]
	movs r6, #0
	cmp r0, #0x15
	beq %18
	cmp r0, #0x16
	beq %21
	cmp r0, #0x17
	beq %22
	cmp r0, #0x18
	bne %20
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #8
	bl sub_803DA80
	cmp r0, #0
	beq %17
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	subs r0, #8
17
	ldrh r1, [r5, #4]
	strh r1, [r0]
	str r6, [r0, #4]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq %23
	str r0, [r1, #4]
	str r0, [r4, #0x10]
	b %24
18
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq %19
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
19
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	strb r6, [r4, #8]
20
	pop {r4, r5, r6}
	pop {r3}
	bx r3
21
	adds r0, r4, #0
	bl sub_801659C
	b %20
22
	adds r0, r4, #0
	bl sub_80164E6
	b %20
23
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
24
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b %20

