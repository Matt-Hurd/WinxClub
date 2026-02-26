	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8029290
	IMPORT sub_80294EE

	non_word_aligned_thumb_func_start NonBossHostileScriptGroup__04

NonBossHostileScriptGroup__04
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x21
	bne %5
	bl sub_80294EE
4
	add sp, #4
	pop {r3}
	bx r3
5
	bl sub_8029290
	b %4

	END
