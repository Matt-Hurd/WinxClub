	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_800807C

sub_800807C
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x14]
	subs r3, r1, r3
	adds r2, r2, r3
	ldr r3, [r0, #0x10]
	str r1, [r0, #0xc]
	ands r2, r3
	str r2, [r0, #0x14]
	bx lr

	END
