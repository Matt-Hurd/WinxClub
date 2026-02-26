	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__10
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_08051096
	IMPORT rand
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_80404B4

	thumb_func_start Kiko__10

Kiko__10
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl rand
	movs r1, #0xa0
	ldrh r1, [r1, r4]
	ands r0, r1
	bne %4
	bl rand
	bl sub_80404B4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r3, _08031828
	lsls r1, r1, #1
	adds r0, r1, r3
	ldrh r2, [r0, #4]
	strh r2, [r4, #0x18]
	ldrh r2, [r0, #2]
	strh r2, [r4, #0x1a]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x1c]
	ldrh r0, [r3, r1]
	strh r0, [r4, #0x1e]
4
	movs r0, #0x9c
	ldr r0, [r0, r4]
	cmp r0, #0
	bne %5
	ldr r7, _0803182C
	ldr r5, [r4, #0x30]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	ldr r5, [r4, #0x2c]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	ldr r5, _08031828
	subs r0, r1, r0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r5, #0x18
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq %5
	ldr r6, [r4, #0x2c]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r6, #0x48]
	subs r0, r1, r0
	asrs r0, r0, #2
	lsls r0, r0, #1
	ldrh r1, [r5, r0]
	ldr r0, [r4, #0x30]
	bl sub_800065C
5
	adds r0, r4, #0
	bl DefaultScriptGroups__10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08031828 DCDU gUnknown_08051096
_0803182C DCDU gUnknown_03003EA0

	END
