	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80050AC

sub_80050AC
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	ldr r2, [r0, #8]
	movs r3, #1
	orrs r2, r3
	ands r2, r3
	str r1, [r0, #0xc]
	str r2, [r0, #8]
	bx lr

	END
