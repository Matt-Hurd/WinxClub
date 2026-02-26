	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT SoftReset

	thumb_func_start CallSoftReset

CallSoftReset
	push {r3, lr}
	movs r0, #0xfb
	bl SoftReset
	add sp, #4
	pop {r3}
	bx r3

	END
