	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E88
	IMPORT __VTABLE__375dword_803ED94
	IMPORT GetEWRAMStart
	IMPORT maybeGameObjFactory
	IMPORT sub_8017444
	IMPORT sub_8017450
	IMPORT sub_80177D8
	IMPORT __call_via_r2
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA80
	IMPORT sub_803DA9C

	thumb_func_start sub_80164A8
sub_80164A8
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x18
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _08016694
	str r0, [r4]
	movs r0, #2
	strh r0, [r4, #4]
	ldr r0, _08016698
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80177D8
	movs r0, #0
	strb r0, [r4, #8]
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start sub_80164E6
sub_80164E6
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r0, #8]
	movs r4, #0
	cmp r0, #0
	bls %5
3
	ldr r0, [r5, #0x14]
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq %4
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
4
	adds r4, #1
	ldrb r0, [r5, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r0, r4
	bhi %3
5
	ldr r0, [r5, #0x14]
	bl __da__FPv
	movs r0, #0
	strb r0, [r5, #8]
	str r0, [r5, #0x14]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016526
sub_8016526
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08016694
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq %6
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
6
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq %7
	adds r0, r4, #0
	bl sub_803DA18
7
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016556
sub_8016556
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #8
	bl sub_803DA80
	cmp r0, #0
	beq %8
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	subs r0, #8
8
	ldrh r1, [r5, #4]
	strh r1, [r0]
	str r6, [r0, #4]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq %9
	str r0, [r1, #4]
	str r0, [r4, #0x10]
	b %10
9
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
10
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801659C
sub_801659C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	ldr r5, [r0, #0xc]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldrb r0, [r6, #8]
	movs r3, #0
	lsls r0, r0, #2
	movs r2, #0
	bl sub_803DA9C
	str r0, [r6, #0x14]
	b %12
11
	ldrh r0, [r5]
	bl maybeGameObjFactory
	ldr r1, [r6, #0x14]
	lsls r2, r4, #2
	str r0, [r1, r2]
	strh r4, [r0, #6]
	adds r4, #1
	lsls r4, r4, #0x10
	ldr r5, [r5, #4]
	lsrs r4, r4, #0x10
12
	cmp r5, #0
	beq %13
	ldrb r0, [r6, #8]
	cmp r0, r4
	bhi %11
13
	ldr r4, [r6, #0xc]
	cmp r4, #0
	beq %15
14
	adds r0, r4, #0
	ldr r4, [r4, #4]
	bl sub_803DA18
	cmp r4, #0
	bne %14
15
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80165F2
sub_80165F2
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq %16
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
16
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	strb r0, [r4, #8]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016612
sub_8016612
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrb r0, [r5]
	movs r6, #0
	cmp r0, #0x15
	beq %18
	cmp r0, #0x16
	beq %21
	cmp r0, #0x17
	beq %22
	cmp r0, #0x18
	bne %20
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #8
	bl sub_803DA80
	cmp r0, #0
	beq %17
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	subs r0, #8
17
	ldrh r1, [r5, #4]
	strh r1, [r0]
	str r6, [r0, #4]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq %23
	str r0, [r1, #4]
	str r0, [r4, #0x10]
	b %24
18
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq %19
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
19
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	strb r6, [r4, #8]
20
	pop {r4, r5, r6}
	pop {r3}
	bx r3
21
	adds r0, r4, #0
	bl sub_801659C
	b %20
22
	adds r0, r4, #0
	bl sub_80164E6
	b %20
23
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
24
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b %20

	thumb_func_start sub_8016690
sub_8016690
	movs r0, #1
	bx lr
	ALIGN
_08016694 DCDU __VTABLE__375dword_803ED94
_08016698 DCDU gUnknown_03003E88
	END
