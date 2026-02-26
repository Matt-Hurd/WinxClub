	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_80019A6

sub_80019A6
	movs r1, #0x67
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1f
	bx lr

	END
