	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_802B382

sub_802B382
	adds r1, r0, #0
	ldrb r1, [r1, #2]
	movs r0, #1
	cmp r1, #0
	bne %9
	movs r0, #0
9
	bx lr

	END
