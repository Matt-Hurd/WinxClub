	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__10
	IMPORT gUnknown_03003EA0
	IMPORT rand
	IMPORT sub_8000D5A

	thumb_func_start GenericObject__10

GenericObject__10
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r0, [r0, #0x1a]
	adds r6, r4, #0
	adds r6, #0x80
	cmp r0, #0
	ldr r7, _08026684
	beq %2
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	subs r0, r1, r0
	asrs r0, r0, #2
	bne %2
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %1
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
1
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %2
	bl rand
	movs r1, #0xa0
	ldrh r1, [r1, r4]
	ands r0, r1
	bne %2
	movs r0, #0x12
	str r0, [r6, #0x1c]
	b %4
2
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %3
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
3
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne %4
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %4
	movs r0, #0x11
	str r0, [r6, #0x1c]
4
	adds r0, r4, #0
	bl DefaultScriptGroups__10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_08026684 DCDU gUnknown_03003EA0

	END
