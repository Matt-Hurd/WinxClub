	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8012334

	thumb_func_start sub_80268AC

sub_80268AC
	push {r3, lr}
	adds r0, #4
	bl sub_8012334
	add sp, #4
	pop {r3}
	bx r3

	END
