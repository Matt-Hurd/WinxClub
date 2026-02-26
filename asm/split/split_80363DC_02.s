	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__10
	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A

	thumb_func_start WallObjectScriptGroup__10

WallObjectScriptGroup__10
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %18
	ldr r0, _0803661C
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq %17
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
17
	ldrh r0, [r4, #0x1a]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, r0
	beq %18
	strh r0, [r4, #0x18]
18
	adds r0, r4, #0
	bl DefaultScriptGroups__10
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_0803661C DCDU gUnknown_03003EA0

	END
