	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_800475C

sub_800475C
	movs r3, #1
	lsls r3, r3, #0x1a
	ldr r2, [r0]
	lsls r1, r1, #0x1a
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	bx lr

	END
