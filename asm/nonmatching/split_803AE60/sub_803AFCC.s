	thumb_func_start sub_803AFCC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r5, #7
	lsls r0, r0, #0x15
	lsrs r1, r0, #0x1d
	lsls r5, r5, #8
	movs r6, #0
	cmp r1, #0
	ldr r0, [r4, #4]
	beq %9
	cmp r1, #1
	beq %10
	cmp r1, #2
	bne %12
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %12
	cmp r0, #0
	beq %8
	ldr r0, _0803B140
	adds r1, r4, #4
	ldr r0, [r0]
	bl sub_8000DE6
	str r6, [r4, #4]
8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
9
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %12
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x34]
	bics r0, r5
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b %12
10
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %12
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r2, [r1]
	adds r2, #0xff
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r1]
	bne %11
	ldr r1, [r4, #0x38]
	adds r1, #2
	bl sub_80007A0
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r5
	adds r0, r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	bne %11
	ldr r0, [r4, #0x3c]
	movs r3, #4
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r5, r2, r1
	movs r2, #1
	ldr r1, [r4, #0x10]
	bl __call_via_r5
11
	ldr r0, _0803B144
	ldr r5, [r4, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl __16_ll_shift_l
	add r2, pc, #0xB0
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_8000914
12
	ldr r0, [r4, #4]
	cmp r0, #0
	beq %8
	ldr r1, [r4, #0x3c]
	movs r2, #3
	ldr r3, [r1, #0x2c]
	lsls r2, r2, #0x11
	mov ip, r3
	ldr r3, [r1, #0x30]
	adds r1, r0, #0
	adds r0, r3, #0
	adds r0, #0x2c
	ldr r0, [r0, #4]
	ldr r3, [r3, #0x2c]
	adds r5, r0, r2
	ldr r2, [r1, #0x2c]
	ldr r6, [r1, #0x34]
	subs r7, r3, r2
	ldr r2, [r1, #0x30]
	adds r6, r6, r7
	str r6, [r1, #0x34]
	ldr r6, [r1, #0x38]
	subs r2, r5, r2
	adds r6, r6, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r6, [r1, #0x38]
	ldr r6, [r0, #8]
	adds r6, r6, r7
	str r6, [r0, #8]
	ldr r6, [r0, #0xc]
	adds r2, r6, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r5, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r2, r0
	str r2, [r1]
	mov r3, ip
	ldrb r0, [r3, #5]
	ldr r2, [r4, #4]
	ldrb r3, [r2, #5]
	subs r0, #2
	adds r1, r0, #0
	cmp r0, r3
	bne %14
13
	b %8
14
	ldrh r0, [r2, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r0, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r0, r3
	strh r0, [r2, #0x2a]
	strb r1, [r2, #5]
	ldr r0, [r2]
	lsls r1, r0, #0x16
	bmi %13
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	b %8
	thumb_func_end sub_803AFCC
