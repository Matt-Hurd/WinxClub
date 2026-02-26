	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT gUnknown_03003454
	IMPORT sub_80179BE
	IMPORT sub_80187A0
	IMPORT sub_803F0A8

	thumb_func_start ScannerScriptGroup__60

ScannerScriptGroup__60
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	adds r6, #0x80
	ldr r0, [r6, #0x2c]
	adds r5, r4, #0
	lsls r0, r0, #5
	lsrs r1, r0, #0x17
	adds r5, #0xc0
	ldr r0, [r5, #0x30]
	cmp r1, #0x38
	bne %5
	lsls r1, r0, #0xf
	bmi %5
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	adds r1, r0, r4
	adds r1, #0xe0
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	cmp r0, #5
	bhs %4
	movs r0, #0
1
	lsls r1, r0, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne %2
	adds r0, #1
	cmp r0, #5
	blo %1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl __call_via_r1
2
	ldr r1, [r5, #0x30]
	movs r2, #0x20
	lsls r0, r1, #0x1a
	asrs r0, r0, #0x1f
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1a
	bics r1, r2
	orrs r0, r1
	str r0, [r5, #0x30]
3
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
4
	ldr r0, [r6, #0x1c]
	cmp r0, #4
	bne %3
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #8
	lsrs r2, r0, #0x18
	beq %3
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x18
	movs r2, #4
	bl sub_803F0A8
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0803A8FC
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b %3
5
	ldr r7, _0803A900
	adds r1, r0, #0
	subs r0, #0x40
	mvns r2, r7
	ands r0, r2
	ands r1, r7
	orrs r0, r1
	str r0, [r5, #0x30]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x17
	bne %8
6
	lsls r1, r0, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne %7
	adds r0, #1
	cmp r0, #5
	blo %6
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl __call_via_r1
7
	ldr r0, [r5, #0x30]
	movs r1, #0x2d
	lsls r1, r1, #8
	ands r0, r7
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b %3
8
	ldr r0, [r6, #0x1c]
	cmp r0, #4
	bne %3
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #8
	lsrs r2, r0, #0x18
	beq %3
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x18
	movs r2, #0x10
	bl sub_803F0A8
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0803A8FC
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b %3

	ALIGN
_0803A8FC DCDU gUnknown_03003454
_0803A900 DCDU 0xFFFF803F

	END
