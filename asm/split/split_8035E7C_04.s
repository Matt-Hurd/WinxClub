	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__08

	non_word_aligned_thumb_func_start WallObjectScriptGroup__08

WallObjectScriptGroup__08
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	bne %15
	movs r0, #1
14
	add sp, #4
	pop {r3}
	bx r3
15
	bl DefaultScriptGroups__08
	b %14

	END
