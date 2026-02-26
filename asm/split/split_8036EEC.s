	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003E98
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_80187A0
	IMPORT sub_803F6B4
	IMPORT sub_803FC14

	thumb_func_start sub_8036EEC

sub_8036EEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	adds r7, r4, #0
	adds r6, r4, #0
	adds r6, #0x58
	adds r7, #0xc0
	cmp r0, #0xf
	sub sp, #0xc
	beq %26
	bgt %23
	cmp r0, #1
	beq %27
	cmp r0, #8
	beq %29
	cmp r0, #9
	bne %25
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq %22
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %22
	bl sub_8000914
22
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	ldr r2, [r4, #0x7c]
	lsls r2, r2, #4
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x1c
	cmp r2, #2
	bne %32
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl %32
	movs r3, #1
	b %46
23
	cmp r0, #0x10
	beq %33
	cmp r0, #0x20
	beq %30
	cmp r0, #0x21
	bne %25
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x68
	beq %24
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x68
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %24
	bl sub_8000914
24
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %25
	ldr r0, _08037100
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r7]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs %28
	movs r0, #1
	str r0, [r5, #0x1c]
25
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
26
	b %56
27
	b %34
28
	movs r1, #8
	str r1, [r5, #0x1c]
	b %25
29
	b %40
30
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x69
	beq %31
	movs r0, #0x1e
	movs r1, #0x7d
	strb r0, [r1, r4]
	movs r1, #0xff
	movs r2, #0
	adds r1, #0x69
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %25
	bl sub_8000914
	b %25
31
	ldr r0, _08037100
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r7]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs %25
	movs r0, #0x21
	str r0, [r5, #0x1c]
	b %25
32
	b %45
33
	b %65
34
	ldr r0, _08037100
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r7]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs %38
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x67
	beq %35
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x67
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %35
	bl sub_8000914
35
	ldr r0, _08037104
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0xff
	bics r0, r1
	bne %25
	ldr r0, [r5, #0x2c]
	lsrs r0, r0, #3
	lsls r0, r0, #3
	adds r0, #1
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	bne %25
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b %36
	ALIGN

	ALIGN
_08037100 DCDU gUnknown_03003458
_08037104 DCDU gUnknown_03003E98

	END
