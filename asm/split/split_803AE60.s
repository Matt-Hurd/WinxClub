	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_803AE60

sub_803AE60
	adds r0, #0x30
	ldrb r0, [r0, #0xc]
	bx lr
	ALIGN

	END
