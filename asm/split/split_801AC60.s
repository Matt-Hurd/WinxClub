	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT sub_80138E2
	IMPORT sub_8013946
	IMPORT sub_8028C2E

	thumb_func_start sub_801AC60

sub_801AC60
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x27
	lsls r0, r0, #4
	adds r4, r5, r0
	ldrb r0, [r4, #0xc]
	adds r7, r1, #0
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xc]
	bpl %2
	movs r0, #0
	strb r0, [r4, #0xc]
2
	adds r6, r5, #0
	adds r6, #0xff
	movs r3, #0xc
	ldrsb r0, [r4, r3]
	adds r6, #0x81
	ldrb r2, [r6]
	cmp r0, r2
	blt %3
	ldrb r0, [r6]
	strb r0, [r4, #0xc]
3
	movs r3, #0xc
	ldrsb r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x8d
	cmp r1, r2
	bne %4
	movs r3, #0xff
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x33
	bl sub_80138E2
	b %5
4
	adds r2, r1, #1
	str r2, [sp]
	movs r2, #0
	movs r1, #0xff
	movs r3, #0xff
	adds r1, #0x34
	bl sub_8013946
5
	movs r3, #0xc
	ldrsb r0, [r4, r3]
	movs r2, #0x81
	lsls r2, r2, #2
	ldrb r1, [r6]
	adds r4, r5, r2
	movs r2, #1
	cmp r0, r1
	bne %6
	lsls r1, r0, #1
	adds r1, #0xe6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #0x1b
	lsrs r3, r3, #0x1b
	lsls r2, r3
	cmp r1, #0
	beq %6
	lsrs r1, r1, #5
	ldr r3, _0801AEA4
	lsls r1, r1, #2
	ldr r1, [r3, r1]
	ands r1, r2
	beq %7
6
	adds r0, #0xff
	adds r0, #0x36
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	b %8
7
	movs r1, #0xff
	adds r1, #0x35
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
8
	cmp r7, #0
	beq %9
	ldr r0, _0801AEA8
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
9
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0801AEA4 DCDU gUnknown_03003478
_0801AEA8 DCDU gUnknown_0300345C

	END
