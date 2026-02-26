	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8011A80

	non_word_aligned_thumb_func_start sub_800B65E

sub_800B65E
	push {r3, lr}
	bl sub_8011A80
	add sp, #4
	pop {r3}
	bx r3

	END
