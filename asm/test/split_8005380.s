    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_080495B8
	IMPORT gUnknown_0804A8F0
	IMPORT sub_80062F4
	IMPORT sub_8006350
	IMPORT sub_8006BA4
	IMPORT sub_8007C78
	IMPORT sub_8007D44
	IMPORT sub_8007ED8
	IMPORT sub_8007F18
	IMPORT sub_803BF10

	arm_func_start sub_8005380
sub_8005380 ;@ 0x08005380
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r2, #0
	LDRNE r0, [r4, #0x3c]
	mov r5, r1
	STRNE r0, [r2]
	LDRB r0, [r4]
	cmp r0, #4
	cmpne r0, #5
	bne _080053C0
	LDR r1, [r4, #0xc]
	LDR r0, [r5, #0x24]
	LDR r3, [r5, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
_080053C0
	LDRB r0, [r4]
	cmp r0, #6
	moveq r1, r5
	LDREQ r0, [r4, #4]
	bleq sub_8006BA4
	mov r0, #0
	STRB r0, [r4]
	STR r0, [r4, #0x1c]
	STR r0, [r4, #0x20]
	LDR r0, [r4, #0x28]
	STR r0, [r4, #0x34]
	STR r0, [r4, #0x30]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_80053F8
sub_80053F8 ;@ 0x080053F8
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	LDR r0, [r0, #0x24]
	LDR r3, [r4, #0x1c]
	mov r7, r1
	mov r6, r2
	mov r2, #1
	mov r1, #0x40
	mov lr, pc
	bx r3
	movs r5, r0
	moveq r0, r5
	LDMEQFD SP!, {r3, r4, r5, r6, r7, lr}
	bxeq lr
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x1c]
	mov r2, #2
	mov r1, #0x2d00
	mov lr, pc
	bx r3
	STR r0, [r5, #0x24]
	cmp r0, #0
	LDR r0, [r4, #0x24]
	bne _08005478
	LDR r3, [r4, #0x20]
	mov r2, #1
	mov r1, r5
	mov lr, pc
	bx r3
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr
_08005478
	LDR r3, [r4, #0x1c]
	mov r2, #3
	mov r1, r6
	mov lr, pc
	bx r3
	STR r0, [r5, #0x28]
	cmp r0, #0
	bne _080054D4
	LDR r1, [r5, #0x24]
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x20]
	mov r2, #2
	mov lr, pc
	bx r3
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #1
	mov r1, r5
	mov lr, pc
	bx r3
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr
_080054D4
	add r0, r0, r6
	STR r0, [r5, #0x2c]
	STR r7, [r5, #0x38]
	mov r0, #0
	STRB r0, [r5]
	mov r0, r5
	mov r2, #0
	mov r1, r4
	bl sub_8005380
	mov r0, r5
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr

	arm_func_start sub_8005504
sub_8005504 ;@ 0x08005504
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add r7, r0, #0x1c
	LDMIA r7, {r5, r7}
	LDR r8, [r1, #4]
	LDR sb, [r1]
	add sl, r0, #0x30
	mov r4, r0
	LDMIA sl, {r0, sl}
	sub sp, sp, #0x34
	cmp r0, sl
	LDRLS r0, [r4, #0x2c]
	mov fp, r2
	sub r0, r0, sl
	subhi r0, r0, #1
	STR r0, [sp, #0x28]
	mov r6, r1
_08005544
	LDRB r0, [r4]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
jmptb_08005550
	b _08006204
jmptb_08005554
	b _0800557C
jmptb_08005558
	b _0800572C
jmptb_0800555C
	b _08005820
jmptb_08005560
	b _080059D4
jmptb_08005564
	b _08005B38
jmptb_08005568
	b _08005EE4
jmptb_0800556C
	b _08006068
jmptb_08005570
	b _08006118
jmptb_08005574
	b _08006184
jmptb_08005578
	b _080061C4
_0800557C
	cmp r5, #3
	bhs _080055A8
_08005584
	cmp r8, #0
	beq _08005624
	LDRB r0, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r0, lsl r5
	add r5, r5, #8
	cmp r5, #3
	blo _08005584
_080055A8
	and r0, r7, #7
	and r1, r0, #1
	STR r1, [r4, #0x18]
	MOVS r0, r0, LSR #1
	beq _08005664
	cmp r0, #1
	beq _08005684
	cmp r0, #2
	beq _08005718
	cmp r0, #3
	bne _08005544
	mov r2, #9
	STRB r2, [r4]
	MOV r0, r7, LSR #3
	STR r0, [r4, #0x20]
	sub r1, r5, #3
	STR r1, [r4, #0x1c]
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b sub_8007F18
_08005624
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08005664
	sub r1, r5, #3
	and r0, r1, #7
	MOV r2, r7, LSR #3
	MOV r7, r2, LSR r0
	sub r5, r1, r0
	mov r0, #1
	STRB r0, [r4]
	b _08005544
_08005684
	STR r6, [sp]
	add r3, sp, #0x18
	add r2, sp, #0x1c
	add r1, sp, #0x20
	add r0, sp, #0x24
	bl sub_8007ED8
	STR r6, [sp]
	LDR r1, [sp, #0x20]
	LDR r0, [sp, #0x24]
	LDR r2, [sp, #0x1c]
	LDR r3, [sp, #0x18]
	bl sub_80062F4
	STR r0, [r4, #4]
	cmp r0, #0
	bne _08005704
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r0, r4
	mov r1, r6
	mvn r2, #3
	bl sub_8007F18
	add sp, sp, #0x34
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08005704
	mov r0, #6
	STRB r0, [r4]
	MOV r7, r7, LSR #3
	sub r5, r5, #3
	b _08005544
_08005718
	mov r0, #3
	STRB r0, [r4]
	MOV r7, r7, LSR #3
	sub r5, r5, #3
	b _08005544
_0800572C
	cmp r5, #0x20
	bhs _08005758
_08005734
	cmp r8, #0
	beq _080057B4
	LDRB r0, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r0, lsl r5
	add r5, r5, #8
	cmp r5, #0x20
	blo _08005734
_08005758
	MOV r0, r7, LSL #0x10
	MOV r0, r0, LSR #0x10
	mvn r1, r7
	cmp r0, r1, lsr #16
	beq _080057F4
	mov r0, #9
	STRB r0, [r4]
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b sub_8007F18
_080057B4
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_080057F4
	mov r5, #0
	STR r0, [r4, #4]
	cmp r0, #0
	movne r0, #2
	mov r7, r5
	bne _08005818
	LDR r0, [r4, #0x18]
	cmp r0, #0
	movne r0, #7
_08005818
	STRB r0, [r4]
	b _08005544
_08005820
	cmp r8, #0
	bne _08005868
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08005868
	LDR r0, [sp, #0x28]
	cmp r0, #0
	bne _08005958
	LDR r2, [r4, #0x2c]
	cmp r2, sl
	bne _080058AC
	LDR r0, [r4, #0x30]
	LDR r1, [r4, #0x28]
	cmp r0, r1
	beq _080058AC
	mov sl, r1
	subhi r0, r0, sl
	subhi r1, r0, #1
	subls r1, r2, sl
	STR r1, [sp, #0x28]
	cmp r1, #0
	bne _08005958
_080058AC
	mov r2, fp
	mov r1, r6
	STR sl, [r4, #0x34]
	mov r0, r4
	bl sub_8007F18
	add sl, r4, #0x30
	LDMIA sl, {r1, sl}
	cmp r1, sl
	LDRLS r2, [r4, #0x2c]
	subhi r2, r1, sl
	subhi r2, r2, #1
	subls r2, r2, sl
	STR r2, [sp, #0x28]
	LDR ip, [r4, #0x2c]
	cmp ip, sl
	bne _0800590C
	LDR r3, [r4, #0x28]
	cmp r1, r3
	beq _0800590C
	mov sl, r3
	subhi r1, r1, sl
	subhi r1, r1, #1
	subls r1, ip, sl
	STR r1, [sp, #0x28]
_0800590C
	LDR r1, [sp, #0x28]
	cmp r1, #0
	bne _08005958
	add r1, r4, #0x1c
	STMIA r1, {r5, r7}
	STR r8, [r6, #4]
	LDR r2, [r6]
	LDR r1, [r6, #8]
	sub r2, sb, r2
	add r1, r1, r2
	STR r1, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0x34
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08005958
	LDR r0, [r4, #4]
	LDR r1, [sp, #0x28]
	STR r0, [sp, #0x2c]
	cmp r0, r8
	STRHI r8, [sp, #0x2c]
	LDR r0, [sp, #0x2c]
	mov fp, #0
	cmp r0, r1
	LDRHI r0, [sp, #0x28]
	mov r1, sb
	STRHI r0, [sp, #0x2c]
	LDR r2, [sp, #0x2c]
	mov r0, sl
	bl sub_803BF10
	LDR r0, [sp, #0x2c]
	LDR r1, [sp, #0x28]
	add sb, sb, r0
	sub r1, r1, r0
	STR r1, [sp, #0x28]
	sub r8, r8, r0
	add sl, sl, r0
	LDR r0, [r4, #4]
	LDR r1, [sp, #0x2c]
	subs r0, r0, r1
	STR r0, [r4, #4]
	bne _08005544
	LDR r0, [r4, #0x18]
	cmp r0, #0
	movne r0, #7
	STRB r0, [r4]
	b _08005544
_080059D4
	cmp r5, #0xe
	bhs _08005A00
_080059DC
	cmp r8, #0
	beq _08005A70
	LDRB r0, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r0, lsl r5
	add r5, r5, #8
	cmp r5, #0xe
	blo _080059DC
_08005A00
	MOV r0, r7, LSL #0x12
	MOV r0, r0, LSR #0x12
	and r1, r0, #0x1f
	cmp r1, #0x1d
	STR r0, [r4, #4]
	bhi _08005A28
	MOV r0, r0, LSL #0x16
	mov r2, #0x1d
	cmp r2, r0, lsr #27
	bhs _08005AB0
_08005A28
	mov r0, #9
	STRB r0, [r4]
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b sub_8007F18
_08005A70
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08005AB0
	add r0, r1, r0, lsr #27
	add r0, r0, #0x100
	add r0, r0, #2
	MOV r1, r0, LSL #2
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x1c]
	mov r2, #4
	mov lr, pc
	bx r3
	STR r0, [r4, #0xc]
	cmp r0, #0
	bne _08005B20
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #3
	b sub_8007F18
_08005B20
	mov r0, #0
	STR r0, [r4, #8]
	mov r0, #4
	STRB r0, [r4]
	MOV r7, r7, LSR #0xe
	sub r5, r5, #0xe
_08005B38
	LDR r1, [r4, #4]
	LDR r0, [r4, #8]
	mov r3, #4
	add r1, r3, r1, lsr #10
	cmp r0, r1
	bhs _08005BB8
	LDR ip, _080062EC ;@ =gUnknown_080495B8
_08005B54
	cmp r5, #3
	bhs _08005B80
_08005B5C
	cmp r8, #0
	beq _08005BD0
	LDRB r0, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r0, lsl r5
	add r5, r5, #8
	cmp r5, #3
	blo _08005B5C
_08005B80
	LDR r0, [r4, #8]
	and r1, r7, #7
	add r2, r0, #1
	STR r2, [r4, #8]
	LDR r0, [ip, r0, lsl #2]
	LDR r2, [r4, #0xc]
	MOV r7, r7, LSR #3
	STR r1, [r2, r0, lsl #2]
	LDR r1, [r4, #4]
	LDR r0, [r4, #8]
	add r1, r3, r1, lsr #10
	cmp r0, r1
	sub r5, r5, #3
	blo _08005B54
_08005BB8
	LDR r0, [r4, #8]
	cmp r0, #0x13
	bhs _08005C34
	LDR r3, _080062EC ;@ =gUnknown_080495B8
	mov r1, #0
	b _08005C10
_08005BD0
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08005C10
	LDR r0, [r4, #8]
	add r2, r0, #1
	STR r2, [r4, #8]
	LDR r0, [r3, r0, lsl #2]
	LDR r2, [r4, #0xc]
	STR r1, [r2, r0, lsl #2]
	LDR r0, [r4, #8]
	cmp r0, #0x13
	blo _08005C10
_08005C34
	mov r0, #7
	STR r0, [r4, #0x10]
	STR r6, [sp]
	LDR r0, [r4, #0xc]
	LDR r3, [r4, #0x24]
	add r2, r4, #0x14
	add r1, r4, #0x10
	bl sub_8007C78
	cmp r0, #0
	beq _08005CC8
	mov fp, r0
	cmn r0, #3
	bne _08005C88
	LDR r1, [r4, #0xc]
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
	mov r0, #9
	STRB r0, [r4]
_08005C88
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08005CC8
	mov r0, #0
	STR r0, [r4, #8]
	mov r0, #5
	STRB r0, [r4]
	b _08005EE4
_08005CDC
	LDR r0, [r4, #0x10]
	cmp r5, r0
	bhs _08005D0C
_08005CE8
	cmp r8, #0
	beq _08005D4C
	LDRB r1, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r1, lsl r5
	add r5, r5, #8
	cmp r5, r0
	blo _08005CE8
_08005D0C
	LDR lr, _080062F0 ;@ =gUnknown_0804A8F0
	LDR r1, [r4, #0x14]
	LDR r0, [lr, r0, lsl #2]
	and r0, r0, r7
	add r0, r1, r0, lsl #3
	LDRB r1, [r0, #1]
	LDR r2, [r0, #4]
	cmp r2, #0x10
	bhs _08005D8C
	add r0, r3, #1
	STR r0, [r4, #8]
	LDR r0, [r4, #0xc]
	MOV r7, r7, LSR r1
	sub r5, r5, r1
	STR r2, [r0, r3, lsl #2]
	b _08005EE4
_08005D4C
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08005D8C
	cmp r2, #0x12
	subne r0, r2, #0xe
	moveq r0, #7
	movne ip, #3
	moveq ip, #0xb
	add lr, r1, r0
	cmp lr, r5
	STR ip, [sp, #0x24]
	bls _08005DD4
_08005DB0
	cmp r8, #0
	beq _08005E7C
	LDRB ip, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, ip, lsl r5
	add r5, r5, #8
	cmp lr, r5
	bhi _08005DB0
_08005DD4
	MOV ip, r7, LSR r1
	LDR lr, _080062F0 ;@ =gUnknown_0804A8F0
	sub r1, r5, r1
	LDR lr, [lr, r0, lsl #2]
	LDR r5, [sp, #0x24]
	and lr, lr, ip
	add lr, lr, r5
	sub r5, r1, r0
	MOV r7, ip, LSR r0
	LDR r0, [sp, #0x30]
	add r1, r3, lr
	cmp r0, r1
	blo _08005E1C
	cmp r2, #0x10
	movne r1, #0
	bne _08005EC8
	cmp r3, #1
	bhs _08005EBC
_08005E1C
	LDR r1, [r4, #0xc]
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
	mov r0, #9
	STRB r0, [r4]
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b sub_8007F18
_08005E7C
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08005EBC
	LDR r0, [r4, #0xc]
	add r0, r0, r3, lsl #2
	LDR r1, [r0, #-4]
_08005EC8
	mov r0, r3
	LDR r2, [r4, #0xc]
	add r3, r3, #1
	subs lr, lr, #1
	STR r1, [r2, r0, lsl #2]
	bne _08005EC8
	STR r3, [r4, #8]
_08005EE4
	LDR r0, [r4, #4]
	and r1, r0, #0x1f
	MOV r0, r0, LSL #0x16
	add r0, r1, r0, lsr #27
	add r0, r0, #0x100
	add r0, r0, #2
	STR r0, [sp, #0x30]
	LDR r3, [r4, #8]
	cmp r0, r3
	bhi _08005CDC
	mov r0, #0
	STR r0, [r4, #0x14]
	mov r0, #9
	STR r0, [sp, #0x24]
	mov r0, #6
	STR r0, [sp, #0x20]
	LDR r2, [r4, #0x24]
	LDR ip, [r4, #4]
	add r0, sp, #0x1c
	add r1, sp, #0x18
	stmib sp, {r0, r1, r2, r6}
	mov r1, #1
	MOV r0, ip, LSL #0x16
	add r1, r1, r0, lsr #27
	add r3, sp, #0x20
	STR r3, [sp]
	and r0, ip, #0x1f
	add r0, r0, #0x100
	add r0, r0, #1
	LDR r2, [r4, #0xc]
	add r3, sp, #0x24
	bl sub_8007D44
	STR r0, [sp, #0x2c]
	cmp r0, #0
	beq _08005FE0
	LDR r0, [sp, #0x2c]
	cmn r0, #3
	bne _08005F9C
	LDR r1, [r4, #0xc]
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
	mov r0, #9
	STRB r0, [r4]
_08005F9C
	LDR r2, [sp, #0x2c]
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r0, r4
	mov r1, r6
	bl sub_8007F18
	add sp, sp, #0x34
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08005FE0
	STR r6, [sp]
	LDR r1, [sp, #0x20]
	LDR r0, [sp, #0x24]
	LDR r2, [sp, #0x1c]
	LDR r3, [sp, #0x18]
	bl sub_80062F4
	cmp r0, #0
	bne _08006044
	add r1, r4, #0x1c
	STMIA r1, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r0, r4
	mov r1, r6
	mvn r2, #3
	bl sub_8007F18
	add sp, sp, #0x34
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08006044
	STR r0, [r4, #4]
	LDR r1, [r4, #0xc]
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
	mov r0, #6
	STRB r0, [r4]
_08006068
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r0, r4
	mov r1, r6
	mov r2, fp
	bl sub_8006350
	cmp r0, #1
	beq _080060C0
	mov r2, r0
	mov r0, r4
	mov r1, r6
	add sp, sp, #0x34
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_080060C0
	mov fp, #0
	mov r1, r6
	LDR r0, [r4, #4]
	bl sub_8006BA4
	add sl, r4, #0x30
	LDMIA sl, {r0, sl}
	LDR r8, [r6, #4]
	LDR sb, [r6]
	add r7, r4, #0x1c
	LDMIA r7, {r5, r7}
	cmp r0, sl
	LDRLS r0, [r4, #0x2c]
	subls r1, r0, sl
	subhi r0, r0, sl
	subhi r1, r0, #1
	STR r1, [sp, #0x28]
	LDR r0, [r4, #0x18]
	cmp r0, #0
	STREQB r0, [r4]
	beq _08005544
	mov r0, #7
	STRB r0, [r4]
_08006118
	mov r2, fp
	mov r1, r6
	STR sl, [r4, #0x34]
	mov r0, r4
	bl sub_8007F18
	add sl, r4, #0x30
	LDMIA sl, {r1, sl}
	cmp r1, sl
	beq _0800617C
	add r1, r4, #0x1c
	STMIA r1, {r5, r7}
	STR r8, [r6, #4]
	LDR r2, [r6]
	LDR r1, [r6, #8]
	sub r2, sb, r2
	add r1, r1, r2
	STR r1, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0x34
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_0800617C
	mov r0, #8
	STRB r0, [r4]
_08006184
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r2, #1
	b sub_8007F18
_080061C4
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b sub_8007F18
_08006204
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #1
	b sub_8007F18

	arm_func_start sub_8006244
sub_8006244 ;@ 0x08006244
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #0
	bl sub_8005380
	LDR r1, [r5, #0x28]
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x20]
	mov r2, #3
	mov lr, pc
	bx r3
	LDR r1, [r5, #0x24]
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x20]
	mov r2, #2
	mov lr, pc
	bx r3
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #1
	mov r1, r5
	mov lr, pc
	bx r3
	LDMFD SP!, {r3, r4, r5, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_80062AC
sub_80062AC ;@ 0x080062AC
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, [r0, #0x28]
	mov r5, r2
	bl sub_803BF10
	LDR r0, [r4, #0x28]
	add r0, r0, r5
	STR r0, [r4, #0x34]
	STR r0, [r4, #0x30]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_80062D8
sub_80062D8 ;@ 0x080062D8
	LDRB r0, [r0]
	cmp r0, #1
	movne r0, #0
	moveq r0, #1
	bx lr
	ALIGN
_080062EC DCDU gUnknown_080495B8
_080062F0 DCDU gUnknown_0804A8F0
