	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_80147FA

sub_80147FA
	adds r2, r1, #0
	adds r1, r0, #0
	adds r1, #0x60
	push {r4, r5, r6, r7}
	strb r2, [r1, #0xc]
	ldrb r2, [r1, #0xe]
	movs r4, #0
	cmp r2, #0
	bls %11
7
	ldrb r3, [r1, #0xf]
	movs r2, #0
	cmp r3, #0
	bls %10
8
	ldrb r3, [r1, #0xf]
	ldr r5, [r0, #0x54]
	muls r3, r4
	adds r3, r3, r2
	lsls r3, r3, #2
	ldr r5, [r5, r3]
	ldrb r6, [r5, #5]
	ldrb r3, [r1, #0xc]
	cmp r6, r3
	beq %9
	ldrh r6, [r5, #0x2a]
	movs r7, #3
	lsls r7, r7, #0xa
	bics r6, r7
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	orrs r6, r7
	strh r6, [r5, #0x2a]
	strb r3, [r5, #5]
	ldr r3, [r5]
	lsls r6, r3, #0x16
	bmi %9
	movs r6, #0x80
	orrs r3, r6
	str r3, [r5]
9
	adds r2, #1
	ldrb r3, [r1, #0xf]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r3, r2
	bhi %8
10
	adds r4, #1
	ldrb r2, [r1, #0xe]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r2, r4
	bhi %7
11
	pop {r4, r5, r6, r7}
	bx lr

	END
