	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8005160

sub_8005160
	ldr r0, [r0, #0xc]
	bx lr

	END
