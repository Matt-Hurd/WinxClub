	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8011E10

	non_word_aligned_thumb_func_start sub_800B72A

sub_800B72A
	push {r3, lr}
	bl sub_8011E10
	cmp r0, #0
	beq %4
	movs r0, #1
3
	add sp, #4
	pop {r3}
	bx r3
4
	movs r0, #0
	b %3

	END
