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

