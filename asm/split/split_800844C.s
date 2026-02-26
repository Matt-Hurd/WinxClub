	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0804AA38
	IMPORT gUnknown_0804AA48
	IMPORT gUnknown_0804AA58

	arm_func_start sub_800844C

sub_800844C
	STMFD SP!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x280
	mov r1, #7
	STR r1, [r0, #4]
	mov r1, #9
	STR r1, [r0, #8]
	mov r1, #0
	add lr, sp, #0x270
	mov r4, #0
	mov r2, #0
	mov r3, #0
	STMIA lr, {r1, r2, r3, r4}
	LDR r1, _08008AE4
	add r4, sp, #0x260
	LDMIA r1, {r2, r3, r5, r6}
	STMIA r4, {r2, r3, r5, r6}
	LDR r1, _08008AE8
	add r6, sp, #0x250
	LDMIA r1, {r2, r3, r4, r5}
	STMIA r6, {r2, r3, r4, r5}
	LDR r1, _08008AEC
	add r5, sp, #0x240
	LDMIA r1, {r2, r3, r4, r7}
	STMIA r5, {r2, r3, r4, r7}
	LDR r1, [sp, #0x250]
	add r2, sp, #0x254
	STRB r1, [sp, #0x277]
	LDMIA r2, {r1, r2}
	add r7, sp, #0x260
	add r1, r1, r2
	STRB r1, [sp, #0x278]
	LDR r1, [sp, #0x25c]
	mov r2, sp
	STRB r1, [sp, #0x279]
	mov r1, #0
	mov r8, sp
9
	LDR ip, [r6, r1, lsl #2]
	mov r3, #0
	cmp ip, #0
	bls %11
10
	LDR ip, [r7, r1, lsl #2]
	ldrh r4, [r2]
	add ip, ip, r3
	bic ip, ip, #0xfe00
	and r4, r4, #0xfe00
	orr r4, r4, ip
	strh r4, [r2]
	LDR ip, [r5, r1, lsl #2]
	bic r4, r4, #0xfe00
	orr ip, r4, ip, lsl #9
	strh ip, [r2], #2
	LDR ip, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp ip, r3
	bhi %10
11
	add r1, r1, #1
	cmp r1, #4
	blo %9
	mov r1, #4
	LDR r0, [r0]
	add r4, lr, #7
	add r5, lr, #9
	b %17
12
	LDRB ip, [r4], #1
	cmp ip, #0
	beq %16
13
	movs r2, r1
	beq %15
14
	ldrh lr, [r8]
	mov r3, r0
	add r0, r0, #2
	subs r2, r2, #1
	strh lr, [r3]
	bne %14
15
	subs ip, ip, #1
	add r8, r8, #2
	bne %13
16
	MOVS r1, r1, ASR #1
	addeq sp, sp, #0x280
	LDMEQFD SP!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
17
	cmp r4, r5
	bls %12
	add sp, sp, #0x280
	LDMFD SP!, {r4, r5, r6, r7, r8, lr}
	bx lr

	ALIGN
_08008AE4 DCDU gUnknown_0804AA38
_08008AE8 DCDU gUnknown_0804AA48
_08008AEC DCDU gUnknown_0804AA58

	END
