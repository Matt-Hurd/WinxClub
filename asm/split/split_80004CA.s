	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __nw__FUi

	non_word_aligned_thumb_func_start sub_80004CA

sub_80004CA
	push {r3, lr}
	cmp r0, #0
	bne %13
	movs r0, #0x60
	bl __nw__FUi
	cmp r0, #0
	beq %14
13
	movs r1, #0
	movs r2, #0x51
	strb r1, [r2, r0]
14
	add sp, #4
	pop {r3}
	bx r3

	END
