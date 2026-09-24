	thumb_func_start sub_8019F60
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x19
	lsls r0, r0, #6
	adds r4, r5, r0
	ldrb r0, [r4, #4]
	sub sp, #0x14
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	movs r0, #0
	cmp r1, #0
	strb r1, [r4, #4]
	bge %5
	strb r0, [r4, #4]
	b %6
5
	ldrb r0, [r4, #5]
	cmp r1, r0
	blt %6
	adds r0, #0xff
	strb r0, [r4, #4]
6
	ldr r6, _0801A2D0
	ldrb r7, [r4, #4]
	ldr r0, [r6]
	adds r0, r0, r7
	adds r0, #0xb0
	ldrb r2, [r0, #5]
	ldr r0, _0801A2D4
	lsls r1, r7, #2
	str r2, [sp, #8]
	ldr r2, _0801A2D8
	ldr r0, [r0]
	adds r1, r1, r2
	ldrh r1, [r1, #2]
	ldr r2, [sp, #8]
	adds r1, r1, r2
	ldrb r2, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r6, [r0, #4]
	ldr r3, [r0, #8]
	lsls r2, r2, #2
	lsls r1, r6
	adds r1, r3, r1
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	adds r2, r0, r1
	str r2, [sp, #0x10]
	ldr r0, _0801A2DC
	movs r2, #0
	adds r0, r5, r0
	adds r6, r0, #0
	ldr r1, [sp, #0x10]
	bl sub_80137F8
	ldr r0, [r6]
	ldr r1, [r0, #0x24]
	adds r2, r1, r0
	movs r1, #3
	mvns r1, r1
	adds r0, r6, #0
	bl __call_via_r2
	adds r0, r6, #0
	adds r6, #0x30
	ldrb r1, [r6, #8]
	add r3, sp, #0
	strb r1, [r3, #0xc]
	ldrb r2, [r3, #0xc]
	ldr r1, [r0, #0x14]
	ldr r0, _0801A2E0
	adds r0, r5, r0
	cmp r2, #3
	bls %7
	ldrh r1, [r1, #0x12]
	ldr r2, [sp, #0x10]
	adds r1, r1, r2
	movs r2, #0
	bl sub_80137F8
	b %8
7
	movs r2, #0
	add r1, pc, #0x2DC
	bl sub_80137F8
8
	movs r3, #4
	ldr r6, _0801A2D0
	ldrsb r0, [r4, r3]
	ldr r1, [r6]
	adds r0, r0, r1
	adds r0, #0xb0
	ldrb r1, [r0, #5]
	ldr r0, _0801A2E8
	adds r0, r5, r0
	cmp r1, #3
	bhs %9
	lsls r1, r7, #1
	ldr r2, _0801A2EC
	adds r1, r1, r7
	adds r1, r1, r2
	ldr r2, [sp, #8]
	movs r3, #0xff
	ldrb r2, [r1, r2]
	str r2, [sp]
	movs r2, #0
	movs r1, #0x4e
	bl sub_8013946
	b %10
9
	movs r2, #0
	add r1, pc, #0x2A4
	bl sub_80137F8
10
	movs r3, #4
	ldrsb r0, [r4, r3]
	ldr r2, _0801A2D8
	adds r2, #0x10
	lsls r1, r0, #3
	adds r1, r1, r2
	ldr r2, [r6]
	ldr r6, [r4]
	adds r0, r0, r2
	adds r0, #0xb0
	ldrb r0, [r0, #5]
	lsls r0, r0, #1
	ldrh r7, [r1, r0]
	ldr r0, _0801A2F0
	subs r1, r3, #5
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	cmp r2, #0
	beq %11
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
11
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq %12
	movs r2, #0
	adds r1, r7, #0
	ldr r0, [r4]
	bl sub_80007A0
12
	movs r6, #0
	movs r7, #3
	lsls r7, r7, #9
13
	movs r3, #4
	ldrsb r0, [r4, r3]
	lsls r1, r6, #5
	adds r1, #0x12
	lsls r3, r0, #1
	adds r0, r3, r0
	add r3, sp, #0
	strh r1, [r3, #4]
	lsls r0, r0, #2
	adds r0, #0x65
	strh r0, [r3, #6]
	lsls r0, r6, #2
	adds r0, r0, r5
	adds r0, r0, r7
	ldr r0, [r0, #0x34]
	add r1, sp, #4
	bl sub_8040034
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo %13
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq %14
	ldr r0, _0801A2F4
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
14
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8019F60

