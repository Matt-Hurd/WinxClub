	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8002010

sub_8002010
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r0, r1, r0
	str r2, [r0, #0x1c]
	str r3, [r0, #0x2c]
	bx lr

	END
