	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003C4C

	thumb_func_start sub_80134F8

sub_80134F8
	ldrb r1, [r0, #0xc]
	ldr r2, [r0, #8]
	cmp r2, #0
	beq %1
	ldr r3, [r0, #4]
	str r3, [r2, #4]
1
	ldr r2, [r0, #4]
	cmp r2, #0
	beq %2
	ldr r3, [r0, #8]
	str r3, [r2, #8]
2
	ldr r3, _080137E4
	lsls r1, r1, #2
	ldr r2, [r3, r1]
	cmp r2, r0
	bne %3
	ldr r2, [r0, #8]
	str r2, [r3, r1]
3
	ldr r3, _080137E4
	subs r3, #0xc
	ldr r2, [r3, r1]
	cmp r2, r0
	bne %4
	ldr r0, [r0, #4]
	str r0, [r3, r1]
4
	bx lr

	ALIGN
_080137E4 DCDU gUnknown_03003C4C

	END
