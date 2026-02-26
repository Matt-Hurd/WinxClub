	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80117A4

	non_word_aligned_thumb_func_start sub_800B66A

sub_800B66A
	push {r3, lr}
	bl sub_80117A4
	add sp, #4
	pop {r3}
	bx r3

	END
