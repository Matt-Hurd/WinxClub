	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8037E34

sub_8037E34
	adds r0, #0x40
	ldrb r0, [r0]
	bx lr
	ALIGN

	END
