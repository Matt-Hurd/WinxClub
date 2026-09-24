	thumb_func_start sub_803F55C
sub_803F55C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x70
	ldrb r2, [r4, #4]
	movs r5, #0
	cmp r2, #0xff
	beq %9
	ldrb r1, [r4, #5]
	cmp r1, #0xff
	beq %9
	ldrb r3, [r0, #0xc]
	ldr r6, _0803F5E8
	lsls r3, r3, #2
	ldr r3, [r6, r3]
	adds r6, r0, #0
	adds r6, #0x20
	b %6
3
	movs r5, #0x2e
	ldrb r5, [r5, r3]
	ldrb r7, [r6, #0xe]
	cmp r5, r7
	bne %4
	cmp r3, r0
	beq %4
	movs r5, #1
	b %5
4
	movs r5, #0
5
	ldr r3, [r3, #4]
6
	cmp r3, #0
	beq %7
	cmp r5, #0
	beq %3
	b %8
7
	cmp r5, #0
	bne %8
	ldr r3, _0803F5F0
	ldr r0, _0803F5EC
	lsls r2, r2, #3
	adds r2, r2, r3
	lsls r1, r1, #1
	strh r0, [r2, r1]
	ldrb r2, [r4, #4]
	lsls r1, r2, #3
	ldrh r5, [r3, r1]
	cmp r5, r0
	bne %8
	adds r1, r1, r3
	ldrh r3, [r1, #2]
	cmp r3, r0
	bne %8
	ldrh r3, [r1, #4]
	cmp r3, r0
	bne %8
	ldrh r1, [r1, #6]
	cmp r1, r0
	bne %8
	ldr r0, _0803F5F4
	ldr r1, _0803F5F8
	ldr r0, [r0]
	ldrb r1, [r1, r2]
	movs r2, #1
	bl sub_800C0EC
8
	movs r0, #0xff
	strb r0, [r4, #4]
	strb r0, [r4, #5]
9
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
