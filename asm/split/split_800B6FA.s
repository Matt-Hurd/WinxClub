	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8011DE4

	non_word_aligned_thumb_func_start sub_800B6FA

sub_800B6FA
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011DE4
	add sp, #4
	pop {r3}
	bx r3

	END
