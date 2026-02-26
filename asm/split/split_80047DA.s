	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_80047DA

sub_80047DA
	ldrh r0, [r0, #2]
	cmp r1, #0
	beq %3
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bx lr
3
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1b
	bx lr

	END
