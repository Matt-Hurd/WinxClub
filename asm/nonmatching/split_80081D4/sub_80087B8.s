	arm_func_start sub_80087B8
sub_80087B8
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov sb, r2
	LDR r2, [r4, #0x18]
	LDR r0, [r0, #0x1c]
	cmp r1, #0
	sub r5, r2, r0
	moveq r1, r5
	cmp r5, r1
	movle r1, r5
	mov r5, r1
	LDR r1, [r4, #0xc]
	sub sp, sp, #0x144
	add r0, r1, r0
	LDR r1, [r4, #0x10]
	and r0, r0, r1
	LDR r1, [r4, #8]
	add r0, r0, r1
	STR r0, [sp, #0x140]
	b %36
26
	LDR r0, [r4, #0x4c]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
jmpt_08008814
	b %36
jmpt_08008818
	b %27
jmpt_0800881C
	b %31
jmpt_08008820
	b %29
jmpt_08008824
	b %35
jmpt_08008828
	b %30
jmpt_0800882C
	b %28
jmpt_08008830
	b %36
jmpt_08008834
	b %37
27
	mov r1, #2
	add r0, r4, #0x20
	bl sub_803F4CC
	cmp r0, #0
	moveq r0, #5
	STREQ r0, [r4, #0x4c]
	beq %36
	cmp r0, #1
	moveq r0, #2
	STREQ r0, [r4, #0x4c]
	beq %36
	cmp r0, #2
	moveq r0, #1
	STREQ r0, [r4, #0x4c]
	beq %36
	cmp r0, #3
	moveq r0, #7
	STREQ r0, [r4, #0x4c]
	b %36
28
	LDR r0, [r4, #0x1c]
	add r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	sub r0, r1, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, sb
	bl sub_80085A4
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	add r1, r1, r0
	sub r0, r5, r0
	sub r5, r5, r0
	STR r1, [r4, #0x18]
	b %36
29
	LDR r0, [r4, #0x44]
	STR r0, [r4, #0x2c]
	add r0, r4, #0x2c
	bl sub_800844C
	mov r0, #0
	STR r0, [r4, #0x1c]
	mov r0, #4
	STR r0, [r4, #0x4c]
30
	LDR r0, [r4, #0x1c]
	add r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	sub r0, r1, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, sb
	bl sub_8008298
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	add r1, r1, r0
	sub r0, r5, r0
	sub r5, r5, r0
	STR r1, [r4, #0x18]
	b %36
31
	LDR r0, [r4, #0x24]
	cmp r0, #0xe
	bhs %32
	LDR r1, [r4, #0x28]
	add r2, r1, #2
	STR r2, [r4, #0x28]
	ldrh r1, [r1]
	rsb r2, r0, #0x10
	add r0, r0, #0x10
	MOV r1, r1, LSL r2
	LDR r2, [r4, #0x20]
	STR r0, [r4, #0x24]
	orr r1, r1, r2
	STR r1, [r4, #0x20]
32
	LDR r0, [r4, #0x20]
	LDR r2, [r4, #0x24]
	MOV r1, r0, LSR #0x1b
	add r7, r1, #0x100
	MOV r0, r0, LSL #5
	MOV r1, r0, LSR #0x1b
	add sl, r1, #1
	MOV r0, r0, LSL #5
	MOV r1, r0, LSR #0x1c
	add r8, r1, #4
	add r1, r4, #0x20
	MOV r0, r0, LSL #4
	sub r2, r2, #0xe
	STMIA r1, {r0, r2}
	mov r2, #0
	mov r1, #0
	mov r0, #0
	mov r6, sp
	mov r3, #0
	mov fp, #0
	STMIA r6, {r0, r1, r2, r3, fp}
	mov r6, #0
	cmp r8, #0
	add r7, r7, #1
	bls %34
	add fp, r4, #0x20
33
	mov r1, #3
	mov r0, fp
	bl sub_803F4CC
	LDR r1, _08008AF0
	LDRB r1, [r1, r6]
	add r6, r6, #1
	cmp r6, r8
	STRB r0, [sp, r1]
	blo %33
34
	LDR r0, [r4, #0x44]
	mov r6, sp
	STR r0, [r4, #0x38]
	add r0, r4, #0x38
	mov r8, r0
	mov r2, sp
	mov r1, #0x13
	bl sub_803DCE4
	add r2, r6, #1
	mov fp, r2
	add r1, r7, sl
	mov r0, r4
	bl sub_803DB3C
	LDR r0, [r4, #0x44]
	mov r2, fp
	STR r0, [r4, #0x2c]
	add r0, r4, #0x2c
	mov r1, r7
	bl sub_803DCE4
	LDR r1, [r4, #0x44]
	add r0, r1, r0, lsl #1
	STR r0, [r4, #0x38]
	add r0, r6, r7
	add r2, r0, #1
	mov r0, r8
	mov r1, sl
	bl sub_803DCE4
	mov r0, #0
	STR r0, [r4, #0x1c]
	mov r0, #3
	STR r0, [r4, #0x4c]
35
	LDR r0, [r4, #0x1c]
	add r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	sub r0, r1, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, sb
	bl sub_803DEF8
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	add r1, r1, r0
	sub r0, r5, r0
	sub r5, r5, r0
	STR r1, [r4, #0x18]
36
	cmp r5, #0
	ble %37
	LDR r0, _08008AE0
	LDR r0, [r0]
	cmp r0, #0
	beq %26
37
	LDR r0, [r4, #0x1c]
	cmp r0, #0
	movgt r0, #0
	STRGT r0, [r4, #0x1c]
	LDR r0, [sp, #0x140]
	add sp, sp, #0x144
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
