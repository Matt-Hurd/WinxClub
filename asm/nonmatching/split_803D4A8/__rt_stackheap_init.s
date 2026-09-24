	arm_func_start __rt_stackheap_init
	LDR sp, _0803DB28
	LDR sl, _0803DB2C
	mov r0, #0x2000000
	mov r1, #0x2000000
	add r1, r1, #0x40000
	STMFD SP!, {r0, r1, lr}
	sub r1, r1, r0
	bl SomehowInitEWRAMLinkedList
	LDMFD SP!, {r0, r1, lr}
	LDR r1, _0803DB30
	STR r0, [r1]
	LDR r1, _0803DB34
	STR r0, [r1]
	mov pc, lr
	arm_func_end __rt_stackheap_init

