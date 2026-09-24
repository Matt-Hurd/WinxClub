	thumb_func_start sub_8022FFC
sub_8022FFC
	push {r0, r1, r4, r5, r6, r7, lr}
	movs r6, #0x35
	lsls r6, r6, #4
	adds r4, r0, r6
	ldrb r5, [r4, #8]
	adds r6, #9
	sub sp, #4
	adds r3, r5, r0
	adds r3, r3, r6
	ldrb r6, [r3]
	ldr r7, [sp, #8]
	movs r1, #0
	adds r6, r6, r7
	strb r6, [r3]
	ldrb r3, [r4, #8]
	movs r6, #0x35
	lsls r6, r6, #4
	adds r3, r3, r0
	adds r6, r3, r6
	movs r3, #9
	ldrsb r7, [r6, r3]
	movs r2, #0xff
	cmp r7, #0
	bge %43
	movs r3, #0
	strb r3, [r6, #9]
	b %44
43
	cmp r7, #0xa
	ble %44
	movs r3, #0xa
	strb r3, [r6, #9]
44
	movs r6, #0x35
	lsls r6, r6, #4
	adds r3, r0, r5
	adds r6, r3, r6
	movs r3, #9
	ldrsb r6, [r6, r3]
	ldr r7, _0802337C
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	mov ip, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
45
	ldrb r6, [r7, r1]
	cmp r6, r3
	bhi %46
	adds r6, r7, r1
	ldrb r6, [r6, #1]
	cmp r6, r3
	blo %46
	adds r2, r1, #0
46
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x40
	bhs %47
	cmp r2, #0xff
	beq %45
47
	mov r1, ip
	adds r1, #0x5c
	lsls r3, r1, #0x18
	lsls r1, r5, #5
	adds r1, #0x16
	subs r1, r1, r2
	lsrs r3, r3, #0x18
	adds r2, r3, #0
	add r3, sp, #0
	strh r2, [r3]
	strh r1, [r3, #2]
	lsls r1, r5, #2
	adds r0, r1, r0
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	bl sub_8040034
	movs r3, #9
	ldrsb r0, [r4, r3]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040444
	ldr r5, _08023380
	ldr r0, [r5]
	bl sub_800B782
	movs r3, #0xa
	ldrsb r0, [r4, r3]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040444
	ldr r0, [r5]
	bl sub_800B6FA
	ldr r7, [sp, #8]
	cmp r7, #0
	beq %48
	ldr r0, _08023374
	ldr r0, [r0]
	adds r0, #0xa0
	bl sub_8028C2E
48
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

