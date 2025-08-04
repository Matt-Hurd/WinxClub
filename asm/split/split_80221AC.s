	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003E98
	IMPORT sub_800065C
	IMPORT DefaultScriptGroups__TakeDamage
	IMPORT sub_8028C2E
	IMPORT sub_803F2CC
	IMPORT sub_803F898
	IMPORT sub_803FF24
	IMPORT sub_80401E4

	thumb_func_start sub_80221AC
sub_80221AC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	movs r1, #0xd
	cmp r0, #5
	beq %1
	ldr r2, _080222C0
	ldrb r2, [r2]
	cmp r2, #0
	beq %1
	movs r0, #0x44
	strh r0, [r4, #0x1e]
	movs r0, #0x45
	strh r0, [r4, #0x1a]
	movs r0, #0x46
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	str r1, [r5, #0x1c]
	b %2
1
	cmp r0, #5
	beq %2
	cmp r0, #0xb
	beq %2
	movs r0, #0x57
	strh r0, [r4, #0x1e]
	movs r0, #0x58
	strh r0, [r4, #0x1a]
	movs r0, #0x59
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	str r1, [r5, #0x1c]
2
	ldr r0, _080222C4
	ldr r0, [r0]
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bhs %3
	ldr r1, _080222C8
	adds r0, #0x4d
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
3
	ldr r1, _080222CC
	ldr r0, [r5, #0xc]
	ands r0, r1
	movs r1, #0xf
	lsls r1, r1, #0x16
	adds r0, r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x1c]
	cmp r0, #5
	beq %4
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802222C
sub_802222C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0xff
	adds r5, #1
	ldr r1, [r5, #0x3c]
	adds r4, r0, #0
	adds r0, r5, #0
	lsls r2, r1, #0xf
	cmp r2, #0
	ldr r0, [r0, #0x24]
	blt %6
	movs r2, #0xa4
	ldr r2, [r2, r4]
	cmp r2, #0
	bne %6
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %5
	movs r1, #0
	bl sub_80401E4
5
	pop {r4, r5, r6}
	pop {r3}
	bx r3
6
	movs r2, #1
	lsls r2, r2, #0x10
	orrs r1, r2
	str r1, [r5, #0x3c]
	bl sub_803F898
	adds r6, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F898
	cmp r6, r0
	beq %7
	ldr r0, [r4, #0x2c]
	bl sub_803F898
	adds r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_800065C
7
	ldr r0, [r4, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r5, #0x24]
	bl sub_803FF24
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r1, r0, #0x1f
	ldr r0, [r5, #0x24]
	bl sub_803F2CC
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	beq %8
	lsls r1, r1, #0x1f
	bne %5
	movs r1, #1
	bl sub_80401E4
	b %5
8
	lsls r1, r1, #0x1f
	beq %5
	movs r1, #0
	bl sub_80401E4
	b %5
	ALIGN
_080222C0 DCDU gUnknown_03003D20
_080222C4 DCDU gUnknown_03003E98
_080222C8 DCDU gUnknown_0300345C
_080222CC DCDU 0x8007FFFF
	END
