	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_802BFB4

sub_802BFB4
	adds r0, #0x30
	ldrb r0, [r0, #0xc]
	bx lr
	ALIGN

	END
