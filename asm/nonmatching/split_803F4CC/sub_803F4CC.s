	arm_func_start sub_803F4CC
	mov r2, r0
	LDR r0, [r0, #4]
	cmp r0, r1
	bhs %1
	LDR r3, [r2, #8]
	add ip, r3, #2
	STR ip, [r2, #8]
	ldrh r3, [r3]
	rsb ip, r0, #0x10
	add r0, r0, #0x10
	MOV r3, r3, LSL ip
	LDR ip, [r2]
	STR r0, [r2, #4]
	orr r3, r3, ip
	STR r3, [r2]
1
	LDR r3, [r2]
	rsb r0, r1, #0x20
	LDR ip, [r2, #4]
	MOV r0, r3, LSR r0
	sub ip, ip, r1
	MOV r1, r3, LSL r1
	STMIA r2, {r1, ip}
	bx lr
	arm_func_end sub_803F4CC

