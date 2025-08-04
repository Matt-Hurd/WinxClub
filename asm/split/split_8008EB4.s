	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__378dword_803EDE8
	IMPORT gUnknown_0804AA68
	IMPORT gUnknown_0804AB34
	IMPORT __rt_memclr_w
	IMPORT __rt_memcpy
	IMPORT __nw__FUi
	IMPORT sub_800802E
	IMPORT sub_800805E
	IMPORT sub_803DA18
	IMPORT sub_800808E

	arm_func_start sub_8008EB4
sub_8008EB4
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _08008EDC
	mov r0, #0x124
	add r0, r0, #0x5400
	bl __nw__FUi
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_08008EDC
	mov r0, r4
	bl sub_800802E
	LDR r0, _08009E20
	STR r0, [r4]
	mov r0, #6
	strh r0, [r4, #6]
	mov r0, #0
	STR r0, [r4, #0x20]
	STR r0, [r4, #0x24]
	STR r0, [r4, #0x28]
	STR r0, [r4, #0x2c]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_8008F14
sub_8008F14
	bx lr

	arm_func_start sub_8008F18
sub_8008F18
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, _08009E20
	mov r5, r1
	STR r0, [r4]
	mov r0, r4
	mov r1, #0
	bl sub_800805E
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne sub_803DA18
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8008F50
sub_8008F50
	mov r0, #1
	cmp r2, #0xf
	blo _08008F64
	cmp r2, #0x15
	bls _08008F6C
_08008F64
	mov r0, #1
	bx lr
_08008F6C
	cmp r2, #0x14
	moveq r2, #0x2a
	beq _08008F84
	cmp r2, #0x15
	MOVNE r2, r2, LSL #1
	moveq r2, #0x32
_08008F84
	STR r0, [r1, #0xc]
	STR r3, [r1]
	STR r0, [r1, #8]
	STR r0, [r1, #4]
	mov r0, #0x100
	add r0, r0, r2, lsl #3
	strh r0, [r1, #0x10]
	mov r2, #0
	STR r2, [r1, #0x14]
	STR r2, [r1, #0x24]
	STR r2, [r1, #0x20]
	strh r2, [r1, #0x18]
	STR r2, [r1, #0x2c]
	STR r2, [r1, #0x30]
	mov r0, #0
_08008FC0
	add r3, r1, r0
	add r3, r3, #0x2000
	add r0, r0, #1
	cmp r0, #0x290
	STRB r2, [r3, #0xb98]
	blt _08008FC0
	mov r0, #0
_08008FDC
	add r3, r1, r0
	add r3, r3, #0x5000
	add r0, r0, #1
	cmp r0, #0xfa
	STRB r2, [r3, #0x250]
	blt _08008FDC
	mov r0, #0
	bx lr

	arm_func_start sub_8008FFC
sub_8008FFC
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r4, r0
	bl sub_800808E
	LDR r6, [r5]
	mov r1, #0xf4
	add r0, r4, #0x30
	mov r7, r0
	add r1, r1, #0x5400
	add r5, r6, #4
	bl __rt_memclr_w
	LDR r0, [r6]
	mov r3, r5
	MOV r2, r0, LSR #0x1b
	mov r0, r4
	mov r1, r7
	bl sub_8008F50
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_800904C
sub_800904C
	STR r1, [r0, #0x20]
	MOV r1, r2, LSR #1
	STR r1, [r0, #0x24]
	bx lr

	arm_func_start sub_800905C
sub_800905C
	mov r0, #0
	bx lr

	arm_func_start sub_8009064
sub_8009064
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDR lr, [sp, #8]
	mov r2, #1
	MOV r8, r2, LSL lr
	MOV sb, r8, LSR #1
	mov r5, sb
	LDR r4, [sp, #0x34]
	mov r0, #1
	mov ip, #0
	cmp lr, #1
	blo _08009114
_08009090
	mov r2, #0
	cmp r1, #0
	bls _080090FC
	sub sl, sb, #1
_080090A0
	LDRB lr, [r3, r2]
	cmp lr, r0
	bne _080090EC
	mov lr, ip
	add ip, ip, sb
	cmp ip, r8
	addhi sp, sp, #0x10
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movhi r0, #1
	bxhi lr
	mov r7, sl
	cmn sl, #1
	beq _080090EC
_080090D4
	mov r6, lr
	add r6, r4, r6, lsl #1
	strh r2, [r6]
	add lr, lr, #1
	subs r7, r7, #1
	bhs _080090D4
_080090EC
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r1
	blo _080090A0
_080090FC
	add r0, r0, #1
	LDR r2, [sp, #8]
	and r0, r0, #0xff
	cmp r0, r2
	MOV sb, sb, LSR #1
	bls _08009090
_08009114
	cmp ip, r8
	beq _0800921C
	MOV r2, ip, LSL #0x10
	MOV r2, r2, LSR #0x10
	cmp r2, r8
	mov sb, #0
	bhs _08009148
_08009130
	add lr, r4, r2, lsl #1
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r8
	strh sb, [lr]
	blo _08009130
_08009148
	MOV ip, ip, LSL #0x10
	MOV r8, r8, LSL #0x10
	mov fp, #0x8000
	cmp r0, #0x10
	bhi _0800921C
_0800915C
	mov r2, #0
	cmp r1, #0
	bls _08009208
	LDR lr, [sp, #8]
	sub sl, r0, lr
_08009170
	LDRB lr, [r3, r2]
	cmp lr, r0
	bne _080091F8
	MOV r6, ip, LSR #0x10
	mov lr, #0
	cmp sl, #0
	bls _080091D8
_0800918C
	add r6, r4, r6, lsl #1
	ldrh r7, [r6]
	cmp r7, #0
	bne _080091B4
	add r7, r4, r5, lsl #2
	strh sb, [r7]
	strh sb, [r7, #2]
	mov r7, r5
	strh r7, [r6]
	add r5, r5, #1
_080091B4
	rsb r7, lr, #0xf
	ldrh r6, [r6]
	MOV r7, ip, LSR r7
	tst r7, #1
	MOV r6, r6, LSL #1
	addne r6, r6, #1
	add lr, lr, #1
	cmp sl, lr
	bhi _0800918C
_080091D8
	add lr, r4, r6, lsl #1
	add ip, ip, fp
	cmp ip, r8
	strh r2, [lr]
	addhi sp, sp, #0x10
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movhi r0, #1
	bxhi lr
_080091F8
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r1
	blo _08009170
_08009208
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x10
	MOV fp, fp, LSR #1
	bls _0800915C
_0800921C
	cmp ip, r8
	addeq sp, sp, #0x10
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bxeq lr
	cmp r1, #0
	bls _08009260
_08009238
	LDRB r2, [r3, r0]
	cmp r2, #0
	addne sp, sp, #0x10
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #1
	bxne lr
	add r0, r0, #1
	bic r0, r0, #0x10000
	cmp r0, r1
	blo _08009238
_08009260
	add sp, sp, #0x10
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_8009270
sub_8009270
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	LDR sb, [sp, #0x3c]
	LDR fp, [sp, #0x38]
	ldmib sb, {r4, r6}
	LDR r5, [sb]
	mov r8, r1
	mov r1, #0
	mov r7, r2
_08009294
	cmp r4, #4
	bge _080092C0
_0800929C
	LDRB r2, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r2, r2, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #4
	orr r5, r5, r2, lsl r3
	blt _0800929C
_080092C0
	add r3, r8, r1
	MOV r2, r5, LSR #0x1c
	add r1, r1, #1
	cmp r1, #0x14
	STRB r2, [r3, #0x104]
	MOV r5, r5, LSL #4
	sub r4, r4, #4
	blo _08009294
	add r3, r8, #0x34
	mov sl, r3
	STR r3, [sp]
	add r3, r8, #0x104
	mov r2, #6
	mov r1, #0x14
	bl sub_8009064
	cmp r0, #0
	addne sp, sp, #0x14
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	LDR r0, [sp, #0x10]
	cmp r0, fp
	bhs _080095A0
	mov r2, #0
_08009320
	cmp r4, #0x10
	bge _0800934C
_08009328
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r3
	blt _08009328
_0800934C
	MOV r1, r5, LSR #0x1a
	add r1, sl, r1, lsl #1
	ldrh r3, [r1]
	cmp r3, #0x14
	blo _0800939C
	mov r1, #0x4000000
_08009364
	MOV r1, r1, LSR #1
	MOV ip, r3, LSL #1
	ands r3, r5, r1
	movne r3, #1
	cmp r1, #0
	addeq sp, sp, #0x14
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r3, r3, ip
	bxeq lr
	add r3, sl, r3, lsl #1
	ldrh r3, [r3]
	cmp r3, #0x14
	bhs _08009364
_0800939C
	add r1, r3, r8
	LDRB r1, [r1, #0x104]
	cmp r3, #0x11
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	bne _08009410
	cmp r4, #4
	bge _080093E0
_080093BC
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #4
	orr r5, r5, r1, lsl r3
	blt _080093BC
_080093E0
	MOV r1, r5, LSR #0x1c
	add r3, r1, #3
	cmn r3, #1
	MOV r5, r5, LSL #4
	sub r4, r4, #4
	beq _08009598
_080093F8
	mov r1, r0
	STRB r2, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs _080093F8
	b _08009598
_08009410
	cmp r3, #0x12
	bne _08009474
	cmp r4, #5
	bge _08009444
_08009420
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #5
	orr r5, r5, r1, lsl r3
	blt _08009420
_08009444
	MOV r1, r5, LSR #0x1b
	add r3, r1, #0x13
	cmn r3, #1
	MOV r5, r5, LSL #5
	sub r4, r4, #5
	beq _08009598
_0800945C
	mov r1, r0
	STRB r2, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs _0800945C
	b _08009598
_08009474
	cmp r3, #0x13
	bne _0800957C
	cmp r4, #1
	bge _080094A8
_08009484
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #1
	orr r5, r5, r1, lsl r3
	blt _08009484
_080094A8
	MOV r1, r5, LSR #0x1f
	sub r3, r4, #1
	cmp r3, #0x10
	add r1, r1, #4
	MOV ip, r5, LSL #1
	bge _080094E4
_080094C0
	LDRB lr, [r6]
	LDRB r4, [r6, #1]
	add r6, r6, #2
	orr lr, lr, r4, lsl #8
	rsb r4, r3, #0x10
	add r3, r3, #0x10
	cmp r3, #0x10
	orr ip, ip, lr, lsl r4
	blt _080094C0
_080094E4
	MOV lr, ip, LSR #0x1a
	add lr, sl, lr, lsl #1
	ldrh r4, [lr]
	cmp r4, #0x14
	blo _08009534
	mov lr, #0x4000000
_080094FC
	MOV lr, lr, LSR #1
	MOV r5, r4, LSL #1
	ands r4, ip, lr
	movne r4, #1
	cmp lr, #0
	addeq sp, sp, #0x14
	orr r4, r4, r5
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	bxeq lr
	add r4, sl, r4, lsl #1
	ldrh r4, [r4]
	cmp r4, #0x14
	bhs _080094FC
_08009534
	mov lr, r4
	add r4, r4, r8
	LDRB r4, [r4, #0x104]
	MOV r5, ip, LSL r4
	sub r4, r3, r4
	LDRB r3, [r7, r0]
	sub ip, r3, lr
	cmp ip, #0
	addlt ip, ip, #0x11
	subs r3, r1, #1
	blo _08009598
	and ip, ip, #0xff
_08009564
	mov r1, r0
	STRB ip, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs _08009564
	b _08009598
_0800957C
	LDRB r1, [r7, r0]
	sub r3, r1, r3
	cmp r3, #0
	mov r1, r0
	addlt r3, r3, #0x11
	STRB r3, [r7, r1]
	add r0, r0, #1
_08009598
	cmp r0, fp
	blo _08009320
_080095A0
	STR r5, [sb], #4
	STMIA sb, {r4, r6}
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_80095B8
sub_80095B8
	STMFD SP!, {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDMIA r1, {r6, sb, fp}
	mov sl, r1
	LDR r1, [r1, #0xc]
	sub sp, sp, #0x38
	STR r1, [sp, #0x18]
	LDR r1, [sl, #0x14]
	mov r7, r0
	mov r0, #1
	mov r5, #0
	mov r4, #0
	cmp r1, #0
	bne _080096A4
	mov r3, #0
	mov ip, r3
_080095F4
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #1
	orr r5, r5, r1, lsl r2
	blt _080095F4
	MOVS r1, r5, LSR #0x1f
	MOV r5, r5, LSL #1
	sub r4, r4, #1
	beq _08009698
	cmp r4, #0x10
	bge _08009654
_08009630
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r2
	blt _08009630
_08009654
	sub r1, r4, #0x10
	cmp r1, #0x10
	MOV r3, r5, LSR #0x10
	MOV r2, r5, LSL #0x10
	bge _0800968C
_08009668
	LDRB ip, [r6]
	LDRB lr, [r6, #1]
	add r6, r6, #2
	orr ip, ip, lr, lsl #8
	rsb lr, r1, #0x10
	add r1, r1, #0x10
	cmp r1, #0x10
	orr r2, r2, ip, lsl lr
	blt _08009668
_0800968C
	MOV ip, r2, LSR #0x10
	MOV r5, r2, LSL #0x10
	sub r4, r1, #0x10
_08009698
	orr r1, ip, r3, lsl #16
	STR r0, [sl, #0x14]
	STR r1, [sl, #0x28]
_080096A4
	LDR r1, [sp, #0x40]
	cmp r1, #0
	ble _0800A200
	add r3, sl, #0x5400
	add r2, sl, #0x2800
	add r2, r2, #0x398
	add r3, r3, #0xaa
	add r1, sl, #0x2000
	add r8, sp, #0x2c
	STMIA r8, {r1, r2, r3}
	add r3, sl, #0x158
	STR r3, [sp, #0x24]
	add r3, sl, #0x2c00
	add r3, r3, #0x268
	STR r3, [sp, #0x20]
	add r3, sl, #0x5300
	add r2, sl, #0x5000
	add r2, r2, #0x250
	add r3, r3, #0x8a
	STR r3, [sp, #0x1c]
	STR r2, [sp, #0x28]
_080096F8
	LDR r0, [sl, #0x20]
	cmp r0, #0
	bne _0800A1D8
	ldrh r0, [sl, #0x18]
	cmp r0, #3
	bne _08009728
	LDR r0, [sl, #0x1c]
	mov r4, #0
	tst r0, #1
	addne r6, r6, #1
	mov r5, #0
	b _08009730
_08009728
	cmp r4, #3
	bge _08009754
_08009730
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #3
	orr r5, r5, r0, lsl r1
	blt _08009730
_08009754
	MOV r0, r5, LSR #0x1d
	sub r2, r4, #3
	cmp r2, #0x10
	strh r0, [sl, #0x18]
	MOV r3, r5, LSL #3
	bge _08009790
_0800976C
	LDRB r1, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r1, r1, ip, lsl #8
	rsb ip, r2, #0x10
	add r2, r2, #0x10
	cmp r2, #0x10
	orr r3, r3, r1, lsl ip
	blt _0800976C
_08009790
	MOV r1, r3, LSR #0x10
	MOV ip, r3, LSL #0x10
	sub r3, r2, #0x10
	cmp r3, #8
	bge _080097C8
_080097A4
	LDRB r2, [r6]
	LDRB lr, [r6, #1]
	add r6, r6, #2
	orr r2, r2, lr, lsl #8
	rsb lr, r3, #0x10
	add r3, r3, #0x10
	cmp r3, #8
	orr ip, ip, r2, lsl lr
	blt _080097A4
_080097C8
	MOV r2, ip, LSR #0x18
	orr r1, r2, r1, lsl #8
	STR r1, [sl, #0x1c]
	STR r1, [sl, #0x20]
	MOV r5, ip, LSL #8
	sub r4, r3, #8
	cmp r0, #1
	beq _0800989C
	cmp r0, #2
	moveq r0, #0
	beq _0800981C
	cmp r0, #3
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	mov r0, #1
	STR r0, [sl, #0x30]
	cmp r4, #0x10
	bge _080099F4
	b _080099D0
_0800981C
	cmp r4, #3
	bge _08009848
_08009824
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #3
	orr r5, r5, r1, lsl r2
	blt _08009824
_08009848
	add r2, sl, r0
	MOV r1, r5, LSR #0x1d
	add r2, r2, #0x5000
	add r0, r0, #1
	cmp r0, #8
	STRB r1, [r2, #0x4aa]
	MOV r5, r5, LSL #3
	sub r4, r4, #3
	blo _0800981C
	LDR r3, [sp, #0x1c]
	mov r2, #7
	STR r3, [sp]
	LDR r3, [sp, #0x34]
	mov r1, #8
	mov r0, r7
	bl sub_8009064
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
_0800989C
	add r0, sp, #0x10
	STMIA r0, {r4, r6}
	STR r5, [sp, #0xc]
	add r8, sp, #0xc
	mov r2, #0x100
	STMIA sp, {r2, r8}
	LDR r2, [sp, #0x30]
	mov r0, r7
	mov r3, #0
	mov r1, sl
	bl sub_8009270
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	ldrh r2, [sl, #0x10]
	mov r3, #0x100
	mov r1, sl
	STMIA sp, {r2, r8}
	LDR r2, [sp, #0x30]
	mov r0, r7
	bl sub_8009270
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	LDR r3, [sp, #0x24]
	add r6, sp, #0xc
	LDMIA r6, {r4, r5, r6}
	STR r3, [sp]
	LDR r3, [sp, #0x30]
	mov r2, #0xc
	mov r1, #0x290
	mov r0, r7
	bl sub_8009064
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	LDR r0, [sp, #0x2c]
	mov r2, #0xf9
	LDRB r0, [r0, #0xc80]
	mov r3, #0
	mov r1, sl
	cmp r0, #0
	movne r0, #1
	STRNE r0, [sl, #0x30]
	STMIA sp, {r2, r8}
	add r0, sp, #0xc
	STMIA r0, {r4, r5, r6}
	LDR r2, [sp, #0x28]
	mov r0, r7
	bl sub_8009270
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	LDR r3, [sp, #0x20]
	add r6, sp, #0x10
	LDMIA r6, {r4, r6}
	STR r3, [sp]
	LDR r3, [sp, #0x28]
	LDR r5, [sp, #0xc]
	mov r2, #0xc
	mov r1, #0xfa
	mov r0, r7
	bl sub_8009064
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	b _0800A1D8
_080099D0
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _080099D0
_080099F4
	cmp r4, #0x10
	subgt r6, r6, #2
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	LDRB r2, [r6, #5]
	orr r0, r0, r1, lsl #8
	LDRB r1, [r6, #2]
	orr r0, r0, r1, lsl #16
	LDRB r1, [r6, #3]
	orr sb, r0, r1, lsl #24
	LDRB r1, [r6, #4]
	orr r1, r1, r2, lsl #8
	LDRB r2, [r6, #6]
	orr r1, r1, r2, lsl #16
	LDRB r2, [r6, #7]
	orr fp, r1, r2, lsl #24
	LDRB r1, [r6, #8]
	LDRB r2, [r6, #9]
	orr r1, r1, r2, lsl #8
	LDRB r2, [r6, #0xa]
	orr r1, r1, r2, lsl #16
	LDRB r2, [r6, #0xb]
	add r6, r6, #0xc
	orr r1, r1, r2, lsl #24
	STR r1, [sp, #0x18]
	b _0800A1D8
_08009A5C
	LDR r1, [sp, #0x40]
	cmp r8, r1
	LDRGT r8, [sp, #0x40]
	LDR r1, [sp, #0x40]
	sub r0, r0, r8
	sub r1, r1, r8
	STR r1, [sp, #0x40]
	STR r0, [sl, #0x20]
	ldrh r0, [sl, #0x18]
	cmp r0, #1
	beq _08009AB0
	cmp r0, #2
	beq _08009D50
	cmp r0, #3
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	cmp r8, #0
	beq _0800A1D8
	b _0800A180
_08009AB0
	cmp r8, #0
	ble _0800A1D8
_08009AB8
	cmp r4, #0x10
	bge _08009AE4
_08009AC0
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _08009AC0
_08009AE4
	LDR r3, [sp, #0x24]
	MOV r0, r5, LSR #0x14
	add r0, r3, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0x290
	blo _08009B38
	mov r0, #0x100000
_08009B00
	MOV r0, r0, LSR #1
	MOV r2, r1, LSL #1
	ands r1, r5, r0
	movne r1, #1
	cmp r0, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r1, r1, r2
	bxeq lr
	add r1, r3, r1, lsl #1
	ldrh r1, [r1]
	cmp r1, #0x290
	bhs _08009B00
_08009B38
	add r0, r1, sl
	add r0, r0, #0x2000
	LDRB r0, [r0, #0xb98]
	cmp r1, #0x100
	MOV r5, r5, LSL r0
	sub r4, r4, r0
	bge _08009B80
	LDR r0, [r7, #0xc]
	sub r8, r8, #1
	add r2, r0, #1
	STR r2, [r7, #0xc]
	LDR r2, [r7, #8]
	STRB r1, [r2, r0]
	add r1, r7, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r7, #0xc]
	b _08009D44
_08009B80
	sub ip, r1, #0x100
	and r2, ip, #7
	cmp r2, #7
	bne _08009C28
	cmp r4, #0x10
	bge _08009BBC
_08009B98
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _08009B98
_08009BBC
	LDR lr, [sp, #0x20]
	MOV r0, r5, LSR #0x14
	add r0, lr, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0xfa
	blo _08009C10
	mov r0, #0x100000
_08009BD8
	MOV r0, r0, LSR #1
	MOV r3, r1, LSL #1
	ands r1, r5, r0
	movne r1, #1
	cmp r0, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r1, r1, r3
	bxeq lr
	add r1, lr, r1, lsl #1
	ldrh r1, [r1]
	cmp r1, #0xfa
	bhs _08009BD8
_08009C10
	add r0, r1, sl
	add r0, r0, #0x5000
	LDRB r0, [r0, #0x250]
	add r2, r2, r1
	MOV r5, r5, LSL r0
	sub r4, r4, r0
_08009C28
	MOV r1, ip, ASR #3
	cmp r1, #2
	add r0, r2, #2
	bls _08009CB4
	cmp r1, #3
	moveq r1, #1
	beq _08009CA4
	LDR r2, _08009E24
	LDRB r2, [r2, r1]
	cmp r2, #0
	moveq r3, #0
	beq _08009C94
	cmp r4, r2
	bge _08009C84
_08009C60
	LDRB r3, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r3, r3, ip, lsl #8
	rsb ip, r4, #0x10
	add r4, r4, #0x10
	cmp r4, r2
	orr r5, r5, r3, lsl ip
	blt _08009C60
_08009C84
	rsb r3, r2, #0x20
	MOV r3, r5, LSR r3
	MOV r5, r5, LSL r2
	sub r4, r4, r2
_08009C94
	LDR r2, _08009E28
	LDR r1, [r2, r1, lsl #2]
	add r1, r1, r3
	sub r1, r1, #2
_08009CA4
	STR fp, [sp, #0x18]
	mov fp, sb
	mov sb, r1
	b _08009CE0
_08009CB4
	cmp r1, #0
	moveq r1, sb
	beq _08009CE0
	cmp r1, #1
	moveq r1, fp
	moveq fp, sb
	moveq sb, r1
	beq _08009CE0
	LDR r1, [sp, #0x18]
	STR sb, [sp, #0x18]
	mov sb, r1
_08009CE0
	LDR r2, [r7, #0xc]
	sub r8, r8, r0
	sub r1, r2, r1
	LDR r2, [r7, #0x10]
	and r2, r2, r1
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	ble _08009D44
_08009D04
	LDR r1, [r7, #8]
	add r3, r2, #1
	LDRB ip, [r1, r2]
	LDR r2, [r7, #0xc]
	add lr, r2, #1
	STR lr, [r7, #0xc]
	STRB ip, [r1, r2]
	LDR r1, [r7, #0x10]
	LDR r2, [r7, #0xc]
	and r2, r2, r1
	STR r2, [r7, #0xc]
	and r2, r1, r3
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	bgt _08009D04
_08009D44
	cmp r8, #0
	bgt _08009AB8
	b _0800A1D8
_08009D50
	cmp r8, #0
	ble _0800A1D8
_08009D58
	cmp r4, #0x10
	bge _08009D84
_08009D60
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _08009D60
_08009D84
	LDR r3, [sp, #0x24]
	MOV r0, r5, LSR #0x14
	add r0, r3, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0x290
	blo _08009DD8
	mov r0, #0x100000
_08009DA0
	MOV r0, r0, LSR #1
	MOV r2, r1, LSL #1
	ands r1, r5, r0
	movne r1, #1
	cmp r0, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r1, r1, r2
	bxeq lr
	add r1, r3, r1, lsl #1
	ldrh r1, [r1]
	cmp r1, #0x290
	bhs _08009DA0
_08009DD8
	add r0, r1, sl
	add r0, r0, #0x2000
	LDRB r0, [r0, #0xb98]
	cmp r1, #0x100
	MOV r5, r5, LSL r0
	sub r4, r4, r0
	bge _08009E2C
	LDR r0, [r7, #0xc]
	sub r8, r8, #1
	add r2, r0, #1
	STR r2, [r7, #0xc]
	LDR r2, [r7, #8]
	STRB r1, [r2, r0]
	add r1, r7, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r7, #0xc]
	b _0800A174
	ALIGN
_08009E20 DCDU __VTABLE__378dword_803EDE8
_08009E24 DCDU gUnknown_0804AB34
_08009E28 DCDU gUnknown_0804AA68
_08009E2C
	sub ip, r1, #0x100
	and r2, ip, #7
	cmp r2, #7
	bne _08009ED4
	cmp r4, #0x10
	bge _08009E68
_08009E44
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _08009E44
_08009E68
	LDR lr, [sp, #0x20]
	MOV r0, r5, LSR #0x14
	add r0, lr, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0xfa
	blo _08009EBC
	mov r0, #0x100000
_08009E84
	MOV r0, r0, LSR #1
	MOV r3, r1, LSL #1
	ands r1, r5, r0
	movne r1, #1
	cmp r0, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r1, r1, r3
	bxeq lr
	add r1, lr, r1, lsl #1
	ldrh r1, [r1]
	cmp r1, #0xfa
	bhs _08009E84
_08009EBC
	add r0, r1, sl
	add r0, r0, #0x5000
	LDRB r0, [r0, #0x250]
	add r2, r2, r1
	MOV r5, r5, LSL r0
	sub r4, r4, r0
_08009ED4
	add r0, r2, #2
	MOV r2, ip, ASR #3
	cmp r2, #2
	bls _0800A0E4
	LDR r1, _08009E24
	LDR r3, _08009E28
	LDRB r1, [r1, r2]
	LDR r2, [r3, r2, lsl #2]
	sub r3, r2, #2
	cmp r1, #3
	ble _08009FE8
	subs r1, r1, #3
	moveq r2, #0
	beq _08009F48
	cmp r4, r1
	bge _08009F38
_08009F14
	LDRB r2, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r2, r2, ip, lsl #8
	rsb ip, r4, #0x10
	add r4, r4, #0x10
	cmp r4, r1
	orr r5, r5, r2, lsl ip
	blt _08009F14
_08009F38
	rsb r2, r1, #0x20
	MOV r2, r5, LSR r2
	MOV r5, r5, LSL r1
	sub r4, r4, r1
_08009F48
	add ip, r3, r2, lsl #3
	cmp r4, #0x10
	bge _08009F78
_08009F54
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r2
	blt _08009F54
_08009F78
	LDR lr, [sp, #0x1c]
	MOV r1, r5, LSR #0x19
	add r1, lr, r1, lsl #1
	ldrh r2, [r1]
	cmp r2, #8
	blo _08009FCC
	mov r1, #0x2000000
_08009F94
	MOV r1, r1, LSR #1
	MOV r3, r2, LSL #1
	ands r2, r5, r1
	movne r2, #1
	cmp r1, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r2, r2, r3
	bxeq lr
	add r2, lr, r2, lsl #1
	ldrh r2, [r2]
	cmp r2, #8
	bhs _08009F94
_08009FCC
	add r1, r2, sl
	add r1, r1, #0x5000
	LDRB r1, [r1, #0x4aa]
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	add r1, ip, r2
	b _0800A0D4
_08009FE8
	bne _0800A088
	cmp r4, #0x10
	bge _0800A018
_08009FF4
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r2
	blt _08009FF4
_0800A018
	LDR lr, [sp, #0x1c]
	MOV r1, r5, LSR #0x19
	add r1, lr, r1, lsl #1
	ldrh r2, [r1]
	cmp r2, #8
	blo _0800A06C
	mov r1, #0x2000000
_0800A034
	MOV r1, r1, LSR #1
	MOV ip, r2, LSL #1
	ands r2, r5, r1
	movne r2, #1
	cmp r1, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r2, r2, ip
	bxeq lr
	add r2, lr, r2, lsl #1
	ldrh r2, [r2]
	cmp r2, #8
	bhs _0800A034
_0800A06C
	add r1, r2, sl
	add r1, r1, #0x5000
	LDRB r1, [r1, #0x4aa]
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	add r1, r3, r2
	b _0800A0D4
_0800A088
	cmp r1, #0
	movle r1, #1
	ble _0800A0D4
	cmp r4, r1
	bge _0800A0C0
_0800A09C
	LDRB r2, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r2, r2, ip, lsl #8
	rsb ip, r4, #0x10
	add r4, r4, #0x10
	cmp r4, r1
	orr r5, r5, r2, lsl ip
	blt _0800A09C
_0800A0C0
	rsb r2, r1, #0x20
	MOV r2, r5, LSR r2
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	add r1, r3, r2
_0800A0D4
	STR fp, [sp, #0x18]
	mov fp, sb
	mov sb, r1
	b _0800A110
_0800A0E4
	cmp r2, #0
	moveq r1, sb
	beq _0800A110
	cmp r2, #1
	moveq r1, fp
	moveq fp, sb
	moveq sb, r1
	beq _0800A110
	LDR r1, [sp, #0x18]
	STR sb, [sp, #0x18]
	mov sb, r1
_0800A110
	LDR r2, [r7, #0xc]
	sub r8, r8, r0
	sub r1, r2, r1
	LDR r2, [r7, #0x10]
	and r2, r2, r1
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	ble _0800A174
_0800A134
	LDR r1, [r7, #8]
	add r3, r2, #1
	LDRB ip, [r1, r2]
	LDR r2, [r7, #0xc]
	add lr, r2, #1
	STR lr, [r7, #0xc]
	STRB ip, [r1, r2]
	LDR r1, [r7, #0x10]
	LDR r2, [r7, #0xc]
	and r2, r2, r1
	STR r2, [r7, #0xc]
	and r2, r1, r3
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	bgt _0800A134
_0800A174
	cmp r8, #0
	bgt _08009D58
	b _0800A1D8
_0800A180
	LDR r0, [r7, #0x10]
	add r1, r0, #1
	LDR r0, [r7, #0xc]
	sub r1, r1, r0
	cmp r1, r8
	movhs r1, r8
	STR r1, [sp, #8]
	LDR r1, [r7, #8]
	LDR r2, [sp, #8]
	add r0, r1, r0
	mov r1, r6
	bl __rt_memcpy
	LDR r0, [r7, #0xc]
	LDR r1, [sp, #8]
	add r0, r0, r1
	LDR r1, [r7, #0x10]
	and r0, r0, r1
	STR r0, [r7, #0xc]
	LDR r1, [sp, #8]
	add r6, r6, r1
	subs r8, r8, r1
	bne _0800A180
_0800A1D8
	LDR r0, [sl, #0x20]
	LDR r1, [sp, #0x40]
	mov r8, r0
	cmp r0, #0
	ble _0800A1F8
	cmp r1, #0
	bgt _08009A5C
	b _0800A200
_0800A1F8
	cmp r1, #0
	bgt _080096F8
_0800A200
	LDR r1, [sp, #0x40]
	cmp r1, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	stmib sl, {sb, fp}
	LDR r1, [sp, #0x18]
	STR r1, [sl, #0xc]
	LDR r0, [sl, #0x24]
	add r1, r0, #1
	STR r1, [sl, #0x24]
	add sp, sp, #0x44
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr
	END
