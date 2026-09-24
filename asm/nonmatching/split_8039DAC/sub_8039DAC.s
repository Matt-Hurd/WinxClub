	thumb_func_start sub_8039DAC
sub_8039DAC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r0, #0
	ldr r0, _0803A030
	adds r5, r4, #0
	ldr r0, [r0]
	adds r5, #0xe0
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	adds r7, #0x80
	movs r2, #0
	cmp r0, #0
	bne %5
	movs r3, #9
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #8]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #8]
	bpl %1
	strb r2, [r5, #8]
	NEGS r0, r0
	strb r0, [r5, #9]
	b %2
1
	cmp r1, #4
	ble %2
	movs r1, #4
	strb r1, [r5, #8]
	NEGS r0, r0
	strb r0, [r5, #9]
2
	movs r3, #8
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls %3
	movs r6, #3
	b %4
3
	cmp r6, #1
	bhs %4
	movs r6, #1
4
	ldr r1, [r4, #0x30]
	ldr r0, _0803A034
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	ldr r1, _0803A038
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, r1
	cmp r0, r1
	beq %5
	ldr r0, [r4, #0x30]
	bl sub_800065C
5
	movs r3, #8
	ldrsb r0, [r5, r3]
	ldr r1, [r7, #0x24]
	ldr r2, [r4, #0x5c]
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r1
	ldr r1, [r4, #0x2c]
	subs r6, r2, r0
	ldr r2, [r1, #0x2c]
	ldr r3, [r4, #0x58]
	ldr r7, [r1, #0x34]
	subs r5, r3, r2
	ldr r2, [r1, #0x30]
	adds r7, r7, r5
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	subs r2, r6, r2
	adds r7, r7, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r7, [r1, #0x38]
	ldr r7, [r0, #8]
	adds r5, r7, r5
	str r5, [r0, #8]
	ldr r5, [r0, #0xc]
	adds r2, r5, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r6, [r1, #0x30]
	ldr r2, [r1]
	movs r0, #0xff
	adds r0, #1
	orrs r2, r0
	str r2, [r1]
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq %6
	ldr r3, [r4, #0x58]
	ldr r5, [r2, #0x2c]
	ldr r6, [r2, #0x30]
	subs r5, r3, r5
	ldr r3, [r4, #0x5c]
	adds r1, r2, #0
	subs r3, r3, r6
	ldr r6, [r2, #0x34]
	adds r1, #0x34
	adds r6, r6, r5
	str r6, [r2, #0x34]
	ldr r6, [r2, #0x38]
	adds r6, r6, r3
	str r6, [r1, #4]
	ldr r6, [r1, #8]
	adds r5, r6, r5
	str r5, [r1, #8]
	ldr r5, [r1, #0xc]
	adds r3, r5, r3
	str r3, [r1, #0xc]
	adds r4, #0x58
	ldm r4!, {r3, r4}
	str r3, [r2, #0x2c]
	str r4, [r2, #0x30]
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

