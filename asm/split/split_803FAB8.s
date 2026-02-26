	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_803FAB8

sub_803FAB8
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	cmp r1, #2
	bne %1
	adds r0, #0x80
	ldr r0, [r0]
	lsls r0, r0, #0x1d
	bpl %1
	movs r0, #1
	bx lr
1
	movs r0, #0
	bx lr
	ALIGN

	END
