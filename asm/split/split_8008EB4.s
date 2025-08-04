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
	bne %1
	mov r0, #0x124
	add r0, r0, #0x5400
	bl __nw__FUi
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
1
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
	blo %2
	cmp r2, #0x15
	bls %3
2
	mov r0, #1
	bx lr
3
	cmp r2, #0x14
	moveq r2, #0x2a
	beq %4
	cmp r2, #0x15
	MOVNE r2, r2, LSL #1
	moveq r2, #0x32
4
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
5
	add r3, r1, r0
	add r3, r3, #0x2000
	add r0, r0, #1
	cmp r0, #0x290
	STRB r2, [r3, #0xb98]
	blt %5
	mov r0, #0
6
	add r3, r1, r0
	add r3, r3, #0x5000
	add r0, r0, #1
	cmp r0, #0xfa
	STRB r2, [r3, #0x250]
	blt %6
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
	blo %12
7
	mov r2, #0
	cmp r1, #0
	bls %11
	sub sl, sb, #1
8
	LDRB lr, [r3, r2]
	cmp lr, r0
	bne %10
	mov lr, ip
	add ip, ip, sb
	cmp ip, r8
	addhi sp, sp, #0x10
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movhi r0, #1
	bxhi lr
	mov r7, sl
	cmn sl, #1
	beq %10
9
	mov r6, lr
	add r6, r4, r6, lsl #1
	strh r2, [r6]
	add lr, lr, #1
	subs r7, r7, #1
	bhs %9
10
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r1
	blo %8
11
	add r0, r0, #1
	LDR r2, [sp, #8]
	and r0, r0, #0xff
	cmp r0, r2
	MOV sb, sb, LSR #1
	bls %7
12
	cmp ip, r8
	beq %22
	MOV r2, ip, LSL #0x10
	MOV r2, r2, LSR #0x10
	cmp r2, r8
	mov sb, #0
	bhs %14
13
	add lr, r4, r2, lsl #1
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r8
	strh sb, [lr]
	blo %13
14
	MOV ip, ip, LSL #0x10
	MOV r8, r8, LSL #0x10
	mov fp, #0x8000
	cmp r0, #0x10
	bhi %22
15
	mov r2, #0
	cmp r1, #0
	bls %21
	LDR lr, [sp, #8]
	sub sl, r0, lr
16
	LDRB lr, [r3, r2]
	cmp lr, r0
	bne %20
	MOV r6, ip, LSR #0x10
	mov lr, #0
	cmp sl, #0
	bls %19
17
	add r6, r4, r6, lsl #1
	ldrh r7, [r6]
	cmp r7, #0
	bne %18
	add r7, r4, r5, lsl #2
	strh sb, [r7]
	strh sb, [r7, #2]
	mov r7, r5
	strh r7, [r6]
	add r5, r5, #1
18
	rsb r7, lr, #0xf
	ldrh r6, [r6]
	MOV r7, ip, LSR r7
	tst r7, #1
	MOV r6, r6, LSL #1
	addne r6, r6, #1
	add lr, lr, #1
	cmp sl, lr
	bhi %17
19
	add lr, r4, r6, lsl #1
	add ip, ip, fp
	cmp ip, r8
	strh r2, [lr]
	addhi sp, sp, #0x10
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movhi r0, #1
	bxhi lr
20
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r1
	blo %16
21
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x10
	MOV fp, fp, LSR #1
	bls %15
22
	cmp ip, r8
	addeq sp, sp, #0x10
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bxeq lr
	cmp r1, #0
	bls %24
23
	LDRB r2, [r3, r0]
	cmp r2, #0
	addne sp, sp, #0x10
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #1
	bxne lr
	add r0, r0, #1
	bic r0, r0, #0x10000
	cmp r0, r1
	blo %23
24
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
25
	cmp r4, #4
	bge %27
26
	LDRB r2, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r2, r2, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #4
	orr r5, r5, r2, lsl r3
	blt %26
27
	add r3, r8, r1
	MOV r2, r5, LSR #0x1c
	add r1, r1, #1
	cmp r1, #0x14
	STRB r2, [r3, #0x104]
	MOV r5, r5, LSL #4
	sub r4, r4, #4
	blo %25
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
	bhs %50
	mov r2, #0
28
	cmp r4, #0x10
	bge %30
29
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r3
	blt %29
30
	MOV r1, r5, LSR #0x1a
	add r1, sl, r1, lsl #1
	ldrh r3, [r1]
	cmp r3, #0x14
	blo %32
	mov r1, #0x4000000
31
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
	bhs %31
32
	add r1, r3, r8
	LDRB r1, [r1, #0x104]
	cmp r3, #0x11
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	bne %36
	cmp r4, #4
	bge %34
33
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #4
	orr r5, r5, r1, lsl r3
	blt %33
34
	MOV r1, r5, LSR #0x1c
	add r3, r1, #3
	cmn r3, #1
	MOV r5, r5, LSL #4
	sub r4, r4, #4
	beq %49
35
	mov r1, r0
	STRB r2, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs %35
	b %49
36
	cmp r3, #0x12
	bne %40
	cmp r4, #5
	bge %38
37
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #5
	orr r5, r5, r1, lsl r3
	blt %37
38
	MOV r1, r5, LSR #0x1b
	add r3, r1, #0x13
	cmn r3, #1
	MOV r5, r5, LSL #5
	sub r4, r4, #5
	beq %49
39
	mov r1, r0
	STRB r2, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs %39
	b %49
40
	cmp r3, #0x13
	bne %48
	cmp r4, #1
	bge %42
41
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #1
	orr r5, r5, r1, lsl r3
	blt %41
42
	MOV r1, r5, LSR #0x1f
	sub r3, r4, #1
	cmp r3, #0x10
	add r1, r1, #4
	MOV ip, r5, LSL #1
	bge %44
43
	LDRB lr, [r6]
	LDRB r4, [r6, #1]
	add r6, r6, #2
	orr lr, lr, r4, lsl #8
	rsb r4, r3, #0x10
	add r3, r3, #0x10
	cmp r3, #0x10
	orr ip, ip, lr, lsl r4
	blt %43
44
	MOV lr, ip, LSR #0x1a
	add lr, sl, lr, lsl #1
	ldrh r4, [lr]
	cmp r4, #0x14
	blo %46
	mov lr, #0x4000000
45
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
	bhs %45
46
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
	blo %49
	and ip, ip, #0xff
47
	mov r1, r0
	STRB ip, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs %47
	b %49
48
	LDRB r1, [r7, r0]
	sub r3, r1, r3
	cmp r3, #0
	mov r1, r0
	addlt r3, r3, #0x11
	STRB r3, [r7, r1]
	add r0, r0, #1
49
	cmp r0, fp
	blo %28
50
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
	bne %57
	mov r3, #0
	mov ip, r3
51
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #1
	orr r5, r5, r1, lsl r2
	blt %51
	MOVS r1, r5, LSR #0x1f
	MOV r5, r5, LSL #1
	sub r4, r4, #1
	beq %56
	cmp r4, #0x10
	bge %53
52
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r2
	blt %52
53
	sub r1, r4, #0x10
	cmp r1, #0x10
	MOV r3, r5, LSR #0x10
	MOV r2, r5, LSL #0x10
	bge %55
54
	LDRB ip, [r6]
	LDRB lr, [r6, #1]
	add r6, r6, #2
	orr ip, ip, lr, lsl #8
	rsb lr, r1, #0x10
	add r1, r1, #0x10
	cmp r1, #0x10
	orr r2, r2, ip, lsl lr
	blt %54
55
	MOV ip, r2, LSR #0x10
	MOV r5, r2, LSL #0x10
	sub r4, r1, #0x10
56
	orr r1, ip, r3, lsl #16
	STR r0, [sl, #0x14]
	STR r1, [sl, #0x28]
57
	LDR r1, [sp, #0x40]
	cmp r1, #0
	ble %128
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
58
	LDR r0, [sl, #0x20]
	cmp r0, #0
	bne %126
	ldrh r0, [sl, #0x18]
	cmp r0, #3
	bne %59
	LDR r0, [sl, #0x1c]
	mov r4, #0
	tst r0, #1
	addne r6, r6, #1
	mov r5, #0
	b %60
59
	cmp r4, #3
	bge %61
60
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #3
	orr r5, r5, r0, lsl r1
	blt %60
61
	MOV r0, r5, LSR #0x1d
	sub r2, r4, #3
	cmp r2, #0x10
	strh r0, [sl, #0x18]
	MOV r3, r5, LSL #3
	bge %63
62
	LDRB r1, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r1, r1, ip, lsl #8
	rsb ip, r2, #0x10
	add r2, r2, #0x10
	cmp r2, #0x10
	orr r3, r3, r1, lsl ip
	blt %62
63
	MOV r1, r3, LSR #0x10
	MOV ip, r3, LSL #0x10
	sub r3, r2, #0x10
	cmp r3, #8
	bge %65
64
	LDRB r2, [r6]
	LDRB lr, [r6, #1]
	add r6, r6, #2
	orr r2, r2, lr, lsl #8
	rsb lr, r3, #0x10
	add r3, r3, #0x10
	cmp r3, #8
	orr ip, ip, r2, lsl lr
	blt %64
65
	MOV r2, ip, LSR #0x18
	orr r1, r2, r1, lsl #8
	STR r1, [sl, #0x1c]
	STR r1, [sl, #0x20]
	MOV r5, ip, LSL #8
	sub r4, r3, #8
	cmp r0, #1
	beq %69
	cmp r0, #2
	moveq r0, #0
	beq %66
	cmp r0, #3
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	mov r0, #1
	STR r0, [sl, #0x30]
	cmp r4, #0x10
	bge %71
	b %70
66
	cmp r4, #3
	bge %68
67
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #3
	orr r5, r5, r1, lsl r2
	blt %67
68
	add r2, sl, r0
	MOV r1, r5, LSR #0x1d
	add r2, r2, #0x5000
	add r0, r0, #1
	cmp r0, #8
	STRB r1, [r2, #0x4aa]
	MOV r5, r5, LSL #3
	sub r4, r4, #3
	blo %66
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
69
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
	b %126
70
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt %70
71
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
	b %126
72
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
	beq %73
	cmp r0, #2
	beq %93
	cmp r0, #3
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	cmp r8, #0
	beq %126
	b %125
73
	cmp r8, #0
	ble %126
74
	cmp r4, #0x10
	bge %76
75
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt %75
76
	LDR r3, [sp, #0x24]
	MOV r0, r5, LSR #0x14
	add r0, r3, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0x290
	blo %78
	mov r0, #0x100000
77
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
	bhs %77
78
	add r0, r1, sl
	add r0, r0, #0x2000
	LDRB r0, [r0, #0xb98]
	cmp r1, #0x100
	MOV r5, r5, LSL r0
	sub r4, r4, r0
	bge %79
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
	b %92
79
	sub ip, r1, #0x100
	and r2, ip, #7
	cmp r2, #7
	bne %84
	cmp r4, #0x10
	bge %81
80
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt %80
81
	LDR lr, [sp, #0x20]
	MOV r0, r5, LSR #0x14
	add r0, lr, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0xfa
	blo %83
	mov r0, #0x100000
82
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
	bhs %82
83
	add r0, r1, sl
	add r0, r0, #0x5000
	LDRB r0, [r0, #0x250]
	add r2, r2, r1
	MOV r5, r5, LSL r0
	sub r4, r4, r0
84
	MOV r1, ip, ASR #3
	cmp r1, #2
	add r0, r2, #2
	bls %89
	cmp r1, #3
	moveq r1, #1
	beq %88
	LDR r2, _08009E24
	LDRB r2, [r2, r1]
	cmp r2, #0
	moveq r3, #0
	beq %87
	cmp r4, r2
	bge %86
85
	LDRB r3, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r3, r3, ip, lsl #8
	rsb ip, r4, #0x10
	add r4, r4, #0x10
	cmp r4, r2
	orr r5, r5, r3, lsl ip
	blt %85
86
	rsb r3, r2, #0x20
	MOV r3, r5, LSR r3
	MOV r5, r5, LSL r2
	sub r4, r4, r2
87
	LDR r2, _08009E28
	LDR r1, [r2, r1, lsl #2]
	add r1, r1, r3
	sub r1, r1, #2
88
	STR fp, [sp, #0x18]
	mov fp, sb
	mov sb, r1
	b %90
89
	cmp r1, #0
	moveq r1, sb
	beq %90
	cmp r1, #1
	moveq r1, fp
	moveq fp, sb
	moveq sb, r1
	beq %90
	LDR r1, [sp, #0x18]
	STR sb, [sp, #0x18]
	mov sb, r1
90
	LDR r2, [r7, #0xc]
	sub r8, r8, r0
	sub r1, r2, r1
	LDR r2, [r7, #0x10]
	and r2, r2, r1
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	ble %92
91
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
	bgt %91
92
	cmp r8, #0
	bgt %74
	b %126
93
	cmp r8, #0
	ble %126
94
	cmp r4, #0x10
	bge %96
95
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt %95
96
	LDR r3, [sp, #0x24]
	MOV r0, r5, LSR #0x14
	add r0, r3, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0x290
	blo %98
	mov r0, #0x100000
97
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
	bhs %97
98
	add r0, r1, sl
	add r0, r0, #0x2000
	LDRB r0, [r0, #0xb98]
	cmp r1, #0x100
	MOV r5, r5, LSL r0
	sub r4, r4, r0
	bge %99
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
	b %124
	ALIGN
_08009E20 DCDU __VTABLE__378dword_803EDE8
_08009E24 DCDU gUnknown_0804AB34
_08009E28 DCDU gUnknown_0804AA68
99
	sub ip, r1, #0x100
	and r2, ip, #7
	cmp r2, #7
	bne %104
	cmp r4, #0x10
	bge %101
100
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt %100
101
	LDR lr, [sp, #0x20]
	MOV r0, r5, LSR #0x14
	add r0, lr, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0xfa
	blo %103
	mov r0, #0x100000
102
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
	bhs %102
103
	add r0, r1, sl
	add r0, r0, #0x5000
	LDRB r0, [r0, #0x250]
	add r2, r2, r1
	MOV r5, r5, LSL r0
	sub r4, r4, r0
104
	add r0, r2, #2
	MOV r2, ip, ASR #3
	cmp r2, #2
	bls %121
	LDR r1, _08009E24
	LDR r3, _08009E28
	LDRB r1, [r1, r2]
	LDR r2, [r3, r2, lsl #2]
	sub r3, r2, #2
	cmp r1, #3
	ble %112
	subs r1, r1, #3
	moveq r2, #0
	beq %107
	cmp r4, r1
	bge %106
105
	LDRB r2, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r2, r2, ip, lsl #8
	rsb ip, r4, #0x10
	add r4, r4, #0x10
	cmp r4, r1
	orr r5, r5, r2, lsl ip
	blt %105
106
	rsb r2, r1, #0x20
	MOV r2, r5, LSR r2
	MOV r5, r5, LSL r1
	sub r4, r4, r1
107
	add ip, r3, r2, lsl #3
	cmp r4, #0x10
	bge %109
108
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r2
	blt %108
109
	LDR lr, [sp, #0x1c]
	MOV r1, r5, LSR #0x19
	add r1, lr, r1, lsl #1
	ldrh r2, [r1]
	cmp r2, #8
	blo %111
	mov r1, #0x2000000
110
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
	bhs %110
111
	add r1, r2, sl
	add r1, r1, #0x5000
	LDRB r1, [r1, #0x4aa]
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	add r1, ip, r2
	b %120
112
	bne %117
	cmp r4, #0x10
	bge %114
113
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r2
	blt %113
114
	LDR lr, [sp, #0x1c]
	MOV r1, r5, LSR #0x19
	add r1, lr, r1, lsl #1
	ldrh r2, [r1]
	cmp r2, #8
	blo %116
	mov r1, #0x2000000
115
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
	bhs %115
116
	add r1, r2, sl
	add r1, r1, #0x5000
	LDRB r1, [r1, #0x4aa]
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	add r1, r3, r2
	b %120
117
	cmp r1, #0
	movle r1, #1
	ble %120
	cmp r4, r1
	bge %119
118
	LDRB r2, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r2, r2, ip, lsl #8
	rsb ip, r4, #0x10
	add r4, r4, #0x10
	cmp r4, r1
	orr r5, r5, r2, lsl ip
	blt %118
119
	rsb r2, r1, #0x20
	MOV r2, r5, LSR r2
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	add r1, r3, r2
120
	STR fp, [sp, #0x18]
	mov fp, sb
	mov sb, r1
	b %122
121
	cmp r2, #0
	moveq r1, sb
	beq %122
	cmp r2, #1
	moveq r1, fp
	moveq fp, sb
	moveq sb, r1
	beq %122
	LDR r1, [sp, #0x18]
	STR sb, [sp, #0x18]
	mov sb, r1
122
	LDR r2, [r7, #0xc]
	sub r8, r8, r0
	sub r1, r2, r1
	LDR r2, [r7, #0x10]
	and r2, r2, r1
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	ble %124
123
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
	bgt %123
124
	cmp r8, #0
	bgt %94
	b %126
125
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
	bne %125
126
	LDR r0, [sl, #0x20]
	LDR r1, [sp, #0x40]
	mov r8, r0
	cmp r0, #0
	ble %127
	cmp r1, #0
	bgt %72
	b %128
127
	cmp r1, #0
	bgt %58
128
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
