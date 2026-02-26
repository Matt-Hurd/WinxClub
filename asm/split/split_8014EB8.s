	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_sdiv

	thumb_func_start sub_8014EB8

sub_8014EB8
	movs r3, #0
	NEGS r0, r2
	cmp r1, #0
	push {r4, r5}
	bge %2
	NEGS r1, r1
	cmp r2, #0
	ble %1
	movs r3, #1
	b %3
1
	adds r2, r0, #0
	b %3
2
	cmp r2, #0
	bge %3
	adds r2, r0, #0
	cmp r1, #0
	ble %3
	movs r3, #1
3
	asrs r0, r1, #0x10
	asrs r4, r2, #0x10
	adds r5, r0, #0
	lsls r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	muls r5, r4
	muls r4, r1
	muls r1, r2
	muls r0, r2
	lsls r2, r5, #0x10
	adds r0, r2, r0
	adds r0, r0, r4
	asrs r1, r1, #0x10
	adds r0, r0, r1
	cmp r3, #0
	beq %4
	NEGS r0, r0
4
	pop {r4, r5}
	bx lr
5
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x28]
	adds r4, r0, #0
	ldr r0, [r0, #0x20]
	ldr r3, [r4, #0x24]
	subs r2, r1, r0
	ldr r1, [r4, #0x2c]
	adds r6, r2, #0
	subs r7, r1, r3
	ldr r1, [r4, #0x30]
	sub sp, #0xc
	subs r1, r1, r0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x2c]
	subs r2, r1, r0
	ldr r1, [r4, #0x34]
	subs r1, r1, r0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r5, r0
	adds r2, r6, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8014EB8
	str r0, [sp, #4]
	adds r2, r7, #0
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xc0
	str r1, [sp, #8]
	cmp r5, #0
	ble %7
	cmp r5, r0
	bge %7
	lsls r1, r5, #4
	asrs r0, r0, #6
	bl __16__rt_sdiv
	adds r2, r0, #0
	muls r2, r6
	ldr r1, [r4, #0x20]
	asrs r2, r2, #0xa
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	muls r0, r7
	asrs r0, r0, #0xa
	adds r0, r2, r0
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	ldr r2, [r4, #0x34]
	subs r5, r0, r2
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r6, r0, #0
	adds r2, r5, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r1, [sp, #8]
	adds r5, r6, r0
	ldr r1, [r1, #0x20]
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	cmp r5, r0
	bgt %9
	movs r0, #1
6
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
7
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	subs r1, r0, r1
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0x34]
	subs r5, r0, r2
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r6, r0, #0
	adds r2, r5, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r6, r0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x30]
	subs r1, r0, r1
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x34]
	subs r6, r0, r2
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r7, r0, #0
	adds r2, r6, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r0, r7, r0
	cmp r0, r5
	bge %8
	adds r5, r0, #0
8
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x20]
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	cmp r5, r0
	bge %9
	movs r0, #1
	b %6
9
	movs r0, #0
	b %6

	END
