	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8034558

sub_8034558
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	adds r1, r0, #0
	adds r1, #0xe0
	ldrb r3, [r1, #5]
	adds r0, r3, r0
	adds r0, #0xe0
	strb r2, [r0]
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	bx lr

	END
