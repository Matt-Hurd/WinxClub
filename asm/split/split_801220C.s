	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003530
	IMPORT sub_801234C
	IMPORT sub_80123B4

	thumb_func_start sub_801220C

sub_801220C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	bne %14
	ldr r0, [r4, #8]
	bl sub_801234C
	cmp r0, #0
	beq %18
14
	ldr r5, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, _0801232C
	str r1, [r0, #0xc]
	str r4, [r0, #0x10]
	lsls r6, r5, #1
	subs r2, #0x18
	ldr r1, [r2]
	adds r6, r6, r5
	lsls r6, r6, #2
	ldr r3, [r1, r6]
	adds r5, r3, r1
	str r5, [r0, #8]
	movs r3, #0
	str r3, [r0, #0x40]
	str r5, [r0, #0x48]
	adds r1, r1, r6
	ldr r6, [r1, #4]
	adds r7, r6, r5
	str r7, [r0, #0x3c]
	ldr r6, [r4, #0xc]
	cmp r6, #0
	bge %15
	str r3, [r0, #0x30]
	b %16
15
	subs r5, r7, r5
	subs r5, r5, r6
	str r5, [r0, #0x30]
16
	ldr r5, [r4, #0x18]
	cmp r5, #0
	bne %17
	ldr r5, [r1, #8]
17
	ldr r1, _0801232C
	str r5, [r0, #0x14]
	subs r1, #0x10
	ldrh r1, [r1, #0x1a]
	muls r5, r1
	lsrs r1, r5, #8
	str r1, [r0, #0x44]
	ldr r1, [r4, #0x10]
	str r1, [r0, #0x18]
	ldr r1, [r4, #0x14]
	str r1, [r0, #0x1c]
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #4]
	muls r1, r2
	lsrs r1, r1, #8
	str r1, [r0, #0x38]
	str r3, [r0, #4]
	str r3, [r4]
18
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0801232C DCDU gUnknown_03003530

	END
