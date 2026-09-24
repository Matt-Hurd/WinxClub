	thumb_func_start sub_80230DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x35
	lsls r0, r0, #4
	adds r5, r4, r0
	adds r6, r1, #0
	cmp r1, #0
	ldrb r0, [r5, #8]
	sub sp, #0xc
	bge %49
	adds r0, #3
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	strb r0, [r5, #8]
	b %50
49
	cmp r6, #0
	ble %50
	adds r0, #1
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	strb r0, [r5, #8]
50
	ldrb r0, [r5, #8]
	movs r1, #0x38
	movs r7, #0
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x75
	ldrb r1, [r1, r0]
	cmp r1, #1
	bne %54
	ldrb r1, [r0, #0x1c]
	lsls r2, r1, #0x1d
	bpl %51
	ldr r2, [r0, #0x14]
	ldrh r1, [r0, #0x20]
	ldrh r2, [r2, #4]
	subs r1, r1, r2
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	b %53
51
	lsls r1, r1, #0x1e
	bpl %52
	ldr r2, [r0, #0x14]
	ldrh r1, [r0, #0x20]
	ldrh r2, [r2, #4]
	subs r1, r1, r2
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	b %53
52
	movs r1, #0
53
	ldrh r0, [r0, #0x18]
	add r3, sp, #0
	adds r0, r0, r1
	strh r0, [r3, #8]
	b %55
54
	ldrh r0, [r0, #0x18]
	add r3, sp, #0
	strh r0, [r3, #8]
55
	add r3, sp, #0
	ldrh r1, [r3, #8]
	ldrb r0, [r5, #8]
	subs r1, #0x10
	strh r1, [r3, #4]
	lsls r0, r0, #5
	adds r0, #0x18
	strh r0, [r3, #6]
	movs r0, #0xd
	lsls r0, r0, #6
	adds r0, r4, r0
	ldr r0, [r0, #0x14]
	add r1, sp, #4
	bl sub_8040034
	cmp r6, #0
	beq %56
	ldr r0, _08023374
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
56
	ldrb r0, [r5, #8]
	adds r1, r4, #0
	adds r1, #8
	cmp r0, #2
	bhi %58
	adds r3, r7, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
57
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
58
	movs r3, #7
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	b %57
	thumb_func_end sub_80230DC

