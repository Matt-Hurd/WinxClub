	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_802E47A

	thumb_func_start sub_803B150

sub_803B150
	push {r3, lr}
	bl sub_802E47A
	add sp, #4
	pop {r3}
	bx r3

	END
