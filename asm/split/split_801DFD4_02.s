	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_800116A
	IMPORT sub_803F170
	IMPORT sub_803F2CC
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	thumb_func_start DefaultScriptGroups__20

DefaultScriptGroups__20
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x50]
	adds r7, r4, #0
	adds r5, r4, #0
	adds r5, #0x80
	adds r7, #0x58
	lsls r0, r0, #2
	cmp r0, #0
	sub sp, #0xc
	bge %14
	ldr r0, _0801E2C8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x50]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x50]
	ldr r6, [r4, #0x2c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r0, r0, #0x1a
	str r0, [sp, #8]
	ldr r0, _0801E2C4
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	ldr r3, _0801E2CC
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #4]
	movs r2, #2
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [sp, #8]
	strb r0, [r6, #3]
	ldr r0, [sp, #8]
	muls r0, r3
	str r0, [r6, #8]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x12
	bpl %9
	movs r1, #1
	ldr r0, [r4, #0x2c]
	bl sub_803F170
9
	ldr r0, [r4, #0x50]
	lsls r0, r0, #4
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
	adds r1, r7, #0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	ldr r0, [r5, #0x14]
	movs r6, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1e
	lsls r6, r6, #0xe
	cmp r0, #1
	bne %10
	movs r1, #0xbf
	ldr r0, [r4, #0x2c]
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b %12
10
	cmp r0, #2
	ldr r0, [r4, #0x2c]
	bne %11
	movs r1, #0x7f
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b %12
11
	movs r1, #0x82
	bl sub_80401C0
12
	ldr r0, [r4, #0x50]
	lsls r0, r0, #7
	bpl %13
	ldr r0, [r4, #0x2c]
	bl sub_8000914
13
	ldr r0, [r4, #0x50]
	lsls r0, r0, #6
	bpl %14
	movs r1, #1
	ldr r0, [r4, #0x2c]
	bl sub_80401E4
14
	ldr r0, [r4, #0x54]
	lsls r0, r0, #2
	bpl %16
	ldr r0, _0801E2C8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x54]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x13
	bpl %15
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_803F170
15
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r1, #0xbe
	bl sub_80401C0
	adds r1, r7, #0
	ldr r0, [r4, #0x30]
	bl sub_803FF24
	ldr r0, [r4, #0x54]
	lsls r0, r0, #6
	bpl %16
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_80401E4
16
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl __call_via_r1
	movs r5, #0
17
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %18
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
18
	adds r5, #1
	cmp r5, #5
	blo %17
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_0801E2C4 DCDU gUnknown_03003EA0
_0801E2C8 DCDU gUnknown_03003EB8
_0801E2CC DCDU 0x0010BE20

	END
