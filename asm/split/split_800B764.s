	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8011B28

	thumb_func_start sub_800B764

sub_800B764
	push {r3, lr}
	movs r0, #3
	bl sub_8011B28
	add sp, #4
	pop {r3}
	bx r3

	END
