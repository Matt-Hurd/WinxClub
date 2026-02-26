	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80115EC

	thumb_func_start sub_800B600

sub_800B600
	push {r3, lr}
	adds r0, r1, #0
	bl sub_80115EC
	add sp, #4
	pop {r3}
	bx r3

	END
