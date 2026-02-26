	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __nw__FUi

	thumb_func_start sub_8041020

sub_8041020
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #8
	bl __nw__FUi
1
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	END
