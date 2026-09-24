	thumb_func_start sub_803490C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	add r0, pc, #0x3E0
	lsls r2, r1, #0x10
	ldm r0!, {r0, r1}
	sub sp, #0x24
	bl __16_ll_mulls
	add r2, pc, #0x3DC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	movs r1, #0
	add r7, sp, #0x14
	movs r2, #0
	adds r4, r6, #0
	adds r4, #0xe0
	stm r7!, {r1, r2}
	ldrb r1, [r4, #6]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r7, #8
	cmp r0, #0
	str r1, [sp, #0x10]
	bne %1
	movs r0, #1
1
	movs r5, #0
	cmp r0, #0xa
	bhs %6
	cmp r0, #5
	blo %3
	movs r2, #1
	strb r2, [r7, r1]
	ldrb r1, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r4, #6]
	cmp r1, #5
	bne %2
	strb r5, [r4, #6]
2
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
3
	cmp r0, #0
	beq %13
	movs r1, #0
	cmp r0, #0
	bls %13
4
	ldrb r2, [r4, #6]
	strb r5, [r7, r2]
	ldrb r2, [r4, #6]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r4, #6]
	cmp r2, #5
	bne %5
	strb r5, [r4, #6]
5
	adds r1, #1
	cmp r1, r0
	blo %4
	b %13
6
	cmp r0, #0x1e
	bhs %9
	bl sub_8040684
	movs r0, #0
	cmp r1, #0
	bls %13
	movs r2, #1
7
	ldrb r3, [r4, #6]
	strb r2, [r7, r3]
	ldrb r3, [r4, #6]
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r4, #6]
	cmp r3, #5
	bne %8
	strb r5, [r4, #6]
8
	adds r0, #1
	cmp r0, r1
	blo %7
	b %13
9
	bl sub_8040574
	cmp r1, #5
	bls %10
	movs r1, #5
10
	movs r0, #0
	cmp r1, #0
	bls %13
	movs r2, #2
11
	ldrb r3, [r4, #6]
	strb r2, [r7, r3]
	ldrb r3, [r4, #6]
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r4, #6]
	cmp r3, #5
	bne %12
	strb r5, [r4, #6]
12
	adds r0, #1
	cmp r0, r1
	blo %11
13
	ldrb r0, [r4, #6]
	ldr r5, [sp, #0x10]
	cmp r0, r5
	bls %17
	adds r1, r6, #0
	adds r1, #0x58
	str r1, [sp, #0x20]
14
	adds r0, r6, r5
	adds r0, #0xe0
	ldrb r1, [r0]
	str r1, [sp, #0x1c]
	bl rand
	bl sub_8040490
	adds r0, #1
	str r0, [sp, #0xc]
	bl rand
	bl sub_8040468
	adds r0, #1
	str r0, [sp, #8]
	bl rand
	lsrs r1, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r7, r0, r1
	bne %15
	mvns r7, r7
15
	bl rand
	lsrs r1, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r0, r0, r1
	bne %16
	mvns r0, r0
16
	ldr r1, [r6, #0x58]
	ldr r2, [sp, #0xc]
	muls r7, r2
	lsls r2, r7, #0x10
	adds r1, r1, r2
	ldr r2, [r6, #0x5c]
	ldr r3, [sp, #8]
	str r1, [sp]
	muls r0, r3
	lsls r0, r0, #0x10
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r0, _08034D04
	mov r2, sp
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #2
	ldr r7, [r0, r1]
	add r0, sp, #0x14
	ldrsb r3, [r0, r5]
	ldr r1, [sp, #0x20]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	ldrb r0, [r4, #6]
	adds r5, #1
	cmp r0, r5
	bhi %14
17
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_803490C

