	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_803D66C

	non_word_aligned_thumb_func_start sub_800474E

sub_800474E
	push {r3, lr}
	adds r0, #4
	bl sub_803D66C
	add sp, #4
	pop {r3}
	bx r3

	END
