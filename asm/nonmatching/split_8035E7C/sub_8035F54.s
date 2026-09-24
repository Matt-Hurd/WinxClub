	thumb_func_start sub_8035F54
sub_8035F54
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r0, [r5, #6]
	ldr r6, [r4, #0x2c]
	cmp r0, #0
	beq %6
	ldr r0, [r6]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %9
6
	ldrh r0, [r5, #4]
	movs r1, #0
	mvns r1, r1
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #4]
	strh r0, [r4, #0x1a]
	ldr r0, _08036148
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	cmp r2, #0
	beq %7
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
7
	lsls r0, r1, #0x10
	ldrh r1, [r5, #4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %8
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
8
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %9
	bl sub_8000914
9
	pop {r4, r5, r6}
	pop {r3}
	bx r3

