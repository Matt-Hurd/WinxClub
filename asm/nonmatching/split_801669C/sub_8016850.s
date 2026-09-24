	thumb_func_start sub_8016850
sub_8016850
	push {r4, r5, r6, r7, lr}
	ldr r3, _08016ABC
	ldr r1, [r1]
	ldr r3, [r3]
	movs r2, #8
	ands r3, r2
	beq %12
	movs r3, #4
	ldrsh r6, [r1, r3]
	movs r3, #6
	ldrsh r2, [r1, r3]
	movs r3, #8
	ldrsh r4, [r1, r3]
	movs r3, #0xa
	mov ip, r6
	orrs r6, r2
	ldrsh r5, [r1, r3]
	adds r3, r6, #0
	orrs r3, r4
	orrs r3, r5
	adds r6, r3, #0
	ldr r3, _08016AC0
	movs r7, #0x13
	ldr r3, [r3]
	lsls r7, r7, #7
	adds r3, r3, r7
	cmp r6, #0
	bne %11
	ldr r5, [r3, #0x20]
	movs r6, #1
	ldr r2, [r5, #0x50]
	ldr r5, [r5, #0x54]
	adds r7, r2, #0
	ldr r5, [r5, #4]
	ldrh r2, [r2, #0xc]
	mov lr, r5
	lsls r5, r5, #5
	lsrs r5, r5, #0x1d
	lsls r6, r5
	muls r2, r6
	mov r5, lr
	lsls r5, r5, #2
	ldrh r6, [r7, #0xe]
	movs r7, #1
	lsrs r5, r5, #0x1d
	lsls r7, r5
	muls r6, r7
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r5, r6, #0x10
	asrs r5, r5, #0x10
11
	subs r2, #0xf0
	lsls r2, r2, #0x10
	str r2, [r3, #0x30]
	mov r6, ip
	lsls r4, r4, #0x10
	str r4, [r3, #0x2c]
	lsls r6, r6, #0x10
	subs r5, #0xa0
	lsls r2, r5, #0x10
	str r6, [r3, #0x28]
	str r2, [r3, #0x34]
	movs r2, #1
	lsls r2, r2, #0x13
	str r2, [r3, #0x38]
12
	ldrh r2, [r1, #4]
	strh r2, [r0, #0x10]
	ldrh r2, [r1, #6]
	strh r2, [r0, #0x12]
	ldrh r2, [r1, #8]
	strh r2, [r0, #0x14]
	ldrh r1, [r1, #0xa]
	strh r1, [r0, #0x16]
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

