	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__18
	IMPORT __call_via_r1
	IMPORT sub_803DA18

	thumb_func_start sub_8021A38

sub_8021A38
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl DefaultScriptGroups__18
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	movs r5, #0
	movs r7, #0
1
	lsls r0, r5, #2
	adds r0, r0, r6
	adds r0, #0xff
	adds r0, #0x41
	ldr r4, [r0, #0x10]
	cmp r4, #0
	beq %3
2
	adds r0, r4, #0
	ldr r4, [r4, #0x18]
	bl sub_803DA18
	cmp r4, #0
	bne %2
3
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r6
	adds r0, #0xff
	adds r0, #0x41
	str r7, [r0, #0x10]
	cmp r5, #0x41
	blo %1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
