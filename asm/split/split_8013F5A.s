	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8013F5A

sub_8013F5A
	strb r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	END
