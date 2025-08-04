	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT DefaultScriptGroups__TakeDamage
	IMPORT sub_801F450
	IMPORT sub_8023AA2
	IMPORT sub_8023FE4
	IMPORT sub_8028C2E
	IMPORT Monster__10
	IMPORT sub_802B0CA
	IMPORT sub_802F926
	IMPORT sub_802FA92
	IMPORT __call_via_r1
	IMPORT __16_ll_mulls
	IMPORT __16_ll_sdiv
	IMPORT rand
	IMPORT sub_8040468
	IMPORT sub_8040490
	IMPORT sub_8040574
	IMPORT sub_8040684

	thumb_func_start sub_803490C
sub_803490C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	add r0, pc, #0x3E0
	lsls r2, r1, #0x10
	ldm r0!, {r0, r1}
	sub sp, #0x24
	bl __16_ll_mulls
	add r2, pc, #0x3DC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	movs r1, #0
	add r7, sp, #0x14
	movs r2, #0
	adds r4, r6, #0
	adds r4, #0xe0
	stm r7!, {r1, r2}
	ldrb r1, [r4, #6]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r7, #8
	cmp r0, #0
	str r1, [sp, #0x10]
	bne %1
	movs r0, #1
1
	movs r5, #0
	cmp r0, #0xa
	bhs %6
	cmp r0, #5
	blo %3
	movs r2, #1
	strb r2, [r7, r1]
	ldrb r1, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r4, #6]
	cmp r1, #5
	bne %2
	strb r5, [r4, #6]
2
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
3
	cmp r0, #0
	beq %13
	movs r1, #0
	cmp r0, #0
	bls %13
4
	ldrb r2, [r4, #6]
	strb r5, [r7, r2]
	ldrb r2, [r4, #6]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r4, #6]
	cmp r2, #5
	bne %5
	strb r5, [r4, #6]
5
	adds r1, #1
	cmp r1, r0
	blo %4
	b %13
6
	cmp r0, #0x1e
	bhs %9
	bl sub_8040684
	movs r0, #0
	cmp r1, #0
	bls %13
	movs r2, #1
7
	ldrb r3, [r4, #6]
	strb r2, [r7, r3]
	ldrb r3, [r4, #6]
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r4, #6]
	cmp r3, #5
	bne %8
	strb r5, [r4, #6]
8
	adds r0, #1
	cmp r0, r1
	blo %7
	b %13
9
	bl sub_8040574
	cmp r1, #5
	bls %10
	movs r1, #5
10
	movs r0, #0
	cmp r1, #0
	bls %13
	movs r2, #2
11
	ldrb r3, [r4, #6]
	strb r2, [r7, r3]
	ldrb r3, [r4, #6]
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r4, #6]
	cmp r3, #5
	bne %12
	strb r5, [r4, #6]
12
	adds r0, #1
	cmp r0, r1
	blo %11
13
	ldrb r0, [r4, #6]
	ldr r5, [sp, #0x10]
	cmp r0, r5
	bls %17
	adds r1, r6, #0
	adds r1, #0x58
	str r1, [sp, #0x20]
14
	adds r0, r6, r5
	adds r0, #0xe0
	ldrb r1, [r0]
	str r1, [sp, #0x1c]
	bl rand
	bl sub_8040490
	adds r0, #1
	str r0, [sp, #0xc]
	bl rand
	bl sub_8040468
	adds r0, #1
	str r0, [sp, #8]
	bl rand
	lsrs r1, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r7, r0, r1
	bne %15
	mvns r7, r7
15
	bl rand
	lsrs r1, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r0, r0, r1
	bne %16
	mvns r0, r0
16
	ldr r1, [r6, #0x58]
	ldr r2, [sp, #0xc]
	muls r7, r2
	lsls r2, r7, #0x10
	adds r1, r1, r2
	ldr r2, [r6, #0x5c]
	ldr r3, [sp, #8]
	str r1, [sp]
	muls r0, r3
	lsls r0, r0, #0x10
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r0, _08034D04
	mov r2, sp
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #2
	ldr r7, [r0, r1]
	add r0, sp, #0x14
	ldrsb r3, [r0, r5]
	ldr r1, [sp, #0x20]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	ldrb r0, [r4, #6]
	adds r5, #1
	cmp r0, r5
	bhi %14
17
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8034A86
sub_8034A86
	push {r4, r5, r6, r7}
	movs r3, #0
	movs r5, #0
	mov ip, r0
18
	ldr r1, _08034D04
	mov r0, ip
	adds r0, r0, r3
	ldr r1, [r1]
	adds r0, #0xe0
	ldrb r0, [r0]
	ldr r1, [r1, #0x10]
	adds r3, #1
	ldr r1, [r1, #0x14]
	lsls r0, r0, #2
	ldr r4, [r1, r0]
	str r5, [r4, #0x58]
	str r5, [r4, #0x5c]
	ldr r2, [r4, #0x2c]
	ldr r0, [r2, #0x2c]
	adds r1, r2, #0
	subs r7, r5, r0
	ldr r0, [r2, #0x30]
	adds r1, #0x34
	subs r6, r5, r0
	ldr r0, [r2, #0x34]
	adds r0, r0, r7
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x38]
	adds r0, r0, r6
	str r0, [r2, #0x38]
	ldr r0, [r1, #8]
	adds r0, r0, r7
	str r0, [r1, #8]
	ldr r0, [r1, #0xc]
	adds r0, r0, r6
	str r0, [r1, #0xc]
	str r5, [r2, #0x2c]
	str r5, [r2, #0x30]
	ldr r1, [r2]
	movs r0, #0xff
	adds r0, #1
	orrs r1, r0
	str r1, [r2]
	ldr r2, [r4, #0x30]
	ldr r4, [r2, #0x2c]
	ldr r7, [r2, #0x34]
	subs r6, r5, r4
	ldr r4, [r2, #0x30]
	adds r7, r7, r6
	str r7, [r2, #0x34]
	ldr r7, [r2, #0x38]
	subs r4, r5, r4
	adds r7, r7, r4
	adds r1, r2, #0
	adds r1, #0x34
	str r7, [r2, #0x38]
	ldr r7, [r1, #8]
	adds r6, r7, r6
	str r6, [r1, #8]
	ldr r6, [r1, #0xc]
	adds r4, r6, r4
	str r4, [r1, #0xc]
	str r5, [r2, #0x2c]
	str r5, [r2, #0x30]
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r3, #5
	blo %18
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start Boss__10
Boss__10
	push {r3, lr}
	bl Monster__10
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start Boss__Intersect
Boss__Intersect
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	adds r7, r3, #0
	adds r6, r1, #0
	cmp r0, #0xf
	sub sp, #4
	beq %19
	cmp r0, #0x10
	bne %21
19
	movs r0, #0
20
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
21
	ldr r0, [r5, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq %22
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b %20
22
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne %23
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne %23
	movs r2, #5
	lsls r2, r2, #0xe
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_801F450
23
	movs r0, #0x97
	ldrsb r0, [r0, r6]
	ldr r1, [sp, #0xc]
	adds r1, r0, r1
	ldr r0, [r6, #0x7c]
	subs r1, #2
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r1, #6
	bhs %35
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
24
	DCB 0x03
25
	DCB 0x03
26
	DCB 0x75
27
	DCB 0x07
28
	DCB 0x4D
29
	DCB 0x07
loc_8034b9a
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %39
loc_8034ba2
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0xe
	bmi %34
	cmp r0, #0
	bne %30
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne %34
	b %33
30
	cmp r0, #2
	bne %31
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	bne %34
	b %33
31
	cmp r0, #3
	bne %32
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne %34
	b %33
32
	cmp r0, #1
	bne %34
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne %34
33
	movs r0, #0xaa
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xe
	str r0, [r5, #0x1c]
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %39
34
	ldr r0, _08034D08
	movs r1, #2
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0, #6]
	subs r1, r1, r7
	strb r1, [r0, #6]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %39
loc_8034c2e
	ldr r0, _08034D0C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq %37
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne %37
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
	b %36
35
	b %38
36
	bl __call_via_r1
	b %39
37
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %39
loc_8034c7e
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %39
38
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
39
	movs r0, #0xb6
	ldrsb r1, [r0, r4]
	cmp r1, #0
	blt %40
	ldr r2, _08034D10
	movs r0, #0x10
	ldr r2, [r2]
	ands r2, r0
	beq %40
	ldr r0, _08034D08
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #8]
	ldr r0, _08034D14
	ldr r0, [r0]
	bl sub_8023FE4
	b %41
40
	ldr r1, _08034D08
	movs r0, #0
	ldr r1, [r1]
	adds r1, #0xa0
	strb r0, [r1, #8]
	ldr r0, _08034D14
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
	ldr r0, _08034D18
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
	b %41
	ALIGN
_08034CF4 DCDU 0x0000C000
_08034CF8 DCDU 0x00000000
_08034CFC DCDU 0x00010000
_08034D00 DCDU 0x00000000
_08034D04 DCDU gUnknown_03003454
_08034D08 DCDU gPlayerEntity
_08034D0C DCDU gUnknown_03003458
_08034D10 DCDU gUnknown_03003478
_08034D14 DCDU gUnknown_030034F8
_08034D18 DCDU gUnknown_0300345C
41
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b %20
	END
