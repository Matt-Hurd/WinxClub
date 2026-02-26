	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__08

	thumb_func_start sub_802F210

sub_802F210
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	bne %7
	movs r0, #1
6
	add sp, #4
	pop {r3}
	bx r3
7
	bl DefaultScriptGroups__08
	b %6

	END
