	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__04
	IMPORT __call_via_r2

	thumb_func_start sub_802F1F0

sub_802F1F0
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	bne %5
	ldr r2, [r0]
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
4
	add sp, #4
	pop {r3}
	bx r3
5
	bl DefaultScriptGroups__04
	b %4

	END
