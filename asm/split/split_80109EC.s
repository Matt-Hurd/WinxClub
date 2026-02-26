	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80109EC

sub_80109EC
	movs r1, #0x54
	ldrb r1, [r1, r0]
	movs r2, #0x19
	lsls r2, r2, #6
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	ldr r0, [r0, #0x60]
	lsrs r1, r1, #0x10
	subs r0, r1, r0
	subs r0, #1
	bx lr

	END
