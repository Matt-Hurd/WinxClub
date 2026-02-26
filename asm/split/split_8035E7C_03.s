	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__04
	IMPORT __call_via_r2
	IMPORT sub_8035F1C
	IMPORT sub_8035F54

	non_word_aligned_thumb_func_start WallObjectScriptGroup__04

WallObjectScriptGroup__04
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	beq %11
	cmp r2, #0x27
	beq %12
	cmp r2, #0x28
	bne %13
	bl sub_8035F1C
10
	add sp, #4
	pop {r3}
	bx r3
11
	ldr r2, [r0]
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
	b %10
12
	bl sub_8035F54
	b %10
13
	bl DefaultScriptGroups__04
	b %10

	END
