	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__08

	thumb_func_start Kiko__08

Kiko__08
	push {r3, lr}
	bl DefaultScriptGroups__08
	add sp, #4
	pop {r3}
	bx r3

	END
