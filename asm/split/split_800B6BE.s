	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8011D56

	non_word_aligned_thumb_func_start sub_800B6BE

sub_800B6BE
	push {r3, lr}
	bl sub_8011D56
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	END
