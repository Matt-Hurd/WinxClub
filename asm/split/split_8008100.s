	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8008100

sub_8008100
	adds r1, r0, #0
	ldr r1, [r1, #0x18]
	movs r0, #1
	cmp r1, #0
	beq %10
	movs r0, #0
10
	bx lr

	END
