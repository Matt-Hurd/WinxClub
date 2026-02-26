	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__TakeDamage
	IMPORT __call_via_r1
	IMPORT gPlayerEntity
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT sub_801F450
	IMPORT sub_8023AA2
	IMPORT sub_8023FE4
	IMPORT sub_8028C2E
	IMPORT sub_802B0CA
	IMPORT sub_803490C
	IMPORT sub_8034A86

	non_word_aligned_thumb_func_start sub_8039EB6

sub_8039EB6
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	adds r7, r1, #0
	adds r6, r3, #0
	cmp r0, #0xf
	sub sp, #4
	beq %7
	cmp r0, #0x10
	bne %9
7
	movs r0, #0
8
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
9
	ldr r0, [r5, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq %10
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b %8
10
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne %11
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne %11
	movs r2, #5
	lsls r2, r2, #0xe
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_801F450
11
	movs r3, #0x97
	ldrsb r0, [r7, r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	subs r0, #2
	cmp r0, #6
	bhs %19
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
12
	DCB 0x03
13
	DCB 0x03
14
	DCB 0x44
15
	DCB 0x07
16
	DCB 0x1E
17
	DCB 0x07
loc_8039f2a
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %20
loc_8039f32
	ldr r0, _0803A03C
	movs r1, #2
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0, #6]
	subs r1, r1, r6
	strb r1, [r0, #6]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %20
loc_8039f60
	ldr r0, _0803A040
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq %18
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne %18
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r4, #0
	adds r1, #0xb0
	ldrb r2, [r1, #6]
	subs r2, r2, r0
	strb r2, [r1, #6]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %20
18
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %20
loc_8039fac
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %20
19
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
20
	movs r0, #0xb6
	ldrsb r1, [r0, r4]
	cmp r1, #0
	blt %21
	ldr r2, _0803A044
	movs r0, #0x10
	ldr r2, [r2]
	ands r2, r0
	beq %21
	ldr r0, _0803A03C
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #8]
	ldr r0, _0803A048
	ldr r0, [r0]
	bl sub_8023FE4
	b %22
21
	ldr r1, _0803A03C
	movs r0, #0
	ldr r1, [r1]
	adds r1, #0xa0
	strb r0, [r1, #8]
	ldr r0, _0803A048
	ldr r0, [r0]
	bl sub_8023FE4
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _0803A04C
	ldr r0, [r0]
	ldr r1, [r5, #0x34]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_8034A86
	adds r0, r4, #0
	bl sub_802B0CA
22
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b %8
	ALIGN

	ALIGN
_0803A03C DCDU gPlayerEntity
_0803A040 DCDU gUnknown_03003458
_0803A044 DCDU gUnknown_03003478
_0803A048 DCDU gUnknown_030034F8
_0803A04C DCDU gUnknown_0300345C

	END
