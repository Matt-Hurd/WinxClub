	thumb_func_start sub_800C014
	lsls r2, r2, #4
	lsrs r2, r2, #4
	str r2, [r0]
	ldr r2, [r4]
	lsrs r1, r1, #0xa
	lsls r2, r2, #1
	lsrs r2, r2, #0x16
	lsls r1, r1, #0xa
	orrs r1, r2
	movs r2, #0x3f
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	adds r1, r1, r2
	str r1, [r0, #4]
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq %37
	ldr r0, [r4]
	movs r2, #0x7d
	lsls r1, r0, #0x18
	ldrb r0, [r6, #0xd]
	lsls r2, r2, #4
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r2
	ldr r2, [r0]
	lsrs r1, r1, #8
	bics r2, r3
	orrs r1, r2
	b %36
35
	b %39
36
	str r1, [r0]
37
	ldr r0, [r4]
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xe]
	adds r0, #1
	strb r0, [r6, #0xe]
38
	ldr r0, [r4, #4]
	lsls r0, r0, #0x1f
	bmi %42
	ldr r0, [r7, #4]
	ldr r2, _0800C44C
	lsrs r1, r0, #0x14
	cmp r1, r2
	beq %42
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r2, #0
	cmp r0, #8
	bne %40
	movs r2, #1
	b %41
39
	ldr r0, [r0, #4]
	ldr r2, _0800C450
	lsrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r2
	mov r2, ip
	subs r2, #1
	mov ip, r2
	adds r3, r2, #1
	beq %34
	b %33
40
	cmp r0, #9
	bne %41
	ldr r0, [r7, #0xc]
	movs r2, #0x10
	lsls r3, r0, #0x1c
	beq %41
	lsls r2, r0, #0x1c
	lsrs r2, r2, #0x1c
41
	adds r0, r5, #0
	bl sub_800BC30
	movs r2, #0x1f
	lsls r2, r2, #8
	ldr r1, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r1, r2
	orrs r0, r1
	str r0, [r4]
42
	ldr r0, [sp]
	adds r7, #0x14
	subs r0, #1
	adds r4, #8
	adds r3, r0, #1
	str r0, [sp]
	beq %43
	b %28
43
	ldr r0, [sp, #0x14]
	movs r1, #1
	ldr r0, [r0]
	ldr r3, [sp, #0x14]
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r5, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800C014

