	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8011596

	non_word_aligned_thumb_func_start sub_800B60E

sub_800B60E
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011596
	add sp, #4
	pop {r3}
	bx r3

	END
