	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__10
	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_080414B8
	IMPORT rand
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8040528
	IMPORT sub_8040594

	thumb_func_start Bird__10

Bird__10
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x28]
	sub sp, #0xc
	adds r1, r0, #0
	beq %5
	movs r0, #0x5a
	asrs r1, r1, #0x10
	cmp r1, #0x5a
	bge %1
	adds r0, r1, #0
1
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	adds r6, r4, #0
	add r3, sp, #0
	strh r0, [r3, #4]
	adds r6, #0xa0
	ldrh r0, [r6, #0x10]
	ldr r2, _080301D0
	lsls r1, r0, #0x10
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r2, r0]
	lsls r0, r0, #2
	bl __16_ll_mulss
	add r2, pc, #0x17C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [sp, #8]
	movs r3, #0x12
	ldrsh r0, [r6, r3]
	ldr r7, [r5, #0x28]
	muls r0, r7
	bl sub_8040528
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #0x2c]
	adds r1, r7, r0
	str r1, [r5, #0x28]
	movs r1, #3
	lsls r1, r1, #0x10
	cmp r0, r1
	bge %2
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r5, #0x2c]
2
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrb r1, [r0, #5]
	cmp r1, #0x20
	beq %3
	ldrh r1, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r1, r3
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r3, #0x20
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r3, r1, #0x16
	bmi %3
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
3
	ldr r0, [r4, #0x58]
	cmp r0, #0
	blt %4
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	blt %4
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq %8
4
	str r2, [r4, #0x58]
	str r2, [r4, #0x5c]
	str r2, [r5, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r3, [r1, #0x2c]
	ldr r6, [r1, #0x30]
	subs r3, r2, r3
	subs r2, r2, r6
	ldr r6, [r1, #0x34]
	adds r0, r1, #0
	adds r6, r6, r3
	str r6, [r1, #0x34]
	ldr r6, [r1, #0x38]
	adds r0, #0x34
	adds r6, r6, r2
	str r6, [r1, #0x38]
	ldr r6, [r0, #8]
	adds r3, r6, r3
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r2, r3, r2
	str r2, [r0, #0xc]
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	str r2, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r0, [r1]
	b %6
5
	b %7
6
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	b %8
7
	adds r0, r4, #0
	bl DefaultScriptGroups__10
8
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne %9
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r1, r0, #0x1f
	beq %9
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %9
	bl rand
	lsls r0, r0, #0x19
	bne %9
	ldr r0, _080301DC
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl __16_ll_shift_l
	add r2, pc, #0x88
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r3, #0x20
	orrs r0, r3
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	bl sub_8000914
9
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_080301D0 DCDU gUnknown_080414B8
_080301DC DCDU gUnknown_03003EA0

	END
