	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0805107A
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_800116A
	IMPORT sub_802E5D2
	IMPORT sub_803F2CC
	IMPORT sub_803FF24
	IMPORT sub_80401E4

	thumb_func_start sub_8025214

sub_8025214
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl %11
	ldr r0, [r4, #0x34]
	ldr r2, _08025390
	lsls r1, r0, #0x18
	ldr r0, _08025390
	lsrs r1, r1, #0x18
	ldrsb r0, [r0, r1]
	adds r2, #4
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r4, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #4]
	ldr r5, _08025390
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r0, #5]
	subs r5, #8
	ldrb r2, [r5, r2]
	cmp r3, r2
	beq %6
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x18
	adds r3, #1
	b %7
6
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x18
	subs r3, #1
7
	cmp r3, #0
	beq %10
	cmp r2, #0
	beq %8
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b %9
8
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
9
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %10
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
10
	ldr r0, [r4, #0x34]
	ldr r2, _08025390
	lsls r1, r0, #0x18
	ldr r0, _08025390
	lsrs r1, r1, #0x18
	adds r0, #8
	ldrsb r0, [r0, r1]
	adds r2, #0xc
	ldrsb r1, [r2, r1]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0802539C
	lsls r7, r1, #0x10
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080253A0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #4]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _080253A4
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	b %12
11
	b %16
12
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	str r0, [sp]
	adds r1, r1, r7
	str r1, [sp, #4]
	ldr r0, [r4, #0x3c]
	mov r1, sp
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F2CC
	ldr r1, [r4, #0x34]
	ldr r3, _08025390
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #0x3c]
	subs r3, #4
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq %13
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b %14
13
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
14
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %15
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
15
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
16
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08025390 DCDU gUnknown_0805107A
_0802539C DCDU gUnknown_03003EB8
_080253A0 DCDU gUnknown_03003EA0
_080253A4 DCDU 0x0010BE20

	END
