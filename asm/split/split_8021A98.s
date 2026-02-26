	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__1C
	IMPORT __call_via_r1
	IMPORT gUnknown_03003EB8
	IMPORT sub_8000DE6

	thumb_func_start sub_8021A98

sub_8021A98
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl DefaultScriptGroups__1C
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #1
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %4
	ldr r0, _08021E74
	adds r1, r5, #0
	adds r1, #0x24
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r5, #0x24]
4
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_08021E74 DCDU gUnknown_03003EB8

	END
