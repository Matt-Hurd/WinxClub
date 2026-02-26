	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_803EF1C

sub_803EF1C
	movs r1, #0x29
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r1, #1
	strb r1, [r0, #1]
	bx lr
	ALIGN

	END
