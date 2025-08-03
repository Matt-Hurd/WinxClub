	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003520
	IMPORT gUnknown_03003530
	IMPORT gUnknown_03003670
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT sub_80115EC
	IMPORT sub_80116D4
	IMPORT sub_801197C
	IMPORT sub_80123E4
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT Div
	IMPORT sub_80409E4
	IMPORT sub_8040C38
	IMPORT sub_8040C78

	thumb_func_start sub_8011A80
sub_8011A80
	ldr r1, _08011D18
	push {r4, r5, r6}
	ldrh r0, [r1, #0x10]
	lsls r2, r0, #0x1f
	bpl _08011ABE
	ldr r2, _08011D1C
	ldr r3, _08011D20
	str r2, [r3, #4]
	mov r8, r8
	mov r8, r8
	movs r2, #0x11
	lsls r2, r2, #6
	adds r4, r3, #0
	strh r2, [r4, #6]
	ldr r4, _08011D18
	lsls r2, r0, #0x1e
	adds r4, #0x20
	cmp r2, #0
	ldr r5, _08011D24
	ldr r6, _08011D28
	bge _08011AB0
	str r6, [r5, #0x3c]
	str r4, [r1, #4]
	b _08011AB4
_08011AB0
	str r4, [r5, #0x3c]
	str r6, [r1, #4]
_08011AB4
	ldr r2, _08011D2C
	strh r2, [r3, #6]
	movs r2, #2
	eors r0, r2
	strh r0, [r1, #0x10]
_08011ABE
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_8011AC2
sub_8011AC2
	push {r4, r5, r6, lr}
	ldr r5, _08011D30
	ldr r6, _08011D18
	adds r4, r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	subs r6, #0x24
	cmp r0, #0
	beq _08011ADE
	adds r1, r0, #0
	movs r0, #1
	ldr r2, [r6, #4]
	bl __call_via_r2
_08011ADE
	ldrb r0, [r4, #2]
	ldr r2, [r6]
	lsls r1, r0, #2
	movs r0, #1
	bl __call_via_r2
	str r0, [r5, #0x20]
	ldrb r0, [r4, #3]
	ldrb r2, [r4, #2]
	lsls r0, r0, #2
	adds r1, r0, r4
	adds r1, #4
	movs r0, #0
	cmp r2, #0
	bls _08011B14
_08011AFC
	ldr r2, [r5, #0x20]
	lsls r3, r0, #2
	str r1, [r2, r3]
	ldr r2, [r1]
	adds r0, #1
	adds r2, #0x7f
	lsrs r2, r2, #2
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r2, [r4, #2]
	cmp r2, r0
	bhi _08011AFC
_08011B14
	ldr r1, _08011D30
	movs r0, #0
	adds r1, #0x68
	strb r0, [r1, #7]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011B22
sub_8011B22
	ldr r1, _08011D30
	str r0, [r1, #0x2c]
	bx lr

	thumb_func_start sub_8011B28
sub_8011B28
	cmp r0, #6
	bhs _08011B5C
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08011B34
	DCB 0x02
_08011B35
	DCB 0x05
_08011B36
	DCB 0x13
_08011B37
	DCB 0x08
_08011B38
	DCB 0x0D
_08011B39
	DCB 0x10
loc_8011b3a
	ldr r0, _08011D30
	ldrh r0, [r0, #0xc]
	bx lr
loc_8011b40
	ldr r0, _08011D30
	ldrb r0, [r0, #7]
	bx lr
loc_8011b46
	ldr r1, _08011D30
	ldr r0, [r1, #0x18]
	ldrb r1, [r1, #7]
	ldrb r0, [r0, r1]
	bx lr
loc_8011b50
	ldr r0, _08011D30
	ldrb r0, [r0, #0xb]
	bx lr
loc_8011b56
	ldr r0, _08011D30
	ldrb r0, [r0, #0xa]
	bx lr
_08011B5C
	movs r0, #0
	mvns r0, r0
	bx lr

	non_word_aligned_thumb_func_start sub_8011B62
sub_8011B62
	push {r4, lr}
	cmp r0, #8
	bhs _08011B7C
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08011B70
	DCB 0x03
_08011B71
	DCB 0x08
_08011B72
	DCB 0x0D
_08011B73
	DCB 0x05
_08011B74
	DCB 0x24
_08011B75
	DCB 0x05
_08011B76
	DCB 0x32
_08011B77
	DCB 0x3F
loc_8011b78
	ldr r0, _08011D30
	strh r1, [r0, #0xc]
_08011B7C
	pop {r4}
	pop {r3}
	bx r3
loc_8011b82
	adds r0, r1, #0
	ldr r1, _08011D30
	adds r0, #0xff
	strb r0, [r1, #7]
	b _08011B7C
loc_8011b8c
	ldr r0, _08011D18
	adds r0, #0x10
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _08011BA8
	movs r3, #0x4c
	muls r0, r3
	ldr r3, _08011D34
	adds r0, r0, r3
	movs r2, #1
_08011BA0
	subs r0, #0x4c
	strh r2, [r0, #4]
	cmp r0, r3
	bhi _08011BA0
_08011BA8
	lsrs r0, r1, #0x10
	ldr r2, _08011D30
	adds r0, #0xff
	strb r0, [r2, #7]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040C38
	b _08011B7C
loc_8011bba
	cmp r1, #0xff
	bls _08011BC0
	movs r1, #0xff
_08011BC0
	ldr r0, _08011D38
	ldr r4, _08011D30
	muls r0, r1
	strb r1, [r4, #0xb]
	lsrs r1, r0, #0x17
	ldr r0, _08011D18
	ldrh r0, [r0, #0x18]
	bl Div
	strh r0, [r4, #0xe]
	b _08011B7C
loc_8011bd6
	ldr r0, _08011D34
	cmp r1, #0
	beq _08011B7C
	movs r3, #2
_08011BDE
	lsls r2, r1, #0x1f
	bpl _08011BE8
	ldrh r2, [r0, #4]
	orrs r2, r3
	strh r2, [r0, #4]
_08011BE8
	adds r0, #0x4c
	lsrs r1, r1, #1
	bne _08011BDE
	b _08011B7C
loc_8011bf0
	ldr r0, _08011D34
	cmp r1, #0
	beq _08011B7C
	movs r3, #2
_08011BF8
	lsls r2, r1, #0x1f
	bpl _08011C02
	ldrh r2, [r0, #4]
	bics r2, r3
	strh r2, [r0, #4]
_08011C02
	adds r0, #0x4c
	lsrs r1, r1, #1
	bne _08011BF8
	b _08011B7C
_08011C0A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08011D30
	adds r5, r1, #0
	lsls r1, r1, #0x17
	movs r7, #0
	adds r0, #0x68
	cmp r1, #0
	blt _08011C20
	strb r7, [r0, #7]
	str r4, [r0]
_08011C20
	ldr r6, _08011D30
	ldrh r1, [r6]
	lsls r1, r1, #0x1f
	bpl _08011C44
	lsls r1, r5, #0x17
	bpl _08011C40
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
_08011C40
	bl sub_80116D4
_08011C44
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
	beq _08011CA0
	adds r1, r0, #0
	movs r0, #2
	ldr r2, [r6, #4]
	bl __call_via_r2
_08011CA0
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
	bls _08011CE2
_08011CC6
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
	bhi _08011CC6
_08011CE2
	movs r0, #0
	bl sub_8040C38
	ldrb r0, [r4]
	bl sub_80115EC
	ldr r1, _08011D18
	movs r0, #0
	adds r1, #0x10
	ldrb r2, [r1, #0xf]
	cmp r2, #0
	bls _08011D0C
	ldr r4, _08011D34
	movs r1, #1
_08011CFE
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	adds r0, #1
	cmp r2, r0
	strh r1, [r3, #4]
	bhi _08011CFE
_08011D0C
	bl sub_801197C
	strh r5, [r6]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08011D18 DCDU gUnknown_03003520
_08011D1C DCDU 0x84400004
_08011D20 DCDU REG_DMA1DAD
_08011D24 DCDU REG_SOUNDCNT
_08011D28 DCDU gUnknown_03003670
_08011D2C DCDU 0x0000B660
_08011D30 DCDU gUnknown_03003BC8
_08011D34 DCDU gUnknown_030037A0
_08011D38 DCDU 0x00333333

	thumb_func_start sub_8011D3C
sub_8011D3C
	adds r1, r0, #0
	ldr r0, _0801209C
	lsls r2, r1, #0x18
	ldr r0, [r0, #0x1c]
	lsrs r2, r2, #0x16
	adds r2, r0, r2
	ldr r2, [r2, #4]
	lsrs r1, r1, #8
	adds r0, r2, r0
	movs r2, #1
	lsls r1, r1, #8
	orrs r1, r2
	b _08011C0A

	non_word_aligned_thumb_func_start sub_8011D56
sub_8011D56
	ldr r1, _0801209C
	push {r3, r4, r5}
	ldrh r0, [r1]
	lsls r2, r0, #0x1f
	bpl _08011DAE
	movs r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _080120A0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _08011D84
	ldr r4, _080120A4
_08011D70
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	adds r3, #4
	ldrh r5, [r3]
	orrs r5, r2
	strh r5, [r3]
	cmp r0, #0
	bne _08011D70
_08011D84
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne _08011DAE
	str r0, [sp]
	ldr r0, _080120A8
	mov r1, sp
	str r1, [r0]
	ldr r1, _080120A0
	adds r1, #0x10
	str r1, [r0, #4]
	ldr r1, _080120AC
	str r1, [r0, #8]
	ldr r2, [r0, #8]
	movs r2, #0
	str r2, [sp]
	mov r2, sp
	str r2, [r0]
	ldr r2, _080120B0
	str r2, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08011DAE
	pop {r3, r4, r5}
	bx lr

	non_word_aligned_thumb_func_start sub_8011DB2
sub_8011DB2
	ldr r2, _0801209C
	push {r4}
	ldrh r0, [r2]
	lsls r1, r0, #0x1e
	bpl _08011DE0
	movs r1, #2
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080120A0
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _08011DE0
	ldr r2, _080120A4
_08011DCC
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r2
	adds r3, #4
	ldrh r4, [r3]
	bics r4, r1
	strh r4, [r3]
	cmp r0, #0
	bne _08011DCC
_08011DE0
	pop {r4}
	bx lr

	thumb_func_start sub_8011DE4
sub_8011DE4
	ldr r3, _0801209C
	push {r4}
	movs r2, #0
	strh r2, [r3, #0x12]
	strh r0, [r3, #0x16]
	ldr r0, _080120A0
	ldr r1, _080120A4
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _08011E0C
	movs r3, #0x10
_08011DFA
	ldrh r2, [r1, #4]
	lsls r4, r2, #0x1f
	bmi _08011E04
	orrs r2, r3
	strh r2, [r1, #4]
_08011E04
	subs r0, #1
	adds r1, #0x4c
	cmp r0, #0
	bne _08011DFA
_08011E0C
	pop {r4}
	bx lr

	thumb_func_start sub_8011E10
sub_8011E10
	ldr r1, _0801209C
	movs r0, #1
	ldrh r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq _08011E20
	movs r0, #0
_08011E20
	bx lr

	non_word_aligned_thumb_func_start sub_8011E22
sub_8011E22
	ldr r0, _0801209C
	ldrh r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #1
	bne _08011E38
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	beq _08011E38
	movs r0, #1
	bx lr
_08011E38
	movs r0, #0
	bx lr

	thumb_func_start sub_8011E3C
sub_8011E3C
	ldr r0, _0801209C
	movs r1, #2
	ldrh r0, [r0]
	ands r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_8011E46
sub_8011E46
	ldr r0, _0801209C
	movs r1, #0xff
	ldrh r0, [r0]
	adds r1, #1
	ands r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_8011E52
sub_8011E52
	ldr r1, _0801209C
	cmp r0, #0
	strh r0, [r1, #0x12]
	ldrh r2, [r1, #0x16]
	strh r2, [r1, #0x14]
	ble _08011E62
	movs r0, #0
	strh r0, [r1, #0x16]
_08011E62
	bx lr

	thumb_func_start sub_8011E64
sub_8011E64
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldrh r5, [r2, #4]
	ldrh r4, [r2, #6]
	ldrh r0, [r2]
	sub sp, #8
	adds r6, r1, #0
	str r0, [sp]
	ldrh r0, [r2, #4]
	adds r7, r2, #0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r0, [r1, #6]
	cmp r5, r4
	beq _08011EA8
	str r1, [sp, #4]
	ldrh r1, [r1, #4]
	ldr r2, [sp]
	subs r2, r2, r1
	mov ip, r2
	lsls r2, r4, #2
	adds r2, r2, r6
	ldrh r3, [r2, #4]
	ldrh r2, [r2, #6]
	subs r1, r3, r1
	subs r0, r2, r0
	mov r2, ip
	muls r0, r2
	bl Div
	ldr r1, [sp, #4]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r7, #2]
	b _08011EAA
_08011EA8
	strh r0, [r7, #2]
_08011EAA
	lsls r1, r4, #2
	adds r1, r1, r6
	ldr r0, [sp]
	ldrh r1, [r1, #4]
	adds r0, #1
	cmp r1, r0
	bhi _08011F00
	ldrb r1, [r6, #1]
	adds r5, r4, #0
	adds r4, #1
	cmp r1, #0xff
	beq _08011ED8
	ldr r2, [sp, #8]
	lsls r2, r2, #0x1d
	bmi _08011ED8
	cmp r1, r4
	bhs _08011ED8
	adds r4, r1, #0
	adds r5, r1, #0
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	b _08011F00
_08011ED8
	ldrb r2, [r6, #2]
	cmp r2, #0xff
	beq _08011EF6
	ldrb r1, [r6, #3]
	cmp r1, r4
	bhs _08011EF6
	adds r5, r2, #0
	cmp r1, r2
	beq _08011EEC
	adds r2, r5, #1
_08011EEC
	adds r4, r2, #0
	lsls r0, r5, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	b _08011F00
_08011EF6
	ldrb r1, [r6]
	cmp r1, r4
	bhi _08011F00
	subs r4, #1
	subs r0, #1
_08011F00
	strh r5, [r7, #4]
	strh r4, [r7, #6]
	strh r0, [r7]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011F0E
sub_8011F0E
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0801209C
	ldrh r0, [r7]
	lsls r1, r0, #0x1d
	bmi _08011FF4
	movs r1, #4
	ldr r5, _080120A0
	orrs r0, r1
	ldr r4, _080120A0
	subs r5, #0x10
	adds r6, r5, #0
	strh r0, [r7]
	movs r1, #0xb
	ands r0, r1
	adds r6, #0x10
	subs r4, #0x34
	cmp r0, #1
	bne _08012016
	ldr r5, [r5, #0xc]
	cmp r5, #0
	beq _08011FD0
_08011F38
	ldrh r0, [r7, #0x10]
	cmp r0, #0
	bne _0801200E
	ldrh r0, [r7, #0xe]
	movs r3, #0x4c
	ldr r4, _080120A4
	strh r0, [r7, #0x10]
	ldrb r0, [r6, #0xf]
	muls r0, r3
	adds r0, r0, r4
	cmp r0, r4
	bls _08011F9A
_08011F50
	ldrh r0, [r4, #4]
	lsls r1, r0, #0x1f
	bmi _08011F8A
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _08011F8A
	ldrb r2, [r1, #0x14]
	cmp r2, #0
	beq _08011F8A
	lsls r2, r0, #0x1d
	bpl _08011F7A
	ldr r2, [r4, #0x1c]
	ldr r3, [r1, #0x10]
	subs r2, r2, r3
	ldr r3, _080120B4
	str r2, [r4, #0x1c]
	cmp r2, r3
	bls _08011F7A
	movs r0, #1
	strh r0, [r4, #4]
	b _08011F8A
_08011F7A
	movs r2, #0x10
	orrs r0, r2
	adds r2, r4, #0
	adds r1, #0x14
	adds r2, #0x20
	strh r0, [r4, #4]
	bl sub_8011E64
_08011F8A
	ldrb r0, [r6, #0xf]
	movs r3, #0x4c
	ldr r1, _080120A4
	muls r0, r3
	adds r0, r0, r1
	adds r4, #0x4c
	cmp r0, r4
	bhi _08011F50
_08011F9A
	ldrb r0, [r7, #3]
	cmp r0, #0
	bne _08011FF6
	movs r3, #0x12
	ldrsh r1, [r7, r3]
	cmp r1, #0
	beq _08011FEE
	ldrh r0, [r7, #0x16]
	ldr r2, _080120A4
	adds r0, r0, r1
	cmp r1, #0
	ble _08011FC0
	ldrh r1, [r7, #0x14]
	cmp r1, r0
	bgt _08011FC0
	strh r1, [r7, #0x16]
	movs r0, #0
	strh r0, [r7, #0x12]
	b _08011FD4
_08011FC0
	cmp r0, #0
	bgt _08011FD2
	bl sub_8011D56
	ldrh r0, [r7, #0x14]
	strh r0, [r7, #0x16]
	movs r0, #0
	strh r0, [r7, #0x12]
_08011FD0
	b _0801208C
_08011FD2
	strh r0, [r7, #0x16]
_08011FD4
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	beq _08011FEE
	movs r3, #0x10
_08011FDC
	ldrh r1, [r2, #4]
	lsls r4, r1, #0x1f
	bmi _08011FE6
	orrs r1, r3
	strh r1, [r2, #4]
_08011FE6
	subs r0, #1
	adds r2, #0x4c
	cmp r0, #0
	bne _08011FDC
_08011FEE
	bl sub_8040C78
	b _08011FFA
_08011FF4
	b _08012094
_08011FF6
	bl sub_80409E4
_08011FFA
	ldrb r0, [r7, #3]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r7, #3]
	ldrb r1, [r7, #4]
	cmp r0, r1
	blo _0801200E
	movs r0, #0
	strb r0, [r7, #3]
_0801200E
	ldrh r0, [r7, #0x10]
	adds r4, r5, #0
	cmp r0, r5
	b _08012018
_08012016
	b _08012038
_08012018
	bhi _0801201C
	adds r4, r0, #0
_0801201C
	subs r5, r5, r4
	subs r0, r0, r4
	strh r0, [r7, #0x10]
	bl sub_80123E4
	adds r0, r4, #0
	ldr r4, _080120A0
	subs r4, #0x34
	ldr r1, [r4, #8]
	bl __call_via_r1
	cmp r5, #0
	bne _08011F38
	b _0801208C
_08012038
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0801204A
	bl sub_80123E4
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #8]
	bl __call_via_r1
_0801204A
	ldrh r0, [r7]
	lsls r0, r0, #0x1c
	bpl _0801208C
	ldr r6, _0801209C
	adds r6, #0x68
	ldrb r4, [r6, #7]
	cmp r4, #0
	beq _08012088
	movs r1, #5
	ldr r0, [r6]
	bl _08011C0A
	ldrb r0, [r6, #6]
	adds r0, #0xff
	strb r0, [r7, #7]
	ldr r0, _080120B8
	strb r4, [r7, #0xb]
	muls r0, r4
	lsrs r1, r0, #0x17
	ldrh r0, [r5, #0x18]
	bl Div
	strh r0, [r7, #0xe]
	ldrb r0, [r6, #8]
	strb r0, [r7, #4]
	ldrb r0, [r6, #9]
	strb r0, [r7, #0xa]
	ldrh r0, [r6, #4]
	bl sub_8040C38
	b _0801208C
_08012088
	bl sub_80116D4
_0801208C
	ldrh r0, [r7]
	movs r1, #4
	bics r0, r1
	strh r0, [r7]
_08012094
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801209C DCDU gUnknown_03003BC8
_080120A0 DCDU gUnknown_03003530
_080120A4 DCDU gUnknown_030037A0
_080120A8 DCDU REG_DMA3
_080120AC DCDU 0x8500004C
_080120B0 DCDU gUnknown_03003670
_080120B4 DCDU 0x0000FFFF
_080120B8 DCDU 0x00333333
	END