	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_801197C

	non_word_aligned_thumb_func_start sub_800B646

sub_800B646
	push {r3, lr}
	bl sub_801197C
	add sp, #4
	pop {r3}
	bx r3

	END
