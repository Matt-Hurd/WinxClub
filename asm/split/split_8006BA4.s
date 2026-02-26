	INCLUDE asm/macros.inc
	AREA text, CODE

	arm_func_start sub_8006BA4

sub_8006BA4
	mov ip, r0
	LDR r3, [r1, #0x20]!
	LDR r0, [r1, #4]
	mov r1, ip
	mov r2, #5
	bx r3
	ALIGN

	END
