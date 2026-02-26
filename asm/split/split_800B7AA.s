	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80121C4

	non_word_aligned_thumb_func_start sub_800B7AA

sub_800B7AA
	push {r3, lr}
	adds r0, r1, #0
	bl sub_80121C4
	cmp r0, #0
	beq %9
	movs r0, #1
8
	add sp, #4
	pop {r3}
	bx r3
9
	movs r0, #0
	b %8

	END
