	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT sub_80401E4

	thumb_func_start sub_801F4F0

sub_801F4F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldr r1, [r0]
	ldr r2, [r4, #0x60]
	adds r5, r4, #0
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, [r0, #4]
	ldr r2, [r4, #0x64]
	adds r5, #0x80
	adds r1, r1, r2
	str r1, [r0, #4]
	movs r1, #1
	ldr r3, [r5, #0x14]
	lsls r1, r1, #0x11
	bics r3, r1
	str r3, [r5, #0x14]
	ldrh r0, [r4, #0x26]
	movs r2, #0xf
	lsls r2, r2, #0x18
	cmp r0, #0
	beq %14
	ldr r6, [r4, #0x5c]
	asrs r6, r6, #0x10
	cmp r6, r0
	bge %14
	lsls r0, r0, #0x10
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x7c]
	lsls r6, r1, #7
	bics r0, r2
	adds r0, r0, r6
	str r0, [r4, #0x7c]
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r5, #0x14]
14
	ldrh r0, [r4, #0x22]
	cmp r0, #0
	beq %15
	ldr r3, [r4, #0x5c]
	asrs r3, r3, #0x10
	cmp r3, r0
	ble %15
	lsls r0, r0, #0x10
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r3, r3, #0x18
	bics r0, r2
	adds r0, r0, r3
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x14]
	orrs r0, r1
	str r0, [r5, #0x14]
15
	ldrh r0, [r4, #0x24]
	cmp r0, #0
	beq %16
	ldr r3, [r4, #0x58]
	asrs r3, r3, #0x10
	cmp r3, r0
	bge %16
	lsls r0, r0, #0x10
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x7c]
	bics r0, r2
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x14]
	orrs r0, r1
	str r0, [r5, #0x14]
16
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	beq %17
	ldr r3, [r4, #0x58]
	asrs r3, r3, #0x10
	cmp r3, r0
	ble %17
	lsls r0, r0, #0x10
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x7c]
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r0, r0, r2
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x14]
	orrs r0, r1
	str r0, [r5, #0x14]
17
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r5, #0xc]
	lsls r1, r0, #1
	lsrs r1, r1, #0x14
	beq %18
	ldr r2, _0801F638
	adds r1, r0, #0
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x13
	subs r0, r0, r2
	ldr r2, _0801F63C
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	ldr r0, [r5, #0x10]
	bne %19
	lsrs r0, r0, #5
	lsls r0, r0, #5
	adds r0, #5
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %18
	movs r1, #1
	bl sub_80401E4
18
	pop {r4, r5, r6}
	pop {r3}
	bx r3
19
	lsrs r1, r0, #5
	adds r0, #0x1f
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #0x10]
	lsls r1, r0, #0x1b
	bne %18
	lsrs r0, r0, #5
	lsls r0, r0, #5
	adds r0, #5
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %20
	movs r1, #1
	bl sub_80401E4
	b %18
20
	movs r1, #0
	bl sub_80401E4
	b %18
	ALIGN

	ALIGN
_0801F638 DCDU 0x8007FFFF
_0801F63C DCDU 0x7FF80000

	END
