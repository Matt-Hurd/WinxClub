	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_08049604
	IMPORT sub_8006F90

	arm_func_start sub_80076D0

sub_80076D0
	STMFD SP!, {r4, r5, r6, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #1
	bxeq lr
	LDRB r1, [r0]
	cmp r1, #0xd
	beq %25
	mov r1, #0xd
	STRB r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #0
	STR r0, [r1, #4]
25
	LDR r2, [r4, #4]
	cmp r2, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #4
	bxeq lr
	LDR r1, [r4]
	LDR r5, [r4, #0x18]
	mov lr, r1
	LDR ip, _080077E4
	LDR r0, [r5, #4]
	b %28
26
	LDRB r3, [r1]
	LDRB r6, [ip, r0]
	cmp r3, r6
	addeq r0, r0, #1
	beq %27
	cmp r3, #0
	rsbeq r0, r0, #4
	movne r0, #0
27
	add r1, r1, #1
	subs r2, r2, #1
	beq %29
28
	cmp r0, #4
	blo %26
29
	LDR r3, [r4, #8]
	sub ip, r1, lr
	add r3, r3, ip
	STMIA r4, {r1, r2, r3}
	STR r0, [r5, #4]
	cmp r0, #4
	LDMNEFD SP!, {r4, r5, r6, lr}
	mvnne r0, #2
	bxne lr
	LDR r5, [r4, #8]
	LDR r6, [r4, #0x14]
	mov r0, r4
	bl sub_8006F90
	STR r5, [r4, #8]
	STR r6, [r4, #0x14]
	LDR r1, [r4, #0x18]
	mov r0, #7
	STRB r0, [r1]
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #0
	bx lr

	ALIGN
_080077E4 DCDU gUnknown_08049604

	END
