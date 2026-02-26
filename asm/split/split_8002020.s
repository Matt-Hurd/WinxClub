	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8002020

sub_8002020
	movs r2, #0x27
	lsls r2, r2, #6
	adds r0, r0, r2
	str r1, [r0, #0x18]
	bx lr

	END
