	non_word_aligned_thumb_func_start ScannerScriptGroup__20
ScannerScriptGroup__20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl HostileCreature__20
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r1, #0x2c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	cmp r0, #0x38
	beq %69
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r3, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r5, #0x7f
	bics r3, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r3, r2
	strh r3, [r0, #0x2a]
	strb r5, [r0, #5]
	ldr r5, [r0]
	movs r3, #0x80
	lsls r6, r5, #0x16
	cmp r6, #0
	blt %66
	orrs r5, r3
	str r5, [r0]
66
	ldr r0, [r4, #0x2c]
	movs r5, #3
	ldrh r6, [r0, #0x2a]
	lsls r5, r5, #0xa
	bics r6, r5
	orrs r2, r6
	strh r2, [r0, #0x2a]
	movs r5, #0x60
	strb r5, [r0, #5]
	ldr r2, [r0]
	lsls r5, r2, #0x16
	bmi %67
	orrs r2, r3
	str r2, [r0]
67
	movs r2, #1
	ldr r0, [r1, #0xc]
	lsls r2, r2, #0xc
	bics r0, r2
	str r0, [r1, #0xc]
	ldr r5, [r4, #0x30]
	movs r6, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl %68
	ldr r0, _0803AB7C
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
68
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r6
	str r1, [r0]
69
	pop {r4, r5, r6}
	pop {r3}
	bx r3

