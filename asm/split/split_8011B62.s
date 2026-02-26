	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT Div
	IMPORT __call_via_r2
	IMPORT gUnknown_03003520
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT sub_80115EC
	IMPORT sub_80116D4
	IMPORT sub_801197C
	IMPORT sub_8040C38

	non_word_aligned_thumb_func_start sub_8011B62

sub_8011B62
	push {r4, lr}
	cmp r0, #8
	bhs %22
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
14
	DCB 0x03
15
	DCB 0x08
16
	DCB 0x0D
17
	DCB 0x05
18
	DCB 0x24
19
	DCB 0x05
20
	DCB 0x32
21
	DCB 0x3F
loc_8011b78
	ldr r0, _08011D30
	strh r1, [r0, #0xc]
22
	pop {r4}
	pop {r3}
	bx r3
loc_8011b82
	adds r0, r1, #0
	ldr r1, _08011D30
	adds r0, #0xff
	strb r0, [r1, #7]
	b %22
loc_8011b8c
	ldr r0, _08011D18
	adds r0, #0x10
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq %24
	movs r3, #0x4c
	muls r0, r3
	ldr r3, _08011D34
	adds r0, r0, r3
	movs r2, #1
23
	subs r0, #0x4c
	strh r2, [r0, #4]
	cmp r0, r3
	bhi %23
24
	lsrs r0, r1, #0x10
	ldr r2, _08011D30
	adds r0, #0xff
	strb r0, [r2, #7]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040C38
	b %22
loc_8011bba
	cmp r1, #0xff
	bls %25
	movs r1, #0xff
25
	ldr r0, _08011D38
	ldr r4, _08011D30
	muls r0, r1
	strb r1, [r4, #0xb]
	lsrs r1, r0, #0x17
	ldr r0, _08011D18
	ldrh r0, [r0, #0x18]
	bl Div
	strh r0, [r4, #0xe]
	b %22
loc_8011bd6
	ldr r0, _08011D34
	cmp r1, #0
	beq %22
	movs r3, #2
26
	lsls r2, r1, #0x1f
	bpl %27
	ldrh r2, [r0, #4]
	orrs r2, r3
	strh r2, [r0, #4]
27
	adds r0, #0x4c
	lsrs r1, r1, #1
	bne %26
	b %22
loc_8011bf0
	ldr r0, _08011D34
	cmp r1, #0
	beq %22
	movs r3, #2
28
	lsls r2, r1, #0x1f
	bpl %29
	ldrh r2, [r0, #4]
	bics r2, r3
	strh r2, [r0, #4]
29
	adds r0, #0x4c
	lsrs r1, r1, #1
	bne %28
	b %22
30
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08011D30
	adds r5, r1, #0
	lsls r1, r1, #0x17
	movs r7, #0
	adds r0, #0x68
	cmp r1, #0
	blt %31
	strb r7, [r0, #7]
	str r4, [r0]
31
	ldr r6, _08011D30
	ldrh r1, [r6]
	lsls r1, r1, #0x1f
	bpl %33
	lsls r1, r5, #0x17
	bpl %32
	ldrh r1, [r6, #0xc]
	strh r1, [r0, #4]
	ldrb r1, [r6, #7]
	strb r1, [r0, #6]
	ldrb r1, [r6, #0xb]
	strb r1, [r0, #7]
	ldrb r1, [r6, #4]
	strb r1, [r0, #8]
	ldrb r1, [r6, #0xa]
	strb r1, [r0, #9]
32
	bl sub_80116D4
33
	ldr r6, _08011D30
	movs r0, #0
	strb r7, [r6, #3]
	strh r0, [r6, #0x10]
	strb r0, [r6, #0xa]
	ldrb r0, [r4, #5]
	ldr r3, _08011D38
	strb r0, [r6, #0xb]
	ldrb r0, [r4, #4]
	strb r0, [r6, #4]
	ldrb r0, [r4]
	strb r0, [r6, #2]
	ldrb r0, [r4, #5]
	muls r0, r3
	lsrs r1, r0, #0x17
	ldr r0, _08011D18
	ldrh r0, [r0, #0x18]
	bl Div
	strh r0, [r6, #0xe]
	movs r0, #0xff
	strb r0, [r6, #7]
	adds r0, r4, #0
	adds r0, #8
	str r0, [r6, #0x18]
	ldrb r0, [r4, #1]
	adds r0, #0xff
	strb r0, [r6, #8]
	ldrb r0, [r4, #2]
	strb r0, [r6, #9]
	ldrb r0, [r4]
	lsls r3, r0, #2
	adds r0, r3, r0
	adds r0, #7
	lsrs r0, r0, #3
	strb r0, [r6, #6]
	ldr r0, [r6, #0x24]
	ldr r6, _08011D18
	subs r6, #0x24
	cmp r0, #0
	beq %34
	adds r1, r0, #0
	movs r0, #2
	ldr r2, [r6, #4]
	bl __call_via_r2
34
	ldrb r0, [r4, #3]
	ldr r2, [r6]
	lsls r1, r0, #2
	movs r0, #2
	bl __call_via_r2
	ldr r6, _08011D30
	str r0, [r6, #0x24]
	ldrb r1, [r4, #1]
	ldr r2, [r6, #0x18]
	adds r1, #3
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, r2, r1
	str r1, [r0]
	ldrb r1, [r4, #3]
	movs r0, #1
	cmp r1, #1
	bls %36
35
	ldr r1, [r6, #0x24]
	lsls r2, r0, #2
	adds r3, r1, r2
	subs r3, #0x40
	ldr r3, [r3, #0x3c]
	adds r0, #1
	ldr r7, [r3]
	lsls r7, r7, #2
	adds r3, r3, r7
	adds r3, #4
	str r3, [r1, r2]
	ldrb r1, [r4, #3]
	cmp r1, r0
	bhi %35
36
	movs r0, #0
	bl sub_8040C38
	ldrb r0, [r4]
	bl sub_80115EC
	ldr r1, _08011D18
	movs r0, #0
	adds r1, #0x10
	ldrb r2, [r1, #0xf]
	cmp r2, #0
	bls %38
	ldr r4, _08011D34
	movs r1, #1
37
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	adds r0, #1
	cmp r2, r0
	strh r1, [r3, #4]
	bhi %37
38
	bl sub_801197C
	strh r5, [r6]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08011D18 DCDU gUnknown_03003520
_08011D30 DCDU gUnknown_03003BC8
_08011D34 DCDU gUnknown_030037A0
_08011D38 DCDU 0x00333333

	END
