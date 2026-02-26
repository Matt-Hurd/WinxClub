	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start DefaultScriptGroups__Dead

DefaultScriptGroups__Dead
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	str r2, [r0, #0x58]
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	str r1, [r0, #0x5c]
	bx lr

	END
