	non_word_aligned_thumb_func_start sub_80237DA
	push {r0, r4, r5, r6, r7, lr}
	ldr r0, _080239CC
	movs r1, #0
	ldr r5, [r0, #4]
	adds r4, r5, #0
	adds r4, #0xb0
11
	adds r2, r5, r1
	adds r2, #0xb0
	movs r0, #0
	strb r0, [r2, #5]
	lsls r3, r1, #1
	ldr r6, _080239E4
	adds r3, r3, r1
	movs r0, #2
	adds r6, r3, r6
	b %14
12
	ldrb r3, [r6, r0]
	ldrb r7, [r4, #2]
	cmp r3, r7
	bhi %13
	adds r3, r0, #1
	strb r3, [r2, #5]
13
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bmi %15
14
	ldrb r3, [r2, #5]
	cmp r3, #0
	beq %12
15
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #4
	blt %11
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne %17
	ldr r1, [sp]
	strb r0, [r1, #0xd]
16
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	bl sub_8040684
	adds r0, r1, #1
	ldr r1, [sp]
	strb r0, [r1, #0xd]
	b %16
	thumb_func_end sub_80237DA

