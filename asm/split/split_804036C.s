	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __nw__FUi

	thumb_func_start sub_804036C

sub_804036C
	push {r3, lr}
	cmp r0, #0
	bne %6
	movs r0, #0x58
	bl __nw__FUi
6
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	END
