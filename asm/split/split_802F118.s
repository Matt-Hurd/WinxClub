	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300344C
	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003EA0
	IMPORT __VTABLE__344Anonymous18
	IMPORT gUnknown_080414B8
	IMPORT ModifyPlayerHealth
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000D5A
	IMPORT GetEWRAMStart
	IMPORT sub_8017A0A
	IMPORT Init_and_add_some_object
	IMPORT GameObj__ctor
	IMPORT DefaultScriptGroups__04
	IMPORT DefaultScriptGroups__08
	IMPORT DefaultScriptGroups__Dying
	IMPORT sub_8023A70
	IMPORT CollectFirefly
	IMPORT sub_8028C2E
	IMPORT __call_via_r2
	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803F528
	IMPORT sub_803F72C
	IMPORT sub_803FF24
	IMPORT sub_80401E4
	IMPORT sub_8040594


	thumb_func_start Anonymous18__Create
Anonymous18__Create
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bne %2
	movs r0, #0xd4
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _0802F518
	adds r5, r4, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc4
	str r0, [sp, #8]
	movs r0, #0x12
	strh r0, [r4, #4]
	adds r5, #0x80
	ldr r0, [r5, #4]
	ldr r1, _0802F51C
	adds r6, r4, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x7c]
	movs r1, #0xf
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0x11
	str r0, [r5, #0x1c]
	adds r6, #0xa0
	movs r7, #0
	str r7, [r5, #0x24]
	strh r7, [r6, #2]
	strh r7, [r6, #8]
	adds r0, r4, #0
	adds r0, #0x70
	strh r7, [r6, #0xa]
	movs r1, #0xa
	strb r1, [r0, #0xd]
	strb r7, [r0, #0xc]
	ldr r0, [r5, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r5, #0xc]
	movs r0, #1
	bl sub_8040594
	adds r0, r1, #0
	adds r0, #0x2d
	add r3, sp, #0
	strh r0, [r3, #4]
	ldrh r0, [r6, #8]
	ldr r2, _0802F520
	lsls r1, r0, #0x10
	str r1, [r5, #0x2c]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r2, r0]
	lsls r0, r0, #2
	bl __16_ll_mulss
	add r2, pc, #0x378
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r5, #0xc]
	str r7, [r5, #0x3c]
	ldr r0, [sp, #8]
	str r7, [r0]
	str r7, [r0, #4]
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start Anonymous18__ctor
Anonymous18__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802F518
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl GameObj__ctor
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802F1F0
sub_802F1F0
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	bne %5
	ldr r2, [r0]
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
4
	add sp, #4
	pop {r3}
	bx r3
5
	bl DefaultScriptGroups__04
	b %4

	thumb_func_start sub_802F210
sub_802F210
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	bne %7
	movs r0, #1
6
	add sp, #4
	pop {r3}
	bx r3
7
	bl DefaultScriptGroups__08
	b %6

	thumb_func_start sub_802F228
sub_802F228
	push {r4, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x19
	bne %11
	ldr r2, [r2, #4]
	movs r3, #0xa0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r3, r0]
	ldr r4, _0802F52C
	movs r3, #0
	cmp r2, r4
	bne %8
	ldr r2, _0802F530
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b %11
8
	ldr r4, _0802F534
	cmp r2, r4
	bne %9
	movs r2, #0xff
	adds r2, #0xd5
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b %11
9
	ldr r4, _0802F538
	cmp r2, r4
	blo %10
	ldr r4, _0802F53C
	cmp r2, r4
	bhs %10
	movs r2, #0x4d
	lsls r2, r2, #3
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b %11
10
	movs r4, #0xff
	adds r4, #0x54
	cmp r2, r4
	blo %12
	movs r4, #0x87
	lsls r4, r4, #2
	cmp r2, r4
	bhs %12
	movs r2, #0xa1
	lsls r2, r2, #2
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
11
	b %13
12
	movs r2, #0x57
	lsls r2, r2, #3
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
13
	bl DefaultScriptGroups__Dying
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start CollectPickup
CollectPickup
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x2c]
	sub sp, #0xc
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %14
	movs r1, #0
	bl sub_80401E4
14
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %15
	movs r1, #0
	bl sub_80401E4
15
	movs r4, #0
	str r4, [r5, #0x58]
	str r4, [r5, #0x5c]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x30]
	add r1, sp, #4
	bl sub_803FF24
	adds r6, r4, #0
	adds r2, r4, #0
	adds r4, r5, #0
	adds r4, #0xa0
	strh r2, [r4, #2]
	ldrh r0, [r4]
	ldr r1, _0802F52C
	cmp r0, r1
	bne %17
	ldr r0, _0802F540
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #0x41
	bl sub_8028C2E
	ldr r0, _0802F544
	movs r1, #4
	ldr r0, [r0]
	adds r0, #0xac
	bl ModifyPlayerHealth
16
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	ldr r1, _0802F534
	cmp r0, r1
	bne %19
	ldr r0, _0802F540
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	movs r0, #0xb8
	ldrsb r1, [r0, r5]
	ldr r0, _0802F544
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, [r1, #0x14]
	movs r2, #1
	lsls r2, r2, #0xb
	bics r0, r2
	str r0, [r1, #0x14]
18
	b %16
19
	ldr r1, _0802F538
	ldr r5, _0802F548
	cmp r0, r1
	blo %20
	ldr r1, _0802F53C
	cmp r0, r1
	bhs %20
	ldr r0, _0802F540
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	ldr r7, _0802F54C
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802F550
	movs r3, #2
	movs r1, #1
	ldr r0, [r0]
	bl sub_8017A0A
	adds r0, r7, #0
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	str r6, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r7, _0802F550
	movs r3, #2
	movs r1, #1
	ldr r0, [r7]
	bl sub_8017A0A
	ldr r0, _0802F54C
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	ldr r1, _0802F554
	str r6, [r0, #4]
	strh r1, [r0, #8]
	strh r6, [r0, #0xa]
	strh r6, [r0, #0xc]
	movs r6, #2
	movs r2, #0
	str r2, [sp]
	adds r3, r6, #0
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	ldr r0, _0802F54C
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r6, #0
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	ldr r0, _0802F544
	movs r1, #1
	ldr r0, [r0]
	adds r0, #0xac
	bl CollectFirefly
	ldrh r0, [r4]
	cmp r0, #0
	beq %18
	lsls r2, r0, #0x1b
	lsrs r2, r2, #0x1b
	movs r1, #1
	lsls r1, r2
	lsrs r0, r0, #5
	lsls r0, r0, #2
	ldr r2, [r5, r0]
	orrs r1, r2
	str r1, [r5, r0]
	b %16
20
	b %21
21
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x64
	bl sub_803DA9C
	ldrh r1, [r4]
	adds r6, r0, #0
	cmp r1, #0
	beq %22
	lsls r2, r1, #0x1b
	lsrs r2, r2, #0x1b
	movs r0, #1
	lsls r0, r2
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	orrs r0, r2
	str r0, [r5, r1]
22
	ldrh r1, [r4]
	cmp r1, #0xc6
	blo %23
	cmp r1, #0xe4
	bhs %23
	ldr r0, _0802F558
	subs r1, #0x26
	ldr r0, [r0]
	movs r3, #0xff
	ldr r2, [r0, #4]
	ldrb r4, [r0, #9]
	ldrh r7, [r2, #4]
	ldr r5, [r2, #8]
	lsls r4, r4, #2
	lsls r1, r7
	adds r1, r5, r1
	ldr r1, [r1, r4]
	ldr r2, [r2, #0xc]
	str r6, [sp]
	adds r2, r2, r1
	str r2, [sp, #4]
	movs r2, #0
	ldr r1, _0802F55C
	bl sub_803F528
	ldr r0, _0802F540
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	b %31
23
	movs r0, #0xff
	adds r0, #0x54
	cmp r1, r0
	blo %31
	movs r0, #0x87
	lsls r0, r0, #2
	cmp r1, r0
	bhs %31
	adds r0, r1, #0
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	asrs r0, r0, #2
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r3, #2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x55
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	lsls r4, r7
	movs r0, #0
	cmp r1, #0
	beq %24
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq %25
24
	movs r0, #1
25
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x56
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	b %26
	ALIGN
_0802F518 DCDU __VTABLE__344Anonymous18
_0802F51C DCDU 0xF000FFFF
_0802F520 DCDU gUnknown_080414B8
_0802F524 DCDU 0x00010000
_0802F528 DCDU 0x00000000
_0802F52C DCDU 0x00002710
_0802F530 DCDU 0x00000253
_0802F534 DCDU 0x00002712
_0802F538 DCDU 0x0000021D
_0802F53C DCDU 0x00000245
_0802F540 DCDU gUnknown_0300345C
_0802F544 DCDU gPlayerEntity
_0802F548 DCDU gUnknown_03003478
_0802F54C DCDU gUnknown_03003E88
_0802F550 DCDU gUnknown_03003454
_0802F554 DCDU 0x000004EC
_0802F558 DCDU gUnknown_0300344C
_0802F55C DCDU 0x000004E6
26
	lsls r4, r7
	cmp r1, #0
	beq %27
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq %28
27
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
28
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x57
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	lsls r4, r7
	cmp r1, #0
	beq %29
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq %30
29
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
30
	adds r2, #0xff
	adds r2, #0x58
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r1, #0x1b
	lsrs r4, r4, #0x1b
	b %32
31
	b %37
32
	movs r2, #1
	lsls r2, r4
	cmp r1, #0
	beq %33
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r2
	beq %34
33
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
34
	ldr r1, _0802F864
	ldr r4, [r1]
	lsls r1, r3, #1
	ldr r2, [r4, #4]
	adds r1, #0xcd
	ldrh r7, [r2, #4]
	ldrb r3, [r4, #9]
	ldr r5, [r2, #8]
	lsls r1, r7
	adds r1, r5, r1
	lsls r3, r3, #2
	ldr r1, [r1, r3]
	ldr r2, [r2, #0xc]
	adds r1, r2, r1
	cmp r0, #4
	bhs %35
	movs r2, #4
	subs r2, r2, r0
	str r2, [sp, #8]
	movs r2, #0
	str r1, [sp, #4]
	movs r3, #0xff
	adds r0, r4, #0
	ldr r1, _0802F868
	str r6, [sp]
	bl sub_803F528
	b %36
35
	str r1, [sp, #4]
	movs r1, #0x9d
	lsls r1, r1, #3
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	str r6, [sp]
	bl sub_803F528
36
	ldr r0, _0802F86C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
37
	ldr r7, _0802F870
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	movs r4, #2
	adds r3, r4, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r5, _0802F874
	movs r1, #1
	ldr r0, [r5]
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	movs r3, #0
	str r3, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r6, [r0, #4]
	movs r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #3
	bl sub_8017A0A
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #3
	bl sub_8017A0A
	b %16

	non_word_aligned_thumb_func_start sub_802F6BA
sub_802F6BA
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0xa0
	ldrh r1, [r5]
	adds r4, r0, #0
	ldr r2, _0802F878
	adds r4, #0x70
	movs r6, #0xa
	cmp r1, r2
	bne %38
	ldr r1, _0802F87C
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xf]
	cmp r2, r1
	bne %38
	strb r6, [r4, #0xd]
	b %39
38
	bl CollectPickup
39
	ldrh r0, [r5]
	ldr r1, _0802F880
	cmp r0, r1
	bne %40
	strb r6, [r4, #0xd]
40
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_802F6F4
sub_802F6F4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r7, #0xa0
	adds r4, r0, #0
	ldrh r0, [r7, #2]
	cmp r0, #0
	beq %47
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5]
	ldr r1, _0802F884
	adds r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r5]
	ldr r2, [r0, #0x3c]
	adds r2, r2, r1
	str r2, [r0, #0x3c]
	cmp r1, #0
	bge %41
	NEGS r2, r1
	b %42
41
	adds r2, r1, #0
42
	ldr r3, _0802F888
	ldr r0, _0802F88C
	cmp r2, r3
	ldr r0, [r0]
	ble %43
	ldr r6, [r4, #0x30]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F890
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %45
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b %45
43
	ldr r1, _0802F894
	ldr r6, [r4, #0x30]
	cmp r2, r1
	ble %44
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F898
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %45
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b %45
44
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F89C
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %45
	ldr r0, [r4, #0x30]
	bl sub_800065C
45
	ldr r0, [r5]
	cmp r0, #0
	ble %47
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r0, [r0, #0x30]
	ldr r1, [r1, #0x30]
	movs r2, #5
	lsls r2, r2, #0x11
	subs r1, r1, r2
	cmp r0, r1
	ble %47
	adds r0, r4, #0
	adds r0, #0xc4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	strh r1, [r7, #2]
	movs r1, #0x7d
	movs r0, #0xa
	strb r0, [r1, r4]
	ldr r0, _0802F88C
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %46
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
46
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x18]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %48
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	b %48
47
	b %49
48
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xbd
	beq %49
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	movs r3, #1
	lsls r3, r3, #0xb
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xbd
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %49
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
49
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802F818
sub_802F818
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq %50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
50
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0802F864 DCDU gUnknown_0300344C
_0802F868 DCDU 0x000004E7
_0802F86C DCDU gUnknown_0300345C
_0802F870 DCDU gUnknown_03003E88
_0802F874 DCDU gUnknown_03003454
_0802F878 DCDU 0x00002710
_0802F87C DCDU gPlayerEntity
_0802F880 DCDU 0x00002712
_0802F884 DCDU 0x00001998
_0802F888 DCDU 0x0001B330
_0802F88C DCDU gUnknown_03003EA0
_0802F890 DCDU 0x000011F1
_0802F894 DCDU 0x0000B330
_0802F898 DCDU 0x000011F2
_0802F89C DCDU 0x000011F3
	END
