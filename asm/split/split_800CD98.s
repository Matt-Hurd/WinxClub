	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_memset
	IMPORT sub_803D984

	thumb_func_start sub_800CD98

sub_800CD98
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r1, #0x10]
	adds r6, r3, #0
	adds r5, r2, #0
	adds r4, r1, #0
	cmp r0, #0
	beq %5
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq %5
	movs r7, #0xff
	adds r7, #1
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D984
	adds r2, r7, #0
	movs r1, #0xff
	str r0, [r5]
	bl __16__rt_memset
	ldrb r1, [r4, #0x10]
	movs r0, #0
	cmp r1, #0
	bls %2
	movs r3, #0
1
	ldr r2, [r4, #0x14]
	ldr r1, [r5]
	ldrb r2, [r2, r0]
	adds r0, #1
	strb r3, [r1, r2]
	ldrb r1, [r4, #0x10]
	cmp r1, r0
	bhi %1
2
	movs r1, #0
	movs r0, #0
3
	ldr r2, [r5]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq %4
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
4
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo %3
5
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq %6
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne %7
6
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq %12
7
	movs r7, #0xff
	adds r7, #1
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D984
	adds r2, r7, #0
	movs r1, #0xff
	str r0, [r6]
	bl __16__rt_memset
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne %12
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	bls %9
	movs r1, #0
8
	ldr r3, [r4, #0x1c]
	ldr r2, [r6]
	ldrb r3, [r3, r0]
	adds r0, #1
	strb r1, [r2, r3]
	ldrb r2, [r4, #0x18]
	cmp r2, r0
	bhi %8
9
	movs r1, #0
	movs r0, #0
10
	ldr r2, [r6]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq %11
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r4, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r4, [r2, r0]
11
	adds r0, #1
	cmp r0, r7
	blo %10
12
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
