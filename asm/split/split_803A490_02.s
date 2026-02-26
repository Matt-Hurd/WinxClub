	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start ScannerScriptGroup__38

ScannerScriptGroup__38
	adds r2, r0, #0
	adds r2, #0x80
	push {r4, r5, r6}
	ldr r1, [r2, #0x2c]
	lsls r1, r1, #5
	lsrs r1, r1, #0x17
	cmp r1, #0x38
	beq %11
	ldr r1, [r0, #0x30]
	movs r3, #3
	ldrh r4, [r1, #0x2a]
	lsls r3, r3, #0xa
	movs r5, #0x7f
	bics r4, r3
	movs r3, #1
	lsls r3, r3, #0xa
	orrs r4, r3
	strh r4, [r1, #0x2a]
	strb r5, [r1, #5]
	ldr r5, [r1]
	movs r4, #0x80
	lsls r6, r5, #0x16
	cmp r6, #0
	blt %9
	orrs r5, r4
	str r5, [r1]
9
	ldr r0, [r0, #0x2c]
	movs r1, #3
	ldrh r5, [r0, #0x2a]
	lsls r1, r1, #0xa
	bics r5, r1
	orrs r3, r5
	strh r3, [r0, #0x2a]
	movs r1, #0x60
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r3, r1, #0x16
	bmi %10
	orrs r1, r4
	str r1, [r0]
10
	movs r1, #1
	ldr r0, [r2, #0xc]
	lsls r1, r1, #0xe
	bics r0, r1
	str r0, [r2, #0xc]
11
	pop {r4, r5, r6}
	bx lr

	END
