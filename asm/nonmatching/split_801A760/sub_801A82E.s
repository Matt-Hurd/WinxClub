	non_word_aligned_thumb_func_start sub_801A82E
sub_801A82E
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r1, #0
	ldrb r0, [r0]
	bge %7
	adds r0, #2
	bl sub_8040640
	strb r0, [r4]
	b %8
7
	cmp r5, #0
	ble %8
	adds r0, #1
	bl sub_8040640
	strb r0, [r4]
8
	movs r0, #0
9
	ldrb r1, [r4]
	movs r2, #1
	cmp r1, r0
	bne %10
	movs r2, #0
10
	lsls r1, r0, #3
	adds r3, r1, r4
	adds r3, #0xff
	adds r3, #0xc1
	ldr r1, [r3, #0x24]
	ldrh r6, [r1, #0x26]
	lsls r7, r6, #0x14
	lsrs r7, r7, #0x1e
	cmp r7, r2
	beq %11
	movs r7, #3
	lsls r7, r7, #0xa
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x14
	bics r6, r7
	orrs r6, r2
	strh r6, [r1, #0x26]
	ldr r6, [r1]
	movs r7, #0x80
	orrs r6, r7
	str r6, [r1]
	ldr r1, [r3, #0x28]
	movs r6, #3
	ldrh r3, [r1, #0x26]
	lsls r6, r6, #0xa
	bics r3, r6
	orrs r2, r3
	strh r2, [r1, #0x26]
	ldr r2, [r1]
	orrs r2, r7
	str r2, [r1]
11
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	blo %9
	cmp r5, #0
	beq %12
	ldr r0, _0801AB0C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
12
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

