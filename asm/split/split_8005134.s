	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8005134

sub_8005134
	ldr r2, [r0, #8]
	lsls r3, r2, #0x1f
	lsrs r3, r3, #0x1f
	cmp r3, r1
	beq %6
	lsrs r2, r2, #1
	lsls r2, r2, #1
	orrs r2, r1
	str r2, [r0, #8]
	cmp r1, #0
	bne %6
	str r1, [r0]
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x1f
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
6
	bx lr

	END
