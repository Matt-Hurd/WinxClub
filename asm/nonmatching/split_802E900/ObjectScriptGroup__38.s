	thumb_func_start ObjectScriptGroup__38
ObjectScriptGroup__38
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0802EC14
	movs r7, #0x80
	ldr r6, [r0]
	add r0, pc, #0x288
	str r0, [sp]
	movs r4, #4
	b %5
4
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	bhs %6
5
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %4
6
	ldr r0, _0802EC2C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x80
	movs r3, #0
	movs r2, #0
	bl sub_803DA9C
	lsls r1, r4, #2
	adds r7, r1, r6
	str r0, [r7, #0x18]
	movs r0, #0
	bl sub_80050FA
	lsls r0, r4, #1
	movs r2, #0xff
	adds r2, #0x99
	adds r0, r0, r6
	movs r1, #0x80
	strh r1, [r2, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r2, r0, r2
	strh r1, [r2, #0x18]
	movs r2, #0xb
	lsls r2, r2, #7
	adds r0, r0, r2
	movs r1, #1
	strh r1, [r0, #0x18]
	adds r1, r2, #0
	subs r1, #0xff
	subs r1, #1
	ldr r0, [sp]
	adds r1, r7, r1
	str r0, [r1, #0x18]
	adds r0, r2, #0
	adds r0, #0x90
	adds r0, r6, r0
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	movs r1, #0xff
	ldr r0, [r5, #0x7c]
	lsls r1, r1, #0x10
	bics r0, r1
	lsls r1, r4, #0x10
	orrs r0, r1
	str r0, [r5, #0x7c]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq %7
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
7
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r5, #0x28]
	movs r2, #1
	str r1, [r0, #0x18]
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	lsls r2, r2, #0xa
	ldr r0, [r1]
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802EC30
	ldr r0, [r0]
	bl sub_8001432
	adds r0, r5, #0
	bl m10__7DefaultFv
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

