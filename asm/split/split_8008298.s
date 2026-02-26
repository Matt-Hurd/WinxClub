	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033F4
	IMPORT gUnknown_0804A948
	IMPORT sub_803F4CC

	arm_func_start sub_8008298

sub_8008298
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	LDR r0, [r0, #0x28]
	add r7, r4, #0x20
	LDR sl, _08008AE0
	LDR sb, _08008ADC
	add r8, r0, r1
	b %8
2
	LDR r1, [r4, #0x24]
	cmp r1, #0xf
	bhs %3
	add r2, r0, #2
	STR r2, [r4, #0x28]
	ldrh r0, [r0]
	rsb r2, r1, #0x10
	MOV r0, r0, LSL r2
	LDR r2, [r4, #0x20]
	orr r0, r0, r2
	STR r0, [r4, #0x20]
	add r0, r1, #0x10
	STR r0, [r4, #0x24]
3
	LDR r2, [r4, #0x20]
	LDR r1, [r4, #0x2c]
	MOV r0, r2, LSR #0x17
	add r0, r1, r0, lsl #1
	ldrh r1, [r0]
	LDR r3, [r4, #0x24]
	MOV r1, r1, LSR #9
	sub r3, r3, r1
	MOV r1, r2, LSL r1
	add r2, r4, #0x20
	STMIA r2, {r1, r3}
	ldrh r0, [r0]
	bic r1, r0, #0xfe00
	cmp r1, #0x100
	blo %7
	subs r0, r1, #0x100
	moveq r0, #0
	STREQ r0, [r4, #0x4c]
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	add r0, sb, r0, lsl #3
	ldrh r5, [r0, #4]
	ldrh r1, [r0, #6]
	cmp r1, #0
	beq %4
	mov r0, r7
	bl sub_803F4CC
	add r5, r0, r5
4
	mov r1, #5
	mov r0, r7
	bl sub_803F4CC
	add r0, sb, r0, lsl #3
	ldrh r6, [r0]
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq %5
	mov r0, r7
	bl sub_803F4CC
	add r6, r0, r6
5
	LDR r0, [r4, #0x1c]
	sub r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r0, [r4, #0xc]
	LDR r1, [r4, #0x10]
	sub r0, r0, r6
	and r2, r0, r1
	subs r0, r5, #1
	blo %8
6
	LDR r1, [r4, #8]
	add r3, r2, #1
	LDRB ip, [r1, r2]
	LDR r2, [r4, #0xc]
	subs r0, r0, #1
	add lr, r2, #1
	STR lr, [r4, #0xc]
	STRB ip, [r1, r2]
	LDR r1, [r4, #0x10]
	LDR r2, [r4, #0xc]
	and r2, r2, r1
	STR r2, [r4, #0xc]
	and r2, r1, r3
	bhs %6
	b %8
7
	LDR r0, [r4, #0xc]
	add r2, r0, #1
	STR r2, [r4, #0xc]
	LDR r2, [r4, #8]
	STRB r1, [r2, r0]
	add r1, r4, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r4, #0xc]
	LDR r0, [r4, #0x1c]
	sub r0, r0, #1
	STR r0, [r4, #0x1c]
8
	LDR r0, [r4, #0x1c]
	cmp r0, #0
	LDMLEFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxle lr
	LDR r0, [sl]
	cmp r0, #0
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxne lr
	LDR r0, [r4, #0x28]
	cmp r0, r8
	blo %2
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr

	ALIGN
_08008ADC DCDU gUnknown_0804A948
_08008AE0 DCDU gUnknown_030033F4

	END
