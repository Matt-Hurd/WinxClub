	thumb_func_start sub_800E53C
sub_800E53C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0800E920
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #8]
	ldr r6, _0800E924
	ldr r0, [r6, #0x30]
	bl sub_80050FA
	adds r0, r6, #0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %4
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	str r4, [r6, #0x18]
4
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq %5
	cmp r5, #0
	bne %5
	movs r1, #1
	bl sub_802693A
	str r4, [r6, #0x24]
5
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq %6
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	str r4, [r6, #0x2c]
6
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %8
	cmp r5, #0
	bne %8
	movs r1, #0
	bl sub_800B782
	movs r1, #0
	ldr r0, [r6, #0x28]
	bl sub_800B6FA
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %7
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
7
	str r4, [r6, #0x28]
8
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq %10
	movs r0, #1
	bl sub_8013DEA
	bl sub_8014DD4
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq %9
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
9
	str r4, [r6, #0x10]
10
	movs r0, #0
	bl sub_80050FA
	movs r0, #1
	strh r0, [r7, #8]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

