	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __nw__FUi

	non_word_aligned_thumb_func_start sub_80004E6

sub_80004E6
	push {r3, lr}
	cmp r0, #0
	bne %15
	movs r0, #0x60
	bl __nw__FUi
15
	add sp, #4
	pop {r3}
	bx r3

	END
