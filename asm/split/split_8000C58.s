	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8000C58

sub_8000C58
	movs r1, #0
1
	ldrb r2, [r0, r1]
	cmp r2, #0xff
	beq %2
	movs r0, #1
	bx lr
2
	adds r1, #1
	cmp r1, #0x14
	blo %1
	movs r0, #0
	bx lr

	END
