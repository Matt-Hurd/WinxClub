	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__10

	non_word_aligned_thumb_func_start Npc__10

Npc__10
	push {r3, lr}
	bl DefaultScriptGroups__10
	add sp, #4
	pop {r3}
	bx r3

	END
