	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__04

	thumb_func_start Kiko__04

Kiko__04
	push {r3, lr}
	bl DefaultScriptGroups__04
	add sp, #4
	pop {r3}
	bx r3

	END
