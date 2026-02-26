	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__04
	IMPORT __call_via_r2
	IMPORT sub_802913E

	thumb_func_start sub_8029290

sub_8029290
	push {r4, lr}
	ldr r3, [r1]
	adds r4, r0, #0
	ldrb r0, [r3]
	sub sp, #0x18
	cmp r0, #0x22
	beq %5
	cmp r0, #0x24
	bne %6
	ldrb r1, [r3, #0xd]
	ldrb r0, [r3, #0xc]
	movs r2, #0
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldrb r1, [r3, #0xb]
	ldrh r0, [r3, #4]
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #8]
	adds r3, r0, #0
	adds r0, r4, #0
	bl sub_802913E
4
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3
5
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
	b %4
6
	adds r0, r4, #0
	bl DefaultScriptGroups__04
	b %4

	END
