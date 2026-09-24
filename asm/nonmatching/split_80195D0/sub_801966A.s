	non_word_aligned_thumb_func_start sub_801966A
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0xff
	adds r6, #0xd1
	adds r4, r0, #0
	movs r3, #2
	ldrsb r0, [r6, r3]
	sub sp, #4
	ldr r1, [sp, #8]
	adds r0, r0, r1
	bmi %21
	ldrb r2, [r6, #3]
	cmp r2, r0
	ble %21
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xd
	cmp r1, #7
	strb r1, [r6, #2]
	blt %9
	cmp r1, #7
	bgt %12
	cmp r2, #8
	bne %12
9
	movs r7, #0
	movs r5, #0
10
	lsls r1, r5, #5
	adds r1, #0x82
	movs r0, #0xd
	cmp r5, #2
	beq %11
	movs r0, #1
11
	subs r0, r1, r0
	movs r3, #2
	ldrsb r1, [r6, r3]
	lsls r3, r1, #1
	adds r1, r3, r1
	add r3, sp, #0
	strh r0, [r3]
	lsls r1, r1, #2
	adds r1, #0x30
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	strh r1, [r3, #2]
	adds r0, #0xc1
	ldr r0, [r0, #0x1c]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %10
	b %15
12
	adds r1, #0xf9
	lsls r7, r1, #0x18
	lsrs r7, r7, #0x18
	movs r5, #0
13
	lsls r1, r5, #5
	adds r1, #0x82
	movs r0, #0xd
	cmp r5, #2
	beq %14
	movs r0, #1
14
	subs r0, r1, r0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x84
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x1c]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %13
15
	movs r5, #0
	b %19
16
	adds r0, r7, r5
	cmp r0, r1
	bhs %17
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldrh r1, [r0, #2]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xe9
	movs r3, #0xff
	movs r2, #0
	bl sub_80138E2
	b %18
17
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xe9
	movs r2, #0
	add r1, pc, #0x270
	bl sub_80137F8
18
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	bhs %20
19
	ldrb r1, [r6, #3]
	cmp r1, r5
	bhi %16
20
	movs r3, #2
	ldrsb r0, [r6, r3]
	b %22
21
	b %25
22
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldrh r0, [r0, #2]
	movs r2, #0xff
	adds r1, r4, #0
	adds r1, #8
	adds r2, #0x86
	cmp r0, r2
	bhs %23
	movs r3, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	b %24
23
	movs r3, #8
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
24
	ldr r1, [sp, #8]
	cmp r1, #0
	beq %25
	ldr r0, _080199C0
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
25
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_801966A

