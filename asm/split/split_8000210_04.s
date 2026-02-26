	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start strchr

strchr
	ldrb r2, [r0]
	cmp r2, #0
	beq %20
19
	movs r3, #0
	ldrsb r2, [r0, r3]
	cmp r2, r1
	beq %21
	adds r0, #1
	ldrb r2, [r0]
	cmp r2, #0
	bne %19
20
	movs r0, #0
21
	bx lr

	END
