	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003E98
	IMPORT GetEWRAMStart
	IMPORT DefaultScriptGroups__20
	IMPORT DefaultScriptGroups__TakeDamage
	IMPORT sub_8028C2E
	IMPORT sub_802B0CA
	IMPORT __call_via_r1
	IMPORT sub_803DA80

	thumb_func_start sub_8037530
sub_8037530
	movs r0, #0
	bx lr

	thumb_func_start sub_8037534
sub_8037534
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r3, #0
	ldr r3, [r5, #0x1c]
	cmp r3, #0xf
	beq %1
	cmp r3, #0x10
	beq %1
	cmp r3, #0x20
	bne %3
1
	movs r0, #0
2
	pop {r4, r5, r6}
	pop {r3}
	bx r3
3
	ldr r3, [r5, #0xc]
	movs r6, #0
	lsls r3, r3, #1
	lsrs r3, r3, #0x14
	cmp r3, #0
	beq %4
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r6, [r4, #0x34]
	movs r0, #0
	b %2
4
	movs r3, #0x97
	ldrsb r1, [r1, r3]
	adds r1, r1, r2
	subs r1, #2
	cmp r1, #6
	bhs %12
	add r3, pc, #0x4
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
5
	DCB 0x02
6
	DCB 0x02
7
	DCB 0x34
8
	DCB 0x06
9
	DCB 0x12
10
	DCB 0x06
loc_803758e
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %13
loc_8037596
	adds r1, r4, #0
	adds r1, #0xb0
	ldrb r2, [r1, #6]
	subs r0, r2, r0
	strb r0, [r1, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %13
loc_80375ae
	ldr r0, _08037720
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq %11
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne %11
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r2, [r0, #6]
	subs r1, r2, r1
	strb r1, [r0, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %13
11
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %13
loc_80375f2
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %13
12
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
13
	movs r0, #0xb6
	ldrsb r0, [r0, r4]
	cmp r0, #0
	bgt %14
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08037724
	ldr r0, [r0]
	ldr r1, [r5, #0x30]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_802B0CA
14
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r6, [r4, #0x34]
	movs r0, #1
	b %2

	non_word_aligned_thumb_func_start sub_8037642
sub_8037642
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08037724
	movs r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1, r4]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803766A
sub_803766A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl DefaultScriptGroups__20
	movs r0, #0xa4
	ldr r0, [r0, r4]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x5c]
	ldr r3, [r4, #0x58]
	subs r6, r2, r0
	ldr r2, [r1, #0x2c]
	ldr r7, [r1, #0x34]
	subs r5, r3, r2
	ldr r2, [r1, #0x30]
	adds r7, r7, r5
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	subs r2, r6, r2
	adds r7, r7, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r7, [r1, #0x38]
	ldr r7, [r0, #8]
	adds r5, r7, r5
	str r5, [r0, #8]
	ldr r5, [r0, #0xc]
	adds r2, r5, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r6, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq %15
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
15
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80376F8
sub_80376F8
	ldr r1, _08037728
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	bpl %16
	ldr r1, _08037724
	adds r0, #0x80
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
16
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08037720 DCDU gUnknown_03003458
_08037724 DCDU gUnknown_0300345C
_08037728 DCDU gUnknown_03003E98
	END
