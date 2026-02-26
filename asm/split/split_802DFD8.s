	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_802E8B0

	thumb_func_start sub_802DFD8

sub_802DFD8
	push {r3, lr}
	bl sub_802E8B0
	add sp, #4
	pop {r3}
	bx r3

	END
