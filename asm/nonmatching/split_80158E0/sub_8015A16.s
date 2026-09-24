	non_word_aligned_thumb_func_start sub_8015A16
sub_8015A16
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08015CE0
	movs r1, #0
	ldr r0, [r0]
	sub sp, #0xc
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %14
	ldrh r1, [r0, #6]
14
	adds r6, r5, #0
	adds r6, #0x80
	movs r0, #0x2c
	ldrb r0, [r0, r6]
	adds r4, r6, #0
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	adds r4, #0xe0
	cmp r0, #0
	bne %23
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %15
	movs r1, #1
	bl sub_80401E4
15
	lsls r0, r7, #0x1f
	bpl %22
	movs r0, #0x38
	ldrb r0, [r0, r6]
	add r3, sp, #0
	strb r0, [r3, #8]
	ldrh r0, [r4, #0x1e]
	ldr r1, [r6, #0x14]
	adds r2, r0, #1
	strh r2, [r4, #0x1c]
	adds r0, #3
	strh r0, [r4, #0x1e]
	b %17
16
	adds r0, #1
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
17
	ldrh r0, [r4, #0x1c]
	add r3, sp, #0
	ldrb r2, [r3, #8]
	cmp r0, r2
	bhs %18
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r2, [r2, #4]
	cmp r2, #0
	beq %16
18
	ldrh r2, [r4, #0x1c]
	add r3, sp, #0
	ldrb r3, [r3, #8]
	cmp r2, r3
	blo %20
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x1e]
19
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
20
	ldrh r2, [r4, #0x1e]
	add r3, sp, #0
	ldrb r3, [r3, #8]
	cmp r2, r3
	blo %21
	add r3, sp, #0
	ldrb r2, [r3, #8]
	subs r2, #1
	strh r2, [r4, #0x1e]
21
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r4, #0x1e]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #1
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r0, [r1, r0]
	ldr r1, _08015CEC
	ldrh r2, [r2, #2]
	ldr r1, [r1]
	movs r3, #0xa
	ldrb r1, [r1, #2]
	subs r1, r3, r1
	lsls r1, r1, #0x18
	adds r3, r2, #0
	adds r2, r0, #0
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_8013B9C
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %22
	movs r1, #0
	bl sub_80401E4
22
	b %24
23
	lsls r0, r7, #0x1f
	bpl %24
	adds r0, r6, #0
	bl sub_8013B76
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %24
	movs r1, #1
	bl sub_80401E4
24
	lsls r0, r7, #0x1e
	bpl %25
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x1e]
25
	movs r1, #0
	adds r0, r6, #0
	bl sub_80139AC
	b %19

