	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_800BCE4

sub_800BCE4
	push {r4, r5, r6, r7}
	ldr r5, [sp, #0x10]
	movs r0, #0
	cmp r5, #0
	beq %6
	adds r0, r3, #0
6
	cmp r3, #8
	bhs %15
7
	lsrs r6, r2, #1
	adds r4, r6, r1
	lsls r2, r2, #0x1f
	ldrb r2, [r4]
	bge %8
	movs r7, #0x38
	bics r2, r7
	lsls r7, r0, #0x1d
	lsrs r7, r7, #0x1a
	orrs r2, r7
	movs r7, #0x80
	bics r2, r7
	lsls r5, r5, #7
	orrs r2, r5
	strb r2, [r4]
	b %9
8
	lsrs r2, r2, #3
	lsls r7, r0, #0x1d
	lsrs r7, r7, #0x1d
	lsls r2, r2, #3
	orrs r2, r7
	movs r7, #0x40
	bics r2, r7
	lsls r5, r5, #6
	orrs r2, r5
	strb r2, [r4]
9
	ldrb r4, [r4]
	adds r2, r6, #0
	lsls r6, r4, #0x1a
	lsls r5, r4, #0x1d
	lsrs r5, r5, #0x1d
	lsrs r6, r6, #0x1d
	cmp r5, r6
	bne %10
	lsls r5, r4, #0x19
	bpl %12
	lsrs r5, r4, #7
	beq %12
	adds r0, #1
	b %12
10
	cmp r5, r6
	bls %11
	adds r0, r5, #0
	b %12
11
	adds r0, r6, #0
12
	lsls r5, r4, #0x19
	bpl %13
	lsrs r4, r4, #7
	beq %13
	movs r5, #1
	b %14
13
	movs r5, #0
14
	adds r3, #1
	cmp r3, #8
	blo %7
15
	ldrb r2, [r1]
	movs r3, #0x10
	lsls r0, r0, #0x1c
	bics r2, r3
	lsls r3, r5, #4
	orrs r2, r3
	lsrs r2, r2, #4
	lsls r2, r2, #4
	lsrs r0, r0, #0x1c
	orrs r0, r2
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	bx lr

	END
