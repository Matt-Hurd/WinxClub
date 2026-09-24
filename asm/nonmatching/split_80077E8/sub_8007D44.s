	arm_func_start sub_8007D44
sub_8007D44
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r0, #0
	LDR r4, [sp, #0x60]
	STR r0, [sp, #0x18]
	LDR r6, [sp, #0x54]
	LDR r8, [sp, #0x50]
	LDR sb, [sp, #0x5c]
	LDR r0, [r4, #0x24]
	mov fp, r3
	LDR r3, [r4, #0x1c]
	mov sl, r2
	mov r2, #8
	add lr, pc, #0x4
	mov r1, #0x480
	bx r3
loc_8007D88
	movs r5, r0
	addeq sp, sp, #0x2c
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvneq r0, #3
	bxeq lr
	add r2, sp, #0x18
	add r0, sp, #0x10
	STMIA r0, {r2, r5}
	LDR r2, _08007F00
	mov r0, sl
	STMIA sp, {r2, r6, fp}
	mov r2, #1
	add r2, r2, #0x100
	STR sb, [sp, #0xc]
	LDR r3, _08007F04
	mov r1, r7
	bl sub_80077E8
	movs r6, r0
	bne %31
	LDR r0, [fp]
	cmp r0, #0
	bne %34
	b %32
31
	cmn r6, #4
	beq %33
32
	mvn r6, #2
33
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #8
	mov r1, r5
	mov lr, pc
	bx r3
	mov r0, r6
	add sp, sp, #0x2c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
34
	add r2, sp, #0x18
	add r0, sp, #0x10
	STMIA r0, {r2, r5}
	add r0, sp, #8
	STMIA r0, {r8, sb}
	LDR r2, _08007F08
	LDR r3, [sp, #0x58]
	STMIA sp, {r2, r3}
	LDR r1, [sp, #0x20]
	LDR r3, _08007F0C
	mov r2, #0
	add r0, sl, r7, lsl #2
	bl sub_80077E8
	movs r6, r0
	bne %35
	LDR r0, [r8]
	cmp r0, #0
	bne %38
	subs ip, r7, #0x100
	subhss ip, ip, #1
	bls %38
	b %36
35
	cmn r6, #5
	mvneq r6, #2
	beq %37
	cmn r6, #4
	beq %37
36
	mvn r6, #2
37
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #8
	mov r1, r5
	mov lr, pc
	bx r3
	mov r0, r6
	add sp, sp, #0x2c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
38
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #8
	mov r1, r5
	mov lr, pc
	bx r3
	add sp, sp, #0x2c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr

