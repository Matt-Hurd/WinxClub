	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80103EC

	thumb_func_start sub_8010AB4

sub_8010AB4
	push {r4, r5, r6, lr}
	ldr r4, [r0, #0x74]
	cmp r4, #0
	beq %8
	adds r3, r1, #1
	bne %9
8
	movs r2, #0
	mvns r2, r2
	ldr r1, [r0, #4]
	str r2, [r0, #0x6c]
	movs r2, #0
	str r2, [r0, #0x68]
	str r2, [r0, #0x64]
	ldr r2, [r0, #0x10]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [r0, #0x5c]
	b %13
9
	cmp r4, r1
	bgt %10
	subs r1, r4, #1
10
	str r1, [r0, #0x6c]
	lsls r3, r1, #1
	adds r3, r3, r1
	ldr r6, [r0, #0x70]
	lsls r3, r3, #2
	adds r5, r1, #0
	ldr r1, [r6, r3]
	adds r3, r6, r3
	ldr r6, [r3, #4]
	lsls r6, r6, #0xe
	lsrs r6, r6, #0xe
	str r6, [r0, #0x64]
	ldr r6, [r3, #4]
	lsls r6, r6, #0xe
	lsrs r6, r6, #0xe
	str r6, [r0, #0x68]
	cmp r2, #0
	beq %12
	subs r4, #1
	cmp r4, r5
	bne %11
	ldr r2, [r3, #4]
	ldr r3, [r0, #0x10]
	lsrs r2, r2, #0x12
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r2, r3, r2
	str r2, [r0, #0x5c]
	b %13
11
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #4]
	lsrs r2, r2, #0x12
	lsrs r3, r3, #0x12
	subs r2, r2, r3
	str r2, [r0, #0x5c]
	b %13
12
	ldr r2, [r3, #4]
	ldr r3, [r0, #0x10]
	lsrs r2, r2, #0x12
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r2, r3, r2
	str r2, [r0, #0x5c]
13
	bl sub_80103EC
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	END
