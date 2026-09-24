	arm_func_start sub_800AA3C
	mov r1, #1
	add r3, r0, r2, lsl #2
	STR r1, [r3, #0x58]
	cmp r2, #8
	addls pc, pc, r2, lsl #2
jmpt_0800AA50
	b %9
jmpt_0800AA54
	b %9
jmpt_0800AA58
	b %1
jmpt_0800AA5C
	b %2
jmpt_0800AA60
	b %3
jmpt_0800AA64
	b %4
jmpt_0800AA68
	b %5
jmpt_0800AA6C
	b %6
jmpt_0800AA70
	b %7
jmpt_0800AA74
	b %8
1
	LDR r0, [r0, #0x54]
	bx lr
2
	LDR r0, [r0, #0x54]
	add r0, r0, #0x40
	bx lr
3
	LDR r0, [r0, #0x54]
	add r0, r0, #0x2d40
	bx lr
4
	LDR r0, [r0, #0x54]
	add r0, r0, #0x8000
	add r0, r0, #0x2d40
	bx lr
5
	LDR r0, [r0, #0x54]
	add r0, r0, #0x8000
	add r0, r0, #0x3240
	bx lr
6
	LDR r0, [r0, #0x54]
	add r0, r0, #0xb000
	add r0, r0, #0x25c
	bx lr
7
	LDR r0, [r0, #0x54]
	add r0, r0, #0xb000
	add r0, r0, #0x274
	bx lr
8
	LDR r0, [r0, #0x54]
	add r0, r0, #0x8000
	add r0, r0, #0x32c0
	bx lr
9
	mov r0, #0
	bx lr
	arm_func_end sub_800AA3C

