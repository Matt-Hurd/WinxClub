	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT Monster__10

	thumb_func_start Boss__10

Boss__10
	push {r3, lr}
	bl Monster__10
	add sp, #4
	pop {r3}
	bx r3

	END
