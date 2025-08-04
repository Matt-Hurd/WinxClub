	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003448
	IMPORT gUnknown_080506E8
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_800116A
	IMPORT sub_80138E2
	IMPORT sub_80139AC
	IMPORT sub_80147FA
	IMPORT GetNextGlobalFunction
	IMPORT sub_80184BC
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401E4
	IMPORT sub_804025C
	IMPORT sub_8040684

	thumb_func_start sub_801897C
sub_801897C
	push {lr}
	ldr r2, [r0]
	ldr r3, [r1]
	sub sp, #0xc
	subs r2, r2, r3
	str r2, [sp]
	ldr r2, [r0, #4]
	ldr r3, [r1, #4]
	subs r2, r2, r3
	str r2, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #8]
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp]
	asrs r1, r0, #5
	asrs r0, r2, #5
	bl sub_80184BC
	cmp r0, #0x7f
	ble %1
	movs r1, #0xff
	adds r1, #1
	subs r0, r1, r0
	NEGS r0, r0
1
	NEGS r0, r0
	bpl %2
	adds r0, #0xff
	adds r0, #1
2
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_80189BC
sub_80189BC
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, sp, #0x44
	ldm r5!, {r4, r5}
	adds r7, r0, #0
	bl GetNextGlobalFunction
	movs r6, #0
	ldr r2, _08018C34
	b %4
3
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
4
	ldrb r1, [r2, r6]
	cmp r1, r0
	bne %3
	adds r0, r6, #1
	bl sub_8040684
	ldr r1, [sp, #0x24]
	strh r0, [r1]
	adds r0, r6, #4
	bl sub_8040684
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	ldr r1, _08018C34
	lsls r0, r0, #1
	adds r1, #0x10
	ldrh r0, [r1, r0]
	ldr r2, [sp, #0x28]
	strh r0, [r2]
	ldr r0, [sp, #0x24]
	ldrh r0, [r0]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	ldr r1, [sp, #0x40]
	strh r0, [r1]
	ldr r0, _08018C38
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r7]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	bl sub_800065C
	ldr r1, [sp, #0x20]
	ldr r2, _08018C34
	ldrh r0, [r1]
	ldr r1, _08018C34
	add r3, sp, #0
	adds r1, #0x1a
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	adds r2, #0x24
	ldrh r0, [r2, r0]
	strh r1, [r3, #0xc]
	add r1, sp, #0xc
	strh r0, [r3, #0xe]
	ldr r0, [r7]
	bl sub_8040034
	ldr r0, [r7]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %5
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
5
	movs r1, #1
	ldr r0, [r7]
	bl sub_80401E4
	ldr r0, _08018C38
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r7, #4]
	ldr r1, [sp, #0x40]
	ldrh r1, [r1]
	bl sub_800065C
	ldr r0, [sp, #0x24]
	ldr r1, _08018C34
	ldrh r0, [r0]
	adds r1, #0x1a
	movs r2, #0xf0
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	add r3, sp, #0
	subs r1, r2, r1
	ldr r2, _08018C34
	adds r2, #0x24
	ldrh r0, [r2, r0]
	strh r1, [r3, #0xc]
	add r1, sp, #0xc
	strh r0, [r3, #0xe]
	ldr r0, [r7, #4]
	bl sub_8040034
	ldr r0, [r7, #4]
	movs r2, #1
	str r0, [sp, #0xc]
	adds r0, #0x28
	ldrh r1, [r0]
	lsls r2, r2, #0xc
	bics r1, r2
	orrs r1, r2
	strh r1, [r0]
	ldr r0, [sp, #0xc]
	bl sub_80003F4
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	lsls r0, r0, #0x1e
	bmi %6
	ldr r0, [sp, #0xc]
	bl sub_804025C
6
	ldr r0, [sp, #0xc]
	movs r2, #0x80
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	orrs r0, r2
	str r0, [r1]
	ldr r0, [r7, #4]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %7
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
7
	movs r1, #1
	ldr r0, [r7, #4]
	bl sub_80401E4
	ldr r1, _08018C3C
	movs r2, #8
	str r2, [sp, #0xc]
	str r2, [sp]
	movs r7, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	adds r3, r7, #0
	movs r2, #0
	adds r0, r4, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	ldr r1, _08018C34
	lsls r0, r6, #1
	adds r1, #6
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	cmp r5, #0
	beq %14
	movs r1, #0
	adds r0, r4, #0
	bl sub_80139AC
	movs r0, #0x38
	ldrb r0, [r0, r4]
	cmp r0, #1
	bne %11
	ldrb r0, [r4, #0x1c]
	lsls r1, r0, #0x1d
	bpl %8
	ldr r1, [r4, #0x14]
	ldrh r0, [r4, #0x20]
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b %10
8
	lsls r0, r0, #0x1e
	bpl %9
	ldr r1, [r4, #0x14]
	ldrh r0, [r4, #0x20]
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b %10
9
	movs r0, #0
10
	ldrh r1, [r4, #0x18]
	add r3, sp, #0
	adds r1, r1, r0
	strh r1, [r3, #0x18]
	ldr r2, [r4, #0x14]
	ldrh r1, [r4, #0x18]
	ldrh r2, [r2, #4]
	adds r1, r1, r2
	adds r0, r1, r0
	strh r0, [r3, #0x14]
	b %12
11
	ldrh r0, [r4, #0x18]
	add r3, sp, #0
	strh r0, [r3, #0x18]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x20]
	adds r0, r0, r1
	strh r0, [r3, #0x14]
12
	ldrh r0, [r4, #0x1a]
	add r3, sp, #0
	strh r0, [r3, #0x10]
	ldr r0, _08018C38
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08018C40
	str r0, [r5]
	bl sub_800065C
	add r3, sp, #0
	ldrh r0, [r3, #0x18]
	ldrh r1, [r3, #0x10]
	subs r0, #0xa
	strh r0, [r3, #0xc]
	adds r1, #3
	strh r1, [r3, #0xe]
	ldr r0, [r5]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5]
	movs r4, #3
	ldrh r1, [r0, #0x2a]
	lsls r4, r4, #0xa
	movs r2, #0
	bics r1, r4
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r6, #4
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %13
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
13
	movs r1, #1
	ldr r0, [r5]
	bl sub_80401E4
	ldr r0, _08018C38
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08018C44
	str r0, [r5, #4]
	bl sub_800065C
	add r3, sp, #0
	ldrh r0, [r3, #0x14]
	ldrh r1, [r3, #0x10]
	adds r0, #2
	strh r0, [r3, #0xc]
	adds r1, #3
	strh r1, [r3, #0xe]
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, #4]
	ldrh r1, [r0, #0x2a]
	bics r1, r4
	b %15
14
	b %17
15
	orrs r1, r7
	strh r1, [r0, #0x2a]
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %16
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
16
	movs r1, #1
	ldr r0, [r5, #4]
	bl sub_80401E4
17
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08018C34 DCDU gUnknown_080506E8
_08018C38 DCDU gUnknown_03003448
_08018C3C DCDU 0x0000FFFF
_08018C40 DCDU 0x00000C83
_08018C44 DCDU 0x00000C85
	END
