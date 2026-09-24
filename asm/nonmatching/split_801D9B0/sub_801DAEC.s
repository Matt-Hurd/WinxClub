	thumb_func_start sub_801DAEC
sub_801DAEC
	push {r3, r4, r5, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r1, [r5, #6]
	ldr r0, [r0, #0x2c]
	cmp r1, #0
	beq %21
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %23
21
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x18]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1a]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1c]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1e]
	bl sub_803F6B4
	ldrh r1, [r5, #4]
	cmp r0, r1
	beq %22
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
22
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %23
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
23
	pop {r3, r4, r5}
	pop {r3}
	bx r3

