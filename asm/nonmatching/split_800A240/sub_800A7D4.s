	arm_func_start sub_800A7D4
sub_800A7D4
	STMFD SP!, {r4, r5, r6, lr}
	mov lr, #1
	mov r5, #1
	mov r4, #3
	add r0, r0, #4
	mov r2, #0
38
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS r3, r2, LSL #0x17
	bpl %40
39
	LDRB r3, [r0], #1
	tst r2, #0x7f
	STRB r3, [r1], #1
	LDREQB r2, [r0], #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS r3, r2, LSL #0x17
	bmi %39
40
	mov r3, #1
41
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	MOV r3, r3, LSL #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV ip, r2, LSL #0x17
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	add r3, r3, ip, lsr #31
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS ip, r2, LSL #0x17
	bmi %42
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	MOV r3, r3, LSL #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV ip, r2, LSL #0x17
	add r3, r3, ip, lsr #31
	sub r3, r3, #2
	b %41
42
	cmp r3, #2
	bne %43
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	mov ip, r5
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV r3, r2, LSL #0x17
	MOV r3, r3, LSR #0x1f
	b %44
43
	LDRB ip, [r0], #1
	add r3, ip, r3, lsl #8
	sub ip, r3, #0x300
	cmn ip, #1
	bicne r3, lr, ip
	MOVNE ip, ip, LSR #1
	addne ip, ip, #1
	movne r5, ip
	bne %44
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #1
	bx lr
44
	cmp r3, #0
	and r3, r2, #0x7f
	beq %45
	cmp r3, #0
	LDREQB r2, [r0], #1
	MOVNE r2, r2, LSL #1
	addeq r2, lr, r2, lsl #1
	MOV r3, r2, LSL #0x17
	add r3, lr, r3, lsr #31
	b %47
45
	cmp r3, #0
	LDREQB r2, [r0], #1
	MOVNE r2, r2, LSL #1
	addeq r2, lr, r2, lsl #1
	MOV r3, r2, LSL #0x17
	cmp r3, #0
	movge r3, #1
	bge %46
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV r3, r2, LSL #0x17
	add r3, r4, r3, lsr #31
	b %47
46
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	MOV r3, r3, LSL #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV r6, r2, LSL #0x17
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	add r3, r3, r6, lsr #31
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS r6, r2, LSL #0x17
	bpl %46
	add r3, r3, #3
47
	cmp ip, #0x500
	movls r6, #0
	movhi r6, #1
	add r3, r6, r3
	sub ip, r1, ip
	LDRB r6, [ip], #1
	STRB r6, [r1], #1
48
	LDRB r6, [ip], #1
	subs r3, r3, #1
	STRB r6, [r1], #1
	bne %48
	b %38

