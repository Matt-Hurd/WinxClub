	arm_func_start sub_8008B5C
sub_8008B5C
	STR lr, [sp, #-4]!
	LDR r2, [r1]
	LDR r3, [r2]
	and ip, r3, #0xf0
	cmp ip, #0x10
	tsteq r3, #0xf
	bne %2
	bics r3, r3, #0xff
	bne %3
2
	DCB 0x04, 0xE0, 0x9D, 0xE4 ; LDMFD SP!, {lr}
	mov r0, #0
	bx lr
3
	LDRB r3, [r1, #0xc]
	mov ip, #0
	strh r3, [r0, #4]
	LDR r3, [r1]
	add r3, r3, #4
	STR r3, [r0, #0x20]
	LDR r3, [r1, #8]
	STR r3, [r0, #0x24]
	LDR r3, [r1, #8]
	STR r3, [r0, #0x28]
	LDRB r3, [r1, #0xc]
	LDR r1, [r1, #8]
	cmp r3, #2
	bne %4
	STR r1, [r0, #0x2c]
	LDR r1, [r2]
	MOV r1, r1, LSR #8
	STR r1, [r0, #0x30]
	b %5
4
	LDR r2, [r2]
	add r1, r1, r2, lsr #8
	add r2, r0, #0x2c
	STMIA r2, {r1, ip}
5
	STR ip, [r0, #0x34]
	STR ip, [r0, #0x38]
	DCB 0x04, 0xE0, 0x9D, 0xE4 ; LDMFD SP!, {lr}
	mov r0, #1
	bx lr

